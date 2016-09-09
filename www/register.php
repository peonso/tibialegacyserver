<?php
require_once 'engine/init.php';
logged_in_redirect();
include 'layout/overall/header.php'; 
?>
<br><table class="blackline">
	<tr>
		<td><img src="layout/images/blank.gif"></td>
	</tr>
</table>
<div class="titleheader">
	<h1>Sign Up</h1>
</div>
<table class="blackline">
	<tr>
		<td><img src="layout/images/blank.gif"></td>
	</tr>
</table><br>
<?php

if (empty($_POST) === false) {
	// $_POST['']
	$required_fields = array('username', 'password', 'password_again', 'email', 'selected', 'name', 'selected_town');
	foreach($_POST as $key=>$value) {
		if (empty($value) && in_array($key, $required_fields) === true) {
			$errors[] = 'You need to fill in all fields.';
			break 1;
		}
	}
	
	// check errors (= user exist, pass long enough
	if (empty($errors) === true) {
		/* Token used for cross site scripting security */
		if (!Token::isValid($_POST['token'])) {
			$errors[] = 'Token is invalid.';
		}

		if ($config['use_captcha']) {
			include_once 'captcha/securimage.php';
			$securimage = new Securimage();
			if ($securimage->check($_POST['captcha_code']) == false) {
			  $errors[] = 'Captcha image verification was submitted wrong.';
			}
		}
		
		if (user_exist($_POST['username']) === true) {
			$errors[] = 'Sorry, that Account Number already exist.';
		}
		
		// Don't allow "default admin names in config.php" access to register.
		$isNoob = in_array(strtolower($_POST['username']), $config['page_admin_access']) ? true : false;
		if ($isNoob) {
			$errors[] = 'This Account Number is blocked for registration.';
		}
		if (strtolower($_POST['username']) === true) {
			$errors[] = 'Sorry, that Account Number already exist.';
		}
		if (preg_match("/^[0-9]+$/", $_POST['username']) == false) {
			$errors[] = 'Your Account Number can only contain numbers (0-9).';
		}
		if (strlen($_POST['username']) < 6) {
			$errors[] = 'Your Account Number must have at least 6 numbers.';
		}
		if (strlen($_POST['username']) > 8) {
			$errors[] = 'Your Account Number at maximum 8 numbers.';
		}
		// name restriction
		$resname = explode(" ", $_POST['username']);
		foreach($resname as $res) {
			if(in_array(strtolower($res), $config['invalidNameTags'])) {
				$errors[] = 'Your username contains a restricted word.';
			}
			else if(strlen($res) == 1) {
				$errors[] = 'Too short words in your name.';
			}
		}
		// end name restriction
		if (strlen($_POST['password']) < 6) {
			$errors[] = 'Your password must be at least 6 characters.';
		}
		if (strlen($_POST['password']) > 32) {
			$errors[] = 'Your password must be less than 33 characters.';
		}
		if ($_POST['password'] !== $_POST['password_again']) {
			$errors[] = 'Your passwords do not match.';
		}
		if (filter_var($_POST['email'], FILTER_VALIDATE_EMAIL) === false) {
			$errors[] = 'A valid email address is required.';
		}
		if (user_email_exist($_POST['email']) === true) {
			$errors[] = 'That email address is already in use.';
		}
		if ($_POST['selected'] != 1) {
			$errors[] = 'You are only allowed to have an account if you accept the rules.';
		}
		if (validate_ip(getIP()) === false && $config['validate_IP'] === true) {
			$errors[] = 'Failed to recognize your IP address. (Not a valid IPv4 address).';
		}
		
		$_POST['name'] = validate_name($_POST['name']);
		if ($_POST['name'] === false) {
			$errors[] = 'Your name can not contain more than 2 words.';
		} else {
			if (user_character_exist($_POST['name']) !== false) {
				$errors[] = 'Sorry, that character name already exist.';
			}
			if (!preg_match("/^[a-zA-Z_ ]+$/", $_POST['name'])) {
				$errors[] = 'Your name may only contain a-z, A-Z and spaces.';
			}
			if (strlen($_POST['name']) < $config['minL'] || strlen($_POST['name']) > $config['maxL']) {
				$errors[] = 'Your character name must be between 4 - 20 characters long.';
			}
			// name restriction
			$resname = explode(" ", $_POST['name']);
			foreach($resname as $res) {
				if(in_array(strtolower($res), $config['invalidNameTags'])) {
					$errors[] = 'Your username contains a restricted word.';
				}
				else if(strlen($res) == 1) {
					$errors[] = 'Too short words in your name.';
				}
			}
			// Validate vocation id
			if (!in_array((int)$_POST['selected_vocation'], $config['available_vocations'])) {
				$errors[] = 'Permission Denied. Wrong vocation.';
			}
			// Validate town id
			if (!in_array((int)$_POST['selected_town'], $config['available_towns'])) {
				$errors[] = 'Permission Denied. Wrong town.';
			}
			// Validate gender id
			if (!in_array((int)$_POST['selected_gender'], array(0, 1))) {
				$errors[] = 'Permission Denied. Wrong gender.';
			}
			if (vocation_id_to_name($_POST['selected_vocation']) === false) {
				$errors[] = 'Failed to recognize that vocation, does it exist?';
			}
			if (town_id_to_name($_POST['selected_town']) === false) {
				$errors[] = 'Failed to recognize that town, does it exist?';
			}
			if (gender_exist($_POST['selected_gender']) === false) {
				$errors[] = 'Failed to recognize that gender, does it exist?';
			}
			// Char count
			$char_count = user_character_list_count($session_user_id);
			if ($char_count >= $config['max_characters']) {
				$errors[] = 'Your account is not allowed to have more than '. $config['max_characters'] .' characters.';
			}
			if (validate_ip(getIP()) === false && $config['validate_IP'] === true) {
				$errors[] = 'Failed to recognize your IP address. (Not a valid IPv4 address).';
			}
		}
	}
}

