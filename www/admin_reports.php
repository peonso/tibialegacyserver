<?php
require_once 'engine/init.php';
include 'layout_admin/overall/header.php';
protect_page();
admin_only($user_data);
?>
	<h2>Reports</h2>
<?php
// Report status types. When a player make new report it will be default to 0.
// Feel free to add/remove and change name/color of status types.
$statusTypes = array(
    0 => '<span style="color: #5bc0de; font-weight: bold;">Reported</span>',
    1 => '<span style="color: #5bc0de; font-weight: bold;">To-Do List</span>',
    2 => '<span style="color: #b94a48; font-weight: bold;">Confirmed bug</span>',
    3 => '<span style="color: #e99002; font-weight: bold;">Invalid</span>',
    4 => '<span style="color: #e99002; font-weight: bold;">Rejected</span>',
    5 => '<span style="color: #43ac6a; font-weight: bold;">Fixed</span>'
);
// Which status IDs should give option to add to changelog?
$statusChangeLog = array(0,5);

// Autohide rows that have these status IDs:
$hideStatus = array(3, 4, 5);

// Fetch data from SQL
$reportsData = mysql_select_multi('SELECT id, name, posx, posy, posz, report_description, date, status FROM znote_player_reports ORDER BY id DESC;');
// If sql data is not empty
if ($reportsData !== false) {
    // Order reports array by ID for easy reference later on.
    $reports = array();
    for ($i = 0; $i < count($reportsData); $i++)
        foreach ($statusTypes as $key => $value)
            if ($key == $reportsData[$i]['status'])
                $reports[$key][$reportsData[$i]['id']] = $reportsData[$i];
}

