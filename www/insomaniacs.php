<?php require_once 'engine/init.php'; include 'layout/overall/header.php'; ?>
<br><table class="blackline">
	<tr>
		<td><img src="layout/images/blank.gif"></td>
	</tr>
</table>
<div class="titleheader">
	<h1>Insomaniacs</h1>
</div>
<table class="blackline">
	<tr>
		<td><img src="layout/images/blank.gif"></td>
	</tr>
</table><br>
<?php
$limit = 25;
$type = $_GET['type'];

function onlineTimeTotal($value)
{
	$hours = floor($value / 3600);
	$value = $value - $hours * 3600;
	$minutes = floor($value / 60);
		return ''.$hours.'h '.$minutes.'m';
}
function hours_and_minutes($value, $color = 1)
{
	$hours = floor($value / 3600);
	$value = $value - $hours * 3600;
	$minutes = floor($value / 60);
	if($color != 1)
		return '<span style="color:#ee533a;font-weight: bold;">'.$hours.'h '.$minutes.'m</span>';
	else
		if($hours >= 12)
			return '<span style="color:#ee533a;font-weight: normal;">'.$hours.'h '.$minutes.'m</span>';
		elseif($hours >= 6)
			return '<span style="color:#E99002;font-weight: normal;">'.$hours.'h '.$minutes.'m</span>';
		elseif($hours >= 1)
			return '<span style="color:#e69e2c;font-weight: normal;">'.$hours.'h '.$minutes.'m</span>';
		else
			return ''.$hours.'h '.$minutes.'m';
}
if(empty($type))
	$znotePlayers = mysql_select_multi('SELECT * FROM `znote_players` AS `z` JOIN `players` AS `p` WHERE `p`.`id`=`z`.`player_id` and `p`.`group_id` < 3 ORDER BY `onlinetimetoday` DESC LIMIT '.$limit);
elseif($type == "sum")
	$znotePlayers = mysql_select_multi('SELECT * FROM `znote_players` AS `z` JOIN `players` AS `p` WHERE `p`.`id`=`z`.`player_id` and `p`.`group_id` < 3 ORDER BY `z`.`onlinetimeall` DESC LIMIT '. $limit);
elseif($type >= 1 && $type <= 4)
	$znotePlayers = mysql_select_multi('SELECT * FROM `znote_players` AS `z` JOIN `players` AS `p` WHERE `p`.`id`=`z`.`player_id` and `p`.`group_id` < 3 ORDER BY `onlinetime' . (int) $type . '` DESC LIMIT '.$limit);
	
echo '<br><table class="table table-striped table-hover"><th>Rank</th><th width="10%">Name</th>';
if($type == "sum")
	echo '<th>Total</th>';
else
	echo '<th><a href="?subtopic=onlinetime&type=sum" style="color: #fff;">Total</a></th>';
for($i = 3; $i >= 2; $i--)
{
	if($type == $i)
		echo '<th>'.$i.' Days Ago</th>';
	else
		echo '<th><a href="?subtopic=onlinetime&type='.$i.'" style="color: #fff;">'.$i.' Days Ago</a></th>';
}
if($type == 1)
	echo '<th>1 Day Ago</th>';
else
	echo '<th><a href="?subtopic=onlinetime&type=1" style="color: #fff;">1 Day Ago</a></th>';
if(empty($type))
	echo '<th>Today</th>';
else
	echo '<th><a href="?subtopic=onlinetime" style="color: #fff;">Today</a></th>';
echo '</tr>';
$number_of_rows = 1;
if($znotePlayers)
foreach($znotePlayers as $player)
{	
	echo '<td>'. $number_of_rows . '</td>';
	echo '<td><a href="characterprofile.php?name=' .$player['name']. '">' .$player['name']. '</a>';
	/* echo '<br> ' .$player['level']. ' '.htmlspecialchars(vocation_id_to_name($player['vocation'])).' '; */
	echo '<td>' .onlineTimeTotal($player['onlinetimeall']).'</td>';
	$number_of_rows++;
	echo '<td>'.hours_and_minutes($player['onlinetime3']).'</td><td>'.hours_and_minutes($player['onlinetime2']).'</td><td>'.hours_and_minutes($player['onlinetime1']).'</center></td><td>'.hours_and_minutes($player['onlinetimetoday']).'</td></tr>';
}
echo '</table>';
include 'layout/overall/footer.php'; ?>