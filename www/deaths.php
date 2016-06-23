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
&nbsp;&nbsp;&nbsp;&nbsp;<img src="layout/images/titles/t_deaths.png"/>
<table class="blackline">
	<tr>
		<td><img src="layout/images/blank.gif"></td>
	</tr>
</table><br>
<table id="deathsTable" class="table table-striped">
	<tr class="yellow">
		<th>Victim</th>
		<th>Time</th>
		<th>Killer</th>
	</tr>
	<?php foreach ($deaths as $death) { 
		echo '<tr>';
		echo "<td><a href='characterprofile.php?name=". $death['victim'] ."'>". $death['victim'] ."</a> - level ". $death['level'] ."</td>";
		echo "<td>". getClock($death['time'], true) ."</td>";
		if ($death['is_player'] == 1) echo "<td>by <a href='characterprofile.php?name=". $death['killed_by'] ."'>". $death['killed_by'] ."</a></td>";
		else if ($death['is_player'] == 0) {
			if ($config['TFSVersion'] == 'TFS_03') echo "<td>by ". ucfirst(str_replace("a ", "", $death['killed_by'])) ."</td>";
			else echo "<td>by ". $death['killed_by'] ."</td>";
		}
		else echo "<td>". $death['killed_by'] ."</td>";
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