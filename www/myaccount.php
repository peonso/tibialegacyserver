<?php require_once 'engine/init.php'; include 'layout/overall/header.php';
?>
<br><table class="blackline">
	<tr>
		<td><img src="layout/images/blank.gif"></td>
	</tr>
</table>
<div class="titleheader">
	<h1>My Account</h1>
</div>
<table class="blackline">
	<tr>
		<td><img src="layout/images/blank.gif"></td>
	</tr>
</table><br>
<?php
protect_page();
#region CANCEL CHARACTER DELETE
$undelete_id = @$_GET['cancel_delete_id'];
if($undelete_id) {
	$undelete_id = (int)$undelete_id;
	$undelete_q1 = mysql_select_single('SELECT `character_name` FROM `znote_deleted_characters` WHERE `done` = 0 AND `id` = ' . $undelete_id . ' AND `original_account_id` = ' . $session_user_id . ' AND NOW() < `time`');
	if($undelete_q1) {
		mysql_delete('DELETE FROM `znote_deleted_characters` WHERE `id` = ' . $undelete_id);
		echo '<div class="alert alert-success alert-dismissible">';
		echo '<button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>';
		echo 'Pending delete of ' . $undelete_q1['character_name'] . ' has been successfully cancelled.<br/>';
		echo '</div>';
	}
}
#endregion

// Variable used to check if main page should be rendered after handling POST (Change comment page)
$render_page = true;

