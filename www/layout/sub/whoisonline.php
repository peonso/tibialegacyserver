<?php require_once 'engine/init.php';

$records = mysql_select_multi('SELECT * FROM `server_record` ORDER BY `record` DESC LIMIT 1;');
?>
<br><table class="blackline">
	<tr>
		<td><img src="layout/images/blank.gif"></td>
	</tr>
</table>
<div class="titleheader">
	<h1>Who is Online</h1>
</div>
<table class="blackline">
	<tr>
		<td><img src="layout/images/blank.gif"></td>
	</tr>
</table><br>
<table>
<tr class="yellow"><th>Server Status</th></tr>
<tr class="darkborder"><td><?php
								$status = true;
								if ($config['status']['status_check']) {
									@$sock = fsockopen ($config['status']['status_ip'], $config['status']['status_port'], $errno, $errstr, 1);
									if(!$sock) {
										echo $config['site_title'];
										echo ' is currently offline.';
										$status = false;
									}
									else {
										$info = chr(6).chr(0).chr(255).chr(255).'info';
										fwrite($sock, $info);
										$data='';
										while (!feof($sock))$data .= fgets($sock, 1024);
										fclose($sock);
										if (user_count_online() == '0') {
											echo 'Currently there are no players online.';
										} else if (user_count_online() == '1') {
											echo 'Currently <strong>'.user_count_online().' </strong> player is online.';
										} else {
											echo 'Currently <strong>'.user_count_online().' </strong> players are online.';
										}
									}
								}
?><br>
<?php echo $config['site_title'] ?> record of players online was <?php echo $records[0]['record'] ?> players on <?php echo date("j M Y", $records[0]['timestamp']) ?>.

</td></tr>
</table>
<?php
$array = online_list();
if (($array) && ($sock)) {
	?>
	
	<table id="onlinelistTable" class="table table-striped table-hover">
		<tr class="yellow">
			<th>Name</th>
			<th width="12%">Level</th>
			<th width="20%">Vocation</th>
		</tr>
			<?php
			foreach ($array as $value) {
			echo '<tr>';
			echo '<td><a href="characterprofile.php?name='. $value['name'] .'">'. $value['name'] .'</a></td>';
			echo '<td>'. $value['level'] .'</td>';
			echo '<td>'. vocation_id_to_name($value['vocation']) .'</td>';
			echo '</tr>';
			}
			?>
	</table>

	<?php
}
?>