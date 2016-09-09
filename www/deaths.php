<?php require_once 'engine/init.php'; include 'layout/overall/header.php';
$cache = new Cache('engine/cache/deaths');
if ($cache->hasExpired()) {
	
	if ($config['TFSVersion'] == 'Old_TFS02' || $config['TFSVersion'] == 'TFS_10') {
		$deaths = fetchLatestDeaths();
	} else if ($config['TFSVersion'] == 'OTH') {
		$deaths = fetchLatestDeaths_03(30);
	}
	$cache->setContent($deaths);
	$cache->save();
} else {
	$deaths = $cache->load();
}
if ($deaths) {
?>
<br><table class="blackline">
	<tr>
		<td><img src="layout/images/blank.gif"></td>
	</tr>
</table>
<div class="titleheader">
	<h1>Latest Deaths</h1>
</div>
<table class="blackline">
	<tr>
		<td><img src="layout/images/blank.gif"></td>
	</tr>
</table><br>
<table class="table table-striped table-hover">
	<tr class="yellow">
		<th>Date</th>
		<th>Death</th>
	</tr>
	<?php
	foreach ($deaths as $death) { 
		echo '<tr>';
		echo "<td>". date("d M Y, H:i", $death['time']) ."</td>";
		echo "<td><a href='characterprofile.php?name=". $death['victim'] ."'>". $death['victim'] ."</a> ";
		$lasthit = ($death['is_player']) ? "<a href='characterprofile.php?name=".$death['killed_by']."'>".$death['killed_by']."</a>" : $death['killed_by'];
		if ($death['is_player'] > 0) {
			echo "was killed at Level ".$death['level']." by $lasthit";
		} else echo "died at Level ".$death['level']." by $lasthit";
		/* if ($death['unjustified']) echo ' <span class="label label-danger">Unjustified</span>'; */
		$mostdmg = ($death['mostdamage_by'] !== $death['killed_by']) ? true : false;
		if (($mostdmg) && ($death['mostdamage_is_player'])) {
			$mostdmg = "<a href='characterprofile.php?name=".$death['mostdamage_by']."'>".$death['mostdamage_by']."</a>";
			echo " and $mostdmg";
			/* if ($death['mostdamage_unjustified']) echo ' <span class="label label-danger">Unjustified</span>'; */
		}
		echo '</td>';
		echo '</tr>';
	} ?>
</table>
<?php
} else echo '<br><table class="blackline">
	<tr>
		<td><img src="layout/images/blank.gif"></td>
	</tr>
</table>
&nbsp;&nbsp;&nbsp;&nbsp;<img src="layout/images/titles/t_deaths.png"/>
<table class="blackline">
	<tr>
		<td><img src="layout/images/blank.gif"></td>
	</tr>
</table><br>
No death registered.';
include 'layout/overall/footer.php'; ?>