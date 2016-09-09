<?php require_once 'engine/init.php'; include 'layout/overall/header.php'; ?>
<br><table class="blackline">
	<tr>
		<td><img src="layout/images/blank.gif"></td>
	</tr>
</table>
<div class="titleheader">
	<h1>Characters</h1>
</div>
<table class="blackline">
	<tr>
		<td><img src="layout/images/blank.gif"></td>
	</tr>
</table><br>
<?php
if ($config['log_ip']) {
	znote_visitor_insert_detailed_data(4);
}
if (isset($_GET['name']) === true && empty($_GET['name']) === false) {
	$name = $_GET['name'];
	$user_id = user_character_exist($name);
	if ($user_id !== false) {
		if ($config['TFSVersion'] == 'TFS_10') {
			$profile_data = user_character_data($user_id, 'name', 'level', 'vocation', 'lastlogin', 'sex', 'group_id', 'town_id');
			$profile_data['online'] = user_is_online_10($user_id);
		} else $profile_data = user_character_data($user_id, 'name', 'level', 'vocation', 'lastlogin', 'online', 'sex', 'group_id', 'town_id');
		$profile_znote_data = user_znote_character_data($user_id, 'created', 'hide_char', 'comment');
		
		$guild_exist = false;
		if (get_character_guild_rank($user_id) > 0) {
			$guild_exist = true;
			$guild = get_player_guild_data($user_id);
			$guild_name = get_guild_name($guild['guild_id']);
		}
		?>
		
		<!-- PROFILE MARKUP HERE-->
			<!-- CHARACTER INFORMAION -->
			<table>
			<tr><td colspan="2">Character Information</td></tr>
			<tr><td width="20%">Name:</td>
			<td><?php echo $profile_data['name']; ?></td></tr>
			<tr><td>Sex:</td>
			<td><?php 
				if ($profile_data['sex'] == 1) {
				echo 'Male';
				} else {
				echo 'Female';
				}
				?></td></tr>
			<tr><td>Vocation:</td>
			<td><?php echo vocation_id_to_name($profile_data['vocation']); ?></td></tr>
			<tr><td>Level:</td>
			<td><?php echo $profile_data['level']; ?></td></tr>
			<tr><td>Residence:</td>
			<td><?php 
				foreach ($config['towns'] as $key=>$value) {
					if ($key == $profile_data['town_id']) {
						echo $value;
					}
				} ?></td></tr>
				<?php		$houses = array();
			$houses = mysql_select_multi("SELECT `id`, `owner`, `name`, `townid` FROM `houses` WHERE `owner` = $user_id ;");
			if ($houses !== false) {
				$playerlist = array();
				foreach ($houses as $h)
					if ($h['owner'] > 0)
						$playerlist[] = $h['owner'];
						
				if ($profile_data['id'] = $h['owner']) { ?>
			<tr><td>House:</td>
			<td><?php echo $h['name']; ?> (<?php 
				foreach ($config['towns'] as $key=>$value) {
					if ($key == $h['townid']) {
						echo $value;
					}
				} ?>)</td></tr>
				<?php
					}
				}
				?>
				<?php 
				if ($guild_exist) {
				?>
			<tr><td>Guild membership:</td>
			<td><?php echo $guild['rank_name']; ?> of the <a href="guilds.php?name=<?php echo $guild_name; ?>"><?php echo $guild_name; ?></a></td></tr>
				<?php
				}
				?>			
			<tr><td>Last login:</td>
			<td><?php
					if ($profile_data['lastlogin'] != 0) {
						echo getClock($profile_data['lastlogin'], true, true);
					} else {
						echo 'never logged in';
					}
					
				?></td></tr>
				<?php 
				if ($profile_data['group_id'] > 1) {
				?>
			<tr><td>Position:</td>
			<td><?php 
				foreach ($config['ingame_positions'] as $key=>$value) {
					if ($key == $profile_data['group_id']) {
						echo $value;
					}
				} ?></td></tr>
				<?php
				}
				?>
				<?php if (isset($profile_znote_data['comment']) === true && empty($profile_znote_data['comment']) === false) { ?>
			<tr><td>Comment:</td>
			<td><?php echo $profile_znote_data['comment']; ?></td></tr>
				<?php } ?>
			<tr><td>Created:</td>
			<td><?php echo getClock($profile_znote_data['created'], true); ?></td></tr>
			</table>
			<!-- END CHARACTER INFORMATION -->
			<!-- DEATH LIST -->
					<?php
					if ($config['TFSVersion'] == 'TFS_02') {
						$array = user_fetch_deathlist($user_id);
						if ($array) { ?>
							<table>
								<tr><td colspan="2">Character Deaths</td></tr><?php											
							//data_dump($array, false, "Data:");
								// Design and present the list
								foreach ($array as $value) {
									// $value[0]
									$value['time'] = getClock($value['time'], true);								
									if ($value['is_player'] == 1) {
										echo '<tr><td width="20%">'. $value['time'] .'</td><td> Killed at Level '. $value['level'] .' by <a href="characterprofile.php?name='. $value['killed_by'] .'">'. $value['killed_by'] .'</a></td></tr>';
									} else {
										echo '<tr><td>'. $value['time'] .'</td><td> Died at Level '. $value['level'] .' by '. $value['killed_by'] .'</td></tr>';
									}
								?>
							</table><?php
								}
							} 
							//Done.
						} else if ($config['TFSVersion'] == 'TFS_10') {
							$deaths = mysql_select_multi("SELECT 
								`player_id`, `time`, `level`, `killed_by`, `is_player`, 
								`mostdamage_by`, `mostdamage_is_player`, `unjustified`, `mostdamage_unjustified` 
								FROM `player_deaths` 
								WHERE `player_id`=$user_id ORDER BY `time` DESC LIMIT 10;");

							if (!$deaths) echo '';
							else {
							?>
							<table>
								<tr><td colspan="2">Character Deaths</td></tr><?php		
								foreach ($deaths as $d) {
										echo "<tr><td width='20%'>".getClock($d['time'], true, true)."</td>";
										$lasthit = ($d['is_player']) ? "<a href='characterprofile.php?name=".$d['killed_by']."'>".$d['killed_by']."</a>" : $d['killed_by'];
											if ($d['is_player'] > 0) {
											echo "<td> Killed at Level ".$d['level']." by $lasthit";
											} else echo "<td> Died at Level ".$d['level']." by $lasthit";
										if ($d['unjustified']) echo " <font color='red' style='font-style: italic;font-size:85%;'>(unjustified)</font>";
										$mostdmg = ($d['mostdamage_by'] !== $d['killed_by']) ? true : false;
										if ($mostdmg) {
											$mostdmg = ($d['mostdamage_is_player']) ? "<a href='characterprofile.php?name=".$d['mostdamage_by']."'>".$d['mostdamage_by']."</a>" : $d['mostdamage_by'];
											echo " and by $mostdmg.";
											if ($d['mostdamage_unjustified']) echo " <font color='red' style='font-style: italic;font-size:85%;'>(unjustified)</font>";
										}
								}
								//data_dump($deaths, false, "Deaths:");
																?>
							</td></tr></table><?php
							}
						} else if ($config['TFSVersion'] == 'OTH') {
							//mysql_select_single("SELECT * FROM players WHERE name='TEST DEBUG';");
							$array = user_fetch_deathlist03($user_id);
							if ($array) {							?>
							<table>
								<tr><td colspan="2">Character Deaths</td></tr><?php		
								// Design and present the list
								foreach ($array as $value) {
									$value[3] = user_get_killer_id(user_get_kid($value['id']));
									if ($value[3] !== false && $value[3] >= 1) {
										$namedata = user_character_data((int)$value[3], 'name');
										if ($namedata !== false) {
											$value[3] = $namedata['name'];
											$value[3] = '<a href="characterprofile.php?name='. $value[3] .'">'. $value[3] .'</a>';
										} else {
											$value[3] = 'deleted player.';
										}
										echo '<tr><td width="20%">'. getClock($value['date'], true) .'</td><td>Killed at Level '. $value['level'] .' by '. $value[3] .'</td></tr>';
									} else {
										$value[3] = user_get_killer_m_name(user_get_kid($value['id']));
										if ($value[3] === false) $value[3] = 'deleted player.';
										echo '<tr><td width="20%">'. getClock($value['date'], true) .'</td><td>Died at Level '. $value['level'] .' by '. $value[3] .'</td></tr>';
									}
								}
																?>
							</table><?php
							} 
						}
						?>
				<!-- END DEATH LIST -->
				<!-- QUEST PROGRESSION -->
                                <?php
                                $totalquests = 0;
                                $completedquests = 0;
                                $firstrun = 1;
								$oddeven = 1;
                                if ($config['EnableQuests'] == true)
                                {
                                        $sqlquests =  mysql_select_multi("SELECT `player_id`, `key`, `value` FROM player_storage WHERE `player_id` = $user_id");
                                        foreach ($config['Quests'] as $cquest)
                                        {
                                                $totalquests = $totalquests + 1;
                                                foreach ($sqlquests as $dbquest)
                                                {
                                                        if ($cquest[0] == $dbquest['key'] && $cquest[1] == $dbquest['value'])
                                                        {
                                                                $completedquests = $completedquests + 1;
                                                        }
                                                }
                                                if ($cquest[3] == 1)
                                                {
                                                        if ($completedquests != 0)
                                                        {
                                                                if ($firstrun == 1)
                                                                {
                                                                        echo '<table id="characterprofileQuest" class="table table-striped table-hover">';
                                                                        echo '<tr class="yellow">';
                                                                        echo '<td colspan="4">Quest Progress</td>';
                                                                        echo '</tr>';
                                                                        $firstrun = 0;
                                                                }
                                                                $completed = $completedquests / $totalquests * 100;
																if ($oddeven == 1)
																{
																	echo '<tr>';
																	echo '<td>'. $cquest[2] .'</td>';
																	echo '<td id="progress"><span id="percent">'.round($completed).'%</span><div id="bar" style="width: '.$completed.'%"></div></td>';
																	$oddeven = 0;
																} else {
																	echo '<td>'. $cquest[2] .'</td>';
																	echo '<td id="progress"><span id="percent">'.round($completed).'%</span><div id="bar" style="width: '.$completed.'%"></div></td>';
																	echo '</tr>';
																	$oddeven = 1;
																}

                                                        }
                                                        $completedquests = 0;
                                                        $totalquests = 0;
                                                }
                                        }
                                }
								if ($oddeven == 0)
								{
									echo '<td></td><td></td></tr>';
								}
                                if ($firstrun == 0)
                                {
                                        echo '</table>';
                                }
                                ?>
                                <!-- END QUEST PROGRESSION -->
				<!-- CHARACTER LIST -->
				<?php
				if (user_character_hide($profile_data['name']) != 1) {
				?>
					<table>
					<tr><td colspan="4">Characters</td></tr>
						<?php
						$characters = user_character_list(user_character_account_id($profile_data['name']));
						// characters: [0] = name, [1] = level, [2] = vocation, [3] = town_id, [4] = lastlogin, [5] = online
						if ($characters && count($characters) > 0) {
							?>
								<tr>
									<td><b>Name</b></td>
									<td width="55%"><b>Status</b></td>
									<td><b>Level</b></td>
									<td><b>Vocation</b></td>
								</tr>
								<?php
								// Design and present the list
								$number = 1;
								foreach ($characters as $char) {
										if (hide_char_to_name(user_character_hide($char['name'])) != 'hidden') {
											echo '<tr>';
											echo '<td>'. $number .'. <a href="characterprofile.php?name='. $char['name'] .'">'. $char['name'] .'</a></td>';
											if ($char['name'] != $profile_data['name']) { echo '<td>'. $char['online'] .'</td>';
											} else echo '<td>'. $char['online'] .' <span style="font-size:85%;opacity:.5;"><i> (currently viewing)</i></span></td>';
											echo '<td>'. $char['level'] .'</td>';
											echo '<td>'. $char['vocation'] .'</td>';
											/* echo '<td>';
												if ($profile_data['lastlogin'] != 0) {
													echo getClock($profile_data['lastlogin'], true, true);
												} else {
													echo 'never logged in';
												}
											echo '</td>'; */
											echo '</tr>';
										$number = $number + 1;
										}
								}
							?>
							</table>
							<?php
							} else {
								echo '<span style="color: #43ac6a; font-weight: bold;">This player has never died.</span>';
							}
								//Done.
							?>
				<?php
				}
				?>
				<!-- END CHARACTER LIST -->
				<?php /*
				<table>
				<tr><td><font class="profile_font" name="profile_font_share_url">Address</td></tr><tr><td><a href="<?php 
					if ($config['htwrite']) echo "http://".$_SERVER['HTTP_HOST']."/". $profile_data['name'];
					else echo "http://".$_SERVER['HTTP_HOST']."/characterprofile.php?name=". $profile_data['name'];
					
				?>"><?php
					if ($config['htwrite']) echo "http://".$_SERVER['HTTP_HOST']."/". $profile_data['name'];
					else echo "http://".$_SERVER['HTTP_HOST']."/characterprofile.php?name=". $profile_data['name'];
				?></a></font></td></tr>
				</table>
				*/ ?>
				
		<!-- END PROFILE MARKUP HERE-->
		
		<?php
	} else {
		echo htmlentities(strip_tags($name, ENT_QUOTES)).' does not exist.';
	}
} else {
	header('Location: unnamed');
}?>
<p>
<table>
	<form type="submit" action="characterprofile.php" method="get">
		<tr>
			<td>Search Character</td>
		</tr>
		<tr class="darkborder">
			<td>
				Name: <input type="text" size="25" name="name" class="search">
				<input type="submit" name="submitName" value="Submit">
			</td>
		</tr>
	</form>
</table>
<?php include 'layout/overall/footer.php'; ?>