// Handle POST
if (!empty($_POST['selected_character'])) {
	if (!empty($_POST['action'])) {
		// Validate token
		if (!Token::isValid($_POST['token'])) {
			exit();
		}
		// Sanitize values
		$action = getValue($_POST['action']);
		$char_name = getValue($_POST['selected_character']);

		// Handle actions
		switch($action) {
			// Change character comment PAGE2 (Success).
			case 'update_comment':
				if (user_character_account_id($char_name) === $session_user_id) {
					user_update_comment(user_character_id($char_name), getValue($_POST['comment']));
					echo '<div class="alert alert-success alert-dismissible">';
					echo '<button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>';
					echo 'Successfully updated comment.';
					echo '</div>'; 
				}
				break;
			// end

			// Hide character
			case 'toggle_hide':
				$hide = (user_character_hide($char_name) == 1 ? 0 : 1);
				if (user_character_account_id($char_name) === $session_user_id) {
					user_character_set_hide(user_character_id($char_name), $hide);
				}
				break;
			// end

			// DELETE character
			case 'delete_character':
				if (user_character_account_id($char_name) === $session_user_id) {
					$charid = user_character_id($char_name);
					if ($charid !== false) {
						if ($config['TFSVersion'] === 'TFS_10') {
							if (!user_is_online_10($charid)) {
								if (guild_leader_gid($charid) === false) user_delete_character_soft($charid);
								else echo '<div class="alert alert-danger alert-dismissible"><button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
								Character is leader of a guild, you must disband the guild or change leadership before deleting character.</div>';
							} else echo '<div class="alert alert-danger alert-dismissible"><button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
								Character must be offline first.</div>';
						} else {
							$chr_data = user_character_data($charid, 'online');
							if ($chr_data['online'] != 1) {
								if (guild_leader_gid($charid) === false) user_delete_character_soft($charid);
								else echo '<div class="alert alert-danger alert-dismissible"><button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
								Character is leader of a guild, you must disband the guild or change leadership before deleting character.</div>';
							} else echo '<div class="alert alert-danger alert-dismissible"><button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
								Character must be offline first.</div>';
						}
					}
				}
				break;
			// end

			// CHANGE character name
			case 'change_name':
				$oldname = $char_name;
				$newname = isset($_POST['newName']) ? getValue($_POST['newName']) : '';

				$player = false;
				if ($config['TFSVersion'] === 'TFS_10') {
					$player = mysql_select_single("SELECT `id`, `account_id` FROM `players` WHERE `name` = '$oldname'");
					$player['online'] = (user_is_online_10($player['id'])) ? 1 : 0;
				} else $player = mysql_select_single("SELECT `id`, `account_id`, `online` FROM `players` WHERE `name` = '$oldname'");

				// Check if user is online
				if ($player['online'] == 1) {
					$errors[] = 'Character must be offline first.';
				}

				// Check if player has bough ticket
				$accountId = $player['account_id'];
				$order = mysql_select_single("SELECT `id`, `account_id` FROM `znote_shop_orders` WHERE `type`='4' AND `account_id` = '$accountId' LIMIT 1;");
				if ($order === false) {
					$errors[] = 'Did not find any name change tickets, buy them in our <a href="shop.php">shop.</a>';
				}

				// Check if player and account matches
				if ($session_user_id != $accountId || $session_user_id != $order['account_id']) {
					$errors[] = 'Failed to sync your account.';
				}

				$newname = validate_name($newname);
				if ($newname === false) {
					$errors[] = 'Your name can not contain more than 2 words.';
				} else {
					if (empty($newname)) {
						$errors[] = 'Please enter a name!';
					} else if (user_character_exist($newname) !== false) {
						$errors[] = 'Sorry, that character name already exist.';
					} else if (!preg_match("/^[a-zA-Z_ ]+$/", $newname)) {
						$errors[] = 'Your name may only contain a-z, A-Z and spaces.';
					} else if (strlen($newname) < $config['minL'] || strlen($newname) > $config['maxL']) {
						$errors[] = 'Your character name must be between ' . $config['minL'] . ' - ' . $config['maxL'] . ' characters long.';
					} else if (!ctype_upper($newname{0})) {
						$errors[] = 'The first letter of a name has to be a capital letter!';
					}

					// name restriction
					$resname = explode(" ", $_POST['newName']);
					foreach($resname as $res) {
						if(in_array(strtolower($res), $config['invalidNameTags'])) {
							$errors[] = 'Your username contains a restricted word.';
						} else if(strlen($res) == 1) {
							$errors[] = 'Too short words in your name.';
						}
					}
				}

				if (!empty($newname) && empty($errors)) {
					echo '<div class="alert alert-success alert-dismissible">';
					echo '<button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>';
					echo 'You have successfully changed your character name to ' . $newname . '.';
					echo '</div>';
					mysql_update("UPDATE `players` SET `name`='$newname' WHERE `id`='".$player['id']."' LIMIT 1;");
					mysql_delete("DELETE FROM `znote_shop_orders` WHERE `id`='".$order['id']."' LIMIT 1;");

				} else if (!empty($errors)) {
					echo '<div class="alert alert-danger alert-dismissible">';
					echo '<button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>';
					echo output_errors($errors);
					echo '</div>'; 
				}

				break;
			// end

			// Change character sex
			case 'change_gender':
				if (user_character_account_id($char_name) === $session_user_id) {
					$char_id = (int)user_character_id($char_name);
					$account_id = user_character_account_id($char_name);

					if ($config['TFSVersion'] == 'TFS_10') {
						$chr_data['online'] = user_is_online_10($char_id) ? 1 : 0;
					} else $chr_data = user_character_data($char_id, 'online');
					if ($chr_data['online'] != 1) {
						// Verify that we are not messing around with data
						if ($account_id != $user_data['id']) die("wtf? Something went wrong, try relogging.");

						// Fetch character tickets
						$tickets = shop_account_gender_tickets($account_id);
						if ($tickets !== false || $config['free_sex_change'] == true) {
							// They are allowed to change gender
							$last = false;
							$infinite = false;
							$tks = 0;
							// Do we have any infinite tickets?
							foreach ($tickets as $ticket) {
								if ($ticket['count'] == 0) $infinite = true;
								else if ($ticket > 0 && $infinite === false) $tks += (int)$ticket['count'];
							}
							if ($infinite === true) $tks = 0;
							$dbid = (int)$tickets[0]['id'];
							// If they dont have unlimited tickets, remove a count from their ticket.
							if ($tickets[0]['count'] > 1) { // Decrease count
								$tks--;
								$tkr = ((int)$tickets[0]['count'] - 1);
								shop_update_row_count($dbid, $tkr);
							} else if ($tickets[0]['count'] == 1) { // Delete record
								shop_delete_row_order($dbid);
								$tks--;
							}

							// Change character gender:
							//
							user_character_change_gender($char_name);
							echo '<div class="alert alert-success alert-dismissible">';
							echo '<button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>';
							echo 'You have successfully changed gender on character '. $char_name .'.';
							if ($tks > 0) echo '<br>You have '. $tks .' gender change tickets left.';
							else if ($infinite !== true) echo '<br>You are out of tickets.';
							echo '</div>';
						} else echo '<div class="alert alert-danger alert-dismissible"><button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
								You don\'t have any character gender tickets, buy them in the <a href="shop.php">shop</a>.</div>';
					} else echo '<div class="alert alert-danger alert-dismissible"><button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
								Your character must be offline.</div>';
				}
				break;
			// end

			// Change character comment PAGE1:
			case 'change_comment':
				$render_page = false; // Regular "myaccount" page should not render
				if (user_character_account_id($char_name) === $session_user_id) {
					$comment_data = user_znote_character_data(user_character_id($char_name), 'comment');
					?>
					<!-- Changing comment MARKUP -->
					<table class="table table-striped table-hover">
						<form class="form-horizontal" action="" method="post">
						<tr><th colspan="2">Change Comment
							<input name="action" type="hidden" value="update_comment"></th></tr>
						<tr><td width="10%">Character:</td><td><?php echo $char_name; ?>
							<input type="hidden" class="form-control" id="inputCharacter" name="selected_character" value="<?php echo $char_name; ?>" readonly="readonly"></td><tr>
						<tr><td>Comment:</td>
							<td><textarea class="form-control" rows="5" style="width: 100%; resize: none;" id="textArea" name="comment"><?php echo $comment_data['comment']; ?></textarea></td><tr>
						<tr class="transborder"><td></td><td>
							<?php
								/* Form file */
								Token::create();
							?>
							<input type="submit" value="Submit">&nbsp;<a class="linkbutton" style="float: right;" href="myaccount.php">Back</a>
						</td><tr>
						</form>	
					</table>
					<?php
				}
				break;
			//end
		}
	}
}