if (isset($_GET['success']) && empty($_GET['success'])) {
	echo 'Congratulations! Your account has been created. See you in-game!';
} else {
	if (empty($_POST) === false && empty($errors) === true) {
		if ($config['log_ip']) {
			znote_visitor_insert_detailed_data(1);
		}
		//Register
		$register_data = array(
			'id'	=>	$_POST['username'],
			'password'	=>	$_POST['password'],
			'email'		=>	$_POST['email'],
			'ip'	=>	ip2long(getIP()),
			'created'	=>	time()
		);
		$character_data = array(
			'name'		=>	format_character_name($_POST['name']),
			'account_id'=>	$_POST['username'],
			'vocation'	=>	$_POST['selected_vocation'],
			'town_id'	=>	$_POST['selected_town'],
			'sex'		=>	$_POST['selected_gender'],
			'lastip'	=>	ip2long(getIP()),
			'created'	=>	time()
		);
		
		user_create_account($register_data);
		user_create_character($character_data);
		header('Location: register.php?success');
		exit();
		//End register
		
	} else if (empty($errors) === false){
		echo '<div class="alert alert-danger alert-dismissible"><button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>';
		echo output_errors($errors);
		echo '</div>';
	}
?>
	If you already have an account, you might want to <a href="sub.php?page=login">log in</a> instead.
	<table class="table table-striped table-hover">
		<form action="" method="post">
		<tr><td colspan="2">Create Account</td></tr>
		<tr><td width="20%">Account Number:</td><td><input type="text" name="username" size="24" maxlength="8" placeholder=" 6-8 digits"></td></tr>
		<tr><td>Password:</td><td><input type="password" name="password" size="24" maxlength="32" placeholder=" 6-32 characters"></td></tr>
		<tr><td>Repeat Password:</td><td><input type="password" name="password_again" size="24" maxlength="32" placeholder=" 6-32 characters"></td></tr>
		<tr><td>Email:</td><td><input type="text" size="24" name="email"></td></tr>
		<tr><td>Character Name:</td><td><input type="text" name="name" size="24" maxlength="20" placeholder=" 4-20 characters"></td></tr>
		<tr><td>Gender:</td>
			<td><input name="selected_gender" value="1" checked="" type="radio">&nbsp;Male	<input name="selected_gender" value="0" type="radio">&nbsp;Female</td>
		</tr>
		<?php
			if ($config['use_captcha']) {
				?>
					<tr><td>Write the image symbols in the text field to verify that you are a human::</td>
						<td><img id="captcha" src="captcha/securimage_show.php" alt="CAPTCHA Image" /><br>
						<input type="text" name="captcha_code" size="10" maxlength="6" /><br>
						<a href="#" onclick="document.getElementById('captcha').src = 'captcha/securimage_show.php?' + Math.random(); return false">[ Different Image ]</a>
					</td></tr>
				<?php
			}
		?>
		<?php if (!($config['available_vocations'] = array(0))) { ?>
		<tr><td>Vocation:</td>
			<td>
				<select name="selected_vocation">
				<?php foreach ($config['available_vocations'] as $id) { ?>
				<option value="<?php echo $id; ?>"><?php echo vocation_id_to_name($id); ?></option>
				<?php } ?>
				</select>
			</td>
		</tr>
		<?php } ?>
		<tr><td colspan="2"><input name="selected" id="terms" type="checkbox" value="1">&nbsp;I agree with the <a href="#">Server Rules</a>.</td></tr>
		<tr class="transborder"><td></td><td>
			<?php
				/* Form file */
				Token::create();
			?>
			<div style="display: none;"><select hidden name="selected_town">
				<?php foreach ($config['available_towns'] as $tid) { ?>
				<option value="<?php echo $tid; ?>"><?php echo town_id_to_name($tid); ?></option>
				<?php } ?>
			</select></div>
			<?php if ($config['available_vocations'] = array(0)) { ?>
				<div style="display: none;">
					<input name="selected_vocation" value="0" checked=""  type="radio">
				</div>		
			<?php } ?>
			<br><input type="submit" value="Create Account">
		</td></tr>
		</form>
	</table>
<?php 
}
include 'layout/overall/footer.php';
?>