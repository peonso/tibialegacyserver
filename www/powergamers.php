<?php require_once 'engine/init.php'; include 'layout/overall/header.php'; ?>
<br><table class="blackline">
	<tr>
		<td><img src="layout/images/blank.gif"></td>
	</tr>
</table>
<div class="titleheader">
	<h1>Powergamers</h1>
</div>
<table class="blackline">
	<tr>
		<td><img src="layout/images/blank.gif"></td>
	</tr>
</table><br>
<?php 
$limit = 25;
$type = null;
$type = $_GET['type'];

function coloured_value($valuein)
{
	$value2 = $valuein;
	while(strlen($value2) > 3)
	{
		$value .= '.'.substr($value2, -3, 3);
		$value2 = substr($value2, 0, strlen($value2)-3);
	}
	@$value = $value2.$value;
	if($valuein > 0)
		return '<span style="color:#e69e2c;font-weight: bold;">+'.$value.'</span>';
	elseif($valuein < 0)
		return '<span style="color:#ee533a;font-weight: normal;">'.$value.'</span>';
	else
		return $value;
}

if(empty($type))
	$znotePlayers = mysql_select_multi('SELECT `a`.`id`, `b`.`player_id`, `a`.`name`, `a`.`vocation`, `a`.`level`, `a`.`group_id`, `a`.`experience`, `b`.`exphist_lastexp`, `b`.`exphist1`, `b`.`exphist2`, `b`.`exphist3`, `b`.`exphist4`, `b`.`exphist5`, `b`.`exphist6`, `b`.`exphist7`,   (`a`.`experience` - `b`.`exphist_lastexp`)  AS `expdiff` FROM `players` `a` JOIN `znote_players` `b` ON `a`.`id` = `b`.`player_id`  WHERE `a`.`group_id` < 2 ORDER BY `expdiff` DESC LIMIT '.$limit);
elseif($type >= 1 && $type <= 3)
	$znotePlayers = mysql_select_multi('SELECT `a`.`id`, `b`.`player_id`, `a`.`name`, `a`.`vocation`, `a`.`level`, `a`.`group_id`, `a`.`experience`, `b`.`exphist_lastexp`, `b`.`exphist1`, `b`.`exphist2`, `b`.`exphist3`, `b`.`exphist4`, `b`.`exphist5`, `b`.`exphist6`, `b`.`exphist7`, (`a`.`experience` - `b`.`exphist_lastexp`) AS `expdiff` FROM `players` `a` JOIN `znote_players` `b` ON `a`.`id` = `b`.`player_id`  WHERE `a`.`group_id` < 2 ORDER BY `exphist' . (int) $type . '` DESC LIMIT '.$limit);
echo '
<br>
<table class="table table-striped table-hover">
	<tr>
		<th>Rank</th>
		<th>Name</th>
		<th>Total</th>';

for($i = 3; $i >= 2; $i--)
	echo ($type == $i) ? '<th width="16%">'.$i.' Days Ago</th>' : '<th width="16%"><a href="powergamers.php?type='.$i.'" style="color: #fff;">'.$i.' Days Ago</a></th>';
	echo ($type == 1) ? '<th width="16%">1 Day Ago</th>' : '<th width="16%"><a href="powergamers.php?type=1" style="color: #fff;">1 Day Ago</a></th>';
	echo (empty($type)) ? '<th>Today</th>' : '<th><a href="powergamers.php" style="color: #fff;">Today</a></th>';
	echo '</tr>';

$number_of_rows = 1;
if($znotePlayers)
	foreach($znotePlayers as $player)
	{
		echo '<td>'. $number_of_rows . '</td>';
		echo '<td><a href="characterprofile.php?name=' .$player['name']. '">' .$player['name']. '</a>';
		/* echo '<br> ' .$player['level']. ' '.htmlspecialchars(vocation_id_to_name($player['vocation'])).' '; */
		
		echo '<td>'.coloured_value($player['exphist1'] + $player['exphist2'] + $player['exphist3'] + $player['experience'] - $player['exphist_lastexp']).'</td>';
		echo '<td>'.coloured_value($player['exphist3']).'</center></td><td>'.coloured_value($player['exphist2']).'</td><td>'.coloured_value($player['exphist1']).'</td><td>'.coloured_value($player['experience']-$player['exphist_lastexp']).'</td></tr>';	$number_of_rows++;
	}
echo '</table><br>'; 
include 'layout/overall/footer.php'; ?>