if ($render_page) {
	$char_count = user_character_list_count($session_user_id);
	$pending_delete = user_pending_deletes($session_user_id);
	if ($pending_delete) {
		foreach($pending_delete as $delete) {
			if(new DateTime($delete['time']) > new DateTime())
				echo '<div class="alert alert-danger alert-dismissible">
				<button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
				<b>CAUTION!</b> Your character with name <b>' . $delete['character_name'] . ' will be deleted on ' . $delete['time'] . '</b>. <a href="myaccount.php?cancel_delete_id=' . $delete['id'] . '">Cancel this operation.</a><br/></div>'; 
			else {
				user_delete_character(user_character_id($delete['character_name']));
				mysql_update('UPDATE `znote_deleted_characters` SET `done` = 1');
				echo '<div class="alert alert-danger alert-dismissible"><button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
								<b>Character ' . $delete['character_name'] . ' has been deleted</b>. This operation was requested by owner of this account.</div>';
				$char_count--;
			}
		}
	}

	?>
	<div id="myaccount">
		<table class="table table-striped table-hover">
			<tr><th colspan="2">General Information</th></tr>
			<tr><td width="24%">Account:</td><td><?php echo $user_data['id']; ?></td></tr>
			<tr><td>Email:</td><td><?php echo $user_data['email']; ?></td></tr>
			<?php
			$created = mysql_select_single("SELECT `created` FROM `znote_accounts` WHERE `account_id` = " .$user_data['id']. " LIMIT 1;");
			?>
			<tr><td>Created:</td><td><?php echo date("j M Y, H:i", $created['created']); ?></td></tr>
			<tr><td>Account Status:</td><td>
			<?php 			
			if ($user_data['premend'] != 0) {
					echo 'Premium Account, it will last until ';
					echo date("d/m/Y, H:i:s",$user_data['premend']);
				} else {
					echo 'Free Account';
				}
			?></td></tr>
		</table>

	<div style="padding-left:6px;padding-bottom:20px;padding-top:12px;">
		<a class="linkbutton" href="settings.php">Change Email</a>&nbsp;
		<a class="linkbutton" href="changepassword.php">Change Password</a>
		<a class="linkbutton" href="logout.php" style="float: right;">Log Out</a>
	</div>
			
		<?php
		// Echo character list!
		$char_array = user_character_list($user_data['id']);
		// Design and present the list
		if ($char_array) {
			?>
			<table id="myaccountTable" class="table table-striped table-hover">
				<tr><th colspan="6">Character List</th></tr>
				<tr>
					<td width="24%">Name</td><td width="10%">Level</td><td>Vocation</td><td>Last Login</td><td>Status</td><td width="10%">Hide</td>
				</tr>
				<?php
				$characters = array();
				foreach ($char_array as $value) {
					// characters: [0] = name, [1] = level, [2] = vocation, [3] = town_id, [4] = lastlogin, [5] = online
					echo '<tr>';
					echo '<td><a href="characterprofile.php?name='. $value['name'] .'">'. $value['name'] .'</a></td><td>'. $value['level'] .'</td><td>'. $value['vocation'] .'</td><td>'. $value['lastlogin'] .'</td><td>'. $value['online'] .'</td><td>'. hide_char_to_name(user_character_hide($value['name'])) .'</td>';
					echo '</tr>';
					$characters[] = $value['name'];
				}
			?>
			</table>
		
		<div style="padding-left:6px;padding-bottom:20px;padding-top:12px;">
			<a class="linkbutton" href="createcharacter.php">Create New Character</a>
		</div>
		
		<!-- FORMS TO EDIT CHARACTER-->
		<form action="" method="post">
		<table class="table table-striped table-hover">
			<tr><th colspan="3">Edit Character</th></tr>
			<tr><td width="24%">
				<select id="selected_character" name="selected_character" class="form-control">
					<?php
					for ($i = 0; $i < $char_count; $i++) {
						if (user_character_hide($characters[$i]) == 1) {
							echo '<option value="'. $characters[$i] . '">'. $characters[$i] .'</option>'; 	
						} else {
							echo '<option value="'. $characters[$i] . '">'. $characters[$i] .'</option>'; 	
						}
					}	?>
				</select>
				</td>
				<td>
					<select id="action" name="action" class="form-control" onChange="changedOption(this)">
						<option value="none" selected>Select action</option>
						<option value="toggle_hide">Toggle hide</option>
						<option value="change_comment">Change comment</option>
						<option value="change_gender">Change gender</option>
						<option value="change_name">Change name</option>
						<option value="delete_character">Delete character</option>
					</select>
				</td>
				<td id="submit_form">
				<?php
					/* Form file */
					Token::create();
				?>
					<input id="submit_button" type="submit" value="Submit" class="linkbutton"></input>
				</td>
			</tr>
		</table>
		</form>
			<?php
		} else {
			echo 'You don\'t have any characters.
				<div style="padding-left:6px;padding-bottom:20px;padding-top:12px;">
					<a class="linkbutton" href="createcharacter.php">Create New Character</a>
				</div>';
		}
		?>
	</div>
	<script>
		function changedOption(e) {
			// If selection is 'Change name' add a name field in the form
			// Else remove name field if it exists
			if (e.value == 'change_name') {
				var lastCell = document.getElementById('submit_form');
				var x = document.createElement('TD');
				x.id = "new_name";
				x.innerHTML = '<input type="text" name="newName" placeholder="New Name" class="form-control">';
				lastCell.parentNode.insertBefore(x, lastCell);
			} else {
				var child = document.getElementById('new_name');
				if (child) {
					child.parentNode.removeChild(child);
				}
			}
		}
	</script>
	<script src="engine/js/jquery-1.10.2.min.js" type="text/javascript"></script>
	<script>
		$(document).ready(function(){
			$("#submit_button").click(function(e){
				if ($("#action").find(":selected").attr('class') == "needconfirmation") {
					var r = confirm("Do you really want to DELETE character: "+$('#selected_character').find(":selected").text()+"?")
					if (r == false) {
						e.preventDefault();
					}
				}
			});
		});
	</script>
	<?php
}
include 'layout/overall/footer.php';
/* 
// ZEOTSS: Register visitor 
if ($config['zeotss']['enabled'] && $config['zeotss']['visitors']) {
	$curl_connection = curl_init($config['zeotss']['server']."modules/visitor/registervisitor.php");
	curl_setopt($curl_connection, CURLOPT_CONNECTTIMEOUT, 1);
	curl_setopt($curl_connection, CURLOPT_USERAGENT, "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)");
	curl_setopt($curl_connection, CURLOPT_RETURNTRANSFER, true);
	curl_setopt($curl_connection, CURLOPT_SSL_VERIFYPEER, false);
	curl_setopt($curl_connection, CURLOPT_FOLLOWLOCATION, 0);
	$post_string = "longip=".ip2long($_SERVER['REMOTE_ADDR'])."&register=1";
	curl_setopt($curl_connection, CURLOPT_POSTFIELDS, $post_string);
	$result = curl_exec($curl_connection);
	if ($config['zeotss']['debug']) data_dump(false, array($result), "CURL DATA");
	curl_close($curl_connection);

	// Check if site is registered on ZEOTSS and can use its utilities:
	$result = json_decode($result);
	if ($result->data->exist === false) {
		?>
		<script type="text/javascript">
		alert("Error: ZEOTSS site validation failed, have you registered? Register at: <?php echo $config['zeotss']['server']; ?>");
		</script>
		<?php
	}
}
*/
?>