// POST logic (Update report and give player points)
if (!empty($_POST)) {
    // Fetch POST data
    $playerName = getValue($_POST['playerName']);
    $status = getValue($_POST['status']);
    $price = getValue($_POST['price']);
    $customPoints = getValue($_POST['customPoints']);
    $reportId = getValue($_POST['id']);

    $changelogReportId = (int)$_POST['changelogReportId'];
    $changelogValue = &$_POST['changelogValue'];
    $changelogText = getValue($_POST['changelogText']);
    $changelogStatus = ($changelogReportId !== false && $changelogValue === '2' && $changelogText !== false) ? true : false;

    if ($customPoints !== false) $price = (int)($price + $customPoints);

    // Update SQL
    mysql_update("UPDATE `znote_player_reports` SET `status`='$status' WHERE `id`='$reportId' LIMIT 1;");
    echo "<h1>Report status updated to ".$statusTypes[(int)$status] ."!</h1>";
    // Update local array representation
    foreach ($reports as $sid => $sa) 
        foreach ($sa as $rid => $ra) 
            if ($reportId == $rid) {
                $reports[$status][$reportId] = $reports[$sid][$rid];
                $reports[$status][$reportId]['status'] = $status;
                unset($reports[$sid][$rid]);
            }

    // If we should do anything with changelog:
    if ($changelogStatus) {
        $time = time();
        // Check if changelog exist (`id`, `text`, `time`, `report_id`, `status`)
        $changelog = mysql_select_single("SELECT * FROM `znote_changelog` WHERE `report_id`='$changelogReportId' LIMIT 1;");
        // If changelog exist
        $updatechangelog = false;
        if ($changelog !== false) {
            // Update it
            mysql_update("UPDATE `znote_changelog` SET `text`='$changelogText', `time`='$time' WHERE `id`='".$changelog['id']."' LIMIT 1;");
            echo "<h2>Changelog message updated!</h2>";
            $updatechangelog = true;
        } else {
            // Create it
            mysql_insert("INSERT INTO `znote_changelog` (`text`, `time`, `report_id`, `status`) 
                VALUES ('$changelogText', '$time', '$changelogReportId', '$status');");
            echo "<h2>Changelog message created!</h2>";
            $updatechangelog = true;
        }
        if ($updatechangelog) {
            // Cache changelog
            $cache = new Cache('engine/cache/changelog');
            $cache->setContent(mysql_select_multi("SELECT `id`, `text`, `time`, `report_id`, `status` FROM `znote_changelog` ORDER BY `id` DESC;"));
            $cache->save();
        }
        
    }
    // If we should give user price
    if ($price > 0) {
        $account = mysql_select_single("SELECT `a`.`id`, `a`.`email` FROM `accounts` AS `a` 
            INNER JOIN `players` AS `p` ON `p`.`account_id` = `a`.`id`
            WHERE `p`.`name` = '$playerName' LIMIT 1;");
        
        if ($account !== false) {
            // transaction log
            mysql_insert("INSERT INTO `znote_paypal` VALUES ('', '$reportId', 'report@admin.".$user_data['name']." to ".$account['email']."', '".$account['id']."', '0', '".$price."')");
            // Process payment
            $data = mysql_select_single("SELECT `points` AS `old_points` FROM `znote_accounts` WHERE `account_id`='".$account['id']."';");
            // Give points to user
            $new_points = $data['old_points'] + $price;
            mysql_update("UPDATE `znote_accounts` SET `points`='$new_points' WHERE `account_id`='".$account['id']."'");

            // Remind GM that he sent points to character
            echo "<font color='green' size='5'>".$playerName." has been granted ".$price." points for his reports.</font>";
        }
    }

// GET logic (Edit report data and specify how many [if any] points to give to user)
} elseif (!empty($_GET)) {
    // Fetch GET data
    $action = getValue($_GET['action']);
    $playerName = getValue($_GET['name']);
    $reportId = getValue($_GET['id']);

    // Fetch the report we intend to modify
    foreach ($reports as $sid => $sa)
        foreach ($sa as $rid => $ra)
            if ($rid == $reportId)
                $report = $reports[$sid][$reportId];
    
    // Create html form
    ?>
			<div class="well well-sm">
				<form action="admin_reports.php" method="POST">
					Player: <a target="_BLANK" href="characterprofile.php?name=<?php echo $report['name']; ?>"><?php echo $report['name']; ?></a>
					<input type="hidden" name="playerName" value="<?php echo $report['name']; ?>">
					<input type="hidden" name="id" value="<?php echo $report['id']; ?>">
					<br>Set status: 
					<select name="status">
						<?php
						foreach ($statusTypes as $sid => $sname)
							echo ($sid != $report['status']) ? "<option value='$sid'>$sname</option>" : "<option value='$sid' selected>$sname</option>";
						?>
					</select><br>
					<!--Give user points:
					<select name="price">
						<option value='0'>0</option>
						<?php
						foreach ($config['paypal_prices'] as $price)
							echo "<option value='$price'>$price</option>";
						?>
					</select> + <input name="customPoints" type="text" style="width: 50px;" placeholder="0"><br>
					<?php
					if (in_array($report['status'], $statusChangeLog)) {
						?>
						<br>
						<input type="hidden" name="changelogReportId" value="<?php echo $report['id']; ?>">
						Add / update changelog message? <select name="changelogValue">
							<option value="1">No</option>
							<option value="2">Yes</option>
						</select><br>
						<textarea rows="7" cols="40" maxlength="254" name="changelogText"></textarea>
						<?php
					}
					?>
					<br>-->
					<button type="submit" class="btn btn-default">Update Report</button>
				</form>
			</div><!-- ./well -->
    <?php
}

// If sql data is not empty
if ($reportsData !== false) {
    // Render HTML
        foreach ($reports as $statusId => $statusArray) {
            ?>	
				<div>

						<h2 class="statusType"><?php echo $statusTypes[$statusId]; ?></h2>

						<button onclick="javascript:toggle('<?php echo $statusId; ?>')" class="btn btn-default">Show/Hide</button>

				</div>
				<div id="div-<?php echo $statusId; ?>">
					<table class="table table-striped table-hover">
						<tr class="<?php
						if ($statusId == 0) {
							echo 'info';
						} elseif ($statusId == 1) {
							echo 'info';
						} elseif ($statusId == 2) {
							echo 'danger';
						} elseif ($statusId == 3) {
							echo 'warning';
						} elseif ($statusId == 4) {
							echo 'warning';
						} elseif ($statusId == 5) {
							echo 'success';
						}
						?>">
							<th width="3%">Id</th>
							<th width="14%">Name</th>
							<th width="20%">Position</th>
							<th width="16%">Date</th>
							<th width="4%">Edit</th>
							<th>Message</th>
						</tr>
					<?php
					$row = 0;
					foreach ($statusArray as $reportId => $report) {
					?>					
						<tr>
							<td>#<?php echo $report['id']; ?></td>
							<td><a href="characterprofile.php?name=<?php echo $report['name']; ?>"><?php echo $report['name']; ?></td>
							<td><span style="font-style: italic;">/goto <?php echo $report['posx'].', '.$report['posy'].', '.$report['posz']; ?></span></td>
							<td><?php echo getClock($report['date'], true, true); ?></td>
							<td><a href="?action=edit&name=<?php echo $report['name'].'&id='.$report['id']; ?>">Edit</a></td>
							<th><?php echo $report['report_description']; ?></th>
						</tr>
					<?php
				   }
				?></table>
				</div>
			<?php
        }
} else echo "<h3>No reports submitted.</h3>";
?>
<style>
tr.yellow[onclick] td {
    font-weight: bold;
    color: white;
    text-align: center;
}
tbody[class^=row] td:last-of-type {
    text-align: center;
}
</style>
<script type="text/javascript">
    // Hide and show tables
    // Written in clean javascript to make it cross-layout compatible.
    function toggle(statusId) {
        var divStatus = 'div-' + statusId,
            msgStatus = 'status-' + statusId;

        // Change visibility status
        // statusElement = document.getElementById(msgStatus);
        // statusElement.innerHTML = (statusElement.innerHTML == 'Visible') ? 'Hidden' : 'Visible';
		
		var mydiv = document.getElementById(divStatus);
		if (mydiv.style.display === 'block' || mydiv.style.display === '')
			mydiv.style.display = 'none';
		  else
			mydiv.style.display = 'block'
    }

    <?php // Hide configured tables by default
    foreach ($hideStatus as $statusId)
        echo "toggle($statusId);";
    ?>

    var st = document.body.querySelectorAll('.statusType');
    for(i = 0; i < st.length; i++)
        st[i].addEventListener('click', function(e) {
            toggle(e.currentTarget.querySelector('span').id.match(/(\d)+/)[0]);
        });
</script>
<?php include 'layout_admin/overall/footer.php'; ?>