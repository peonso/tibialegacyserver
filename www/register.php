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
&nbsp;&nbsp;&nbsp;&nbsp;<img src="layout/images/titles/t_creacc.png"/>
<table class="blackline">
	<tr>
		<td><img src="layout/images/blank.gif"></td>
	</tr>
</table><br>
<?php

if (empty($_POST) === false) {
	// $_POST['']
	$required_fields = array('username', 'password', 'password_again', 'email', 'selected');
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
	}
}

if (isset($_GET['success']) && empty($_GET['success'])) {
	echo 'Congratulations! Your account has been created. You may now login to create a character.';
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
		
		user_create_account($register_data);
		header('Location: register.php?success');
		exit();
		//End register
		
	} else if (empty($errors) === false){
		echo '<font color="red"><b>';
		echo output_errors($errors);
		echo '</b></font>';
	}
?>
	<table>
	<tr><td>Account Creation</td></tr>
				<tr class="darkborder"><td>
		<form action="" method="post">
				Account Number:<br>
				<input type="text" name="username" placeholder=" 6 - 8 numbers"><br>
				Password:<br>
				<input type="password" name="password" placeholder=" 6 - 32 characters long"><br>
				Password again:<br>
				<input type="password" name="password_again" placeholder=" 6 - 32 characters long"><br>
				Email:<br>
				<input type="text" name="email"><br>
			<?php
			if ($config['use_captcha']) {
				?>

					<b>Write the image symbols in the text field to verify that you are a human:</b><br>
					<img id="captcha" src="captcha/securimage_show.php" alt="CAPTCHA Image" /><br>
					<input type="text" name="captcha_code" size="10" maxlength="6" /><br>
					<a href="#" onclick="document.getElementById('captcha').src = 'captcha/securimage_show.php?' + Math.random(); return false">[ Different Image ]</a><br><br>

				<?php
			}
			?><table>
				<tr class="lightborder"><td style="font-weight:normal;"><?php echo $config['server_rules']; ?></td></tr></table><br>
				Do you agree to follow the server rules?<br>
				<select name="selected">
				  <option value="1">Yes.</option>
				  <option value="2" selected>No.</option>
				</select><br><br>
			<?php
				/* Form file */
				Token::create();
			?>
				<input type="submit" value="Create Account">
						</form>
			</td></tr>
	</table>
<?php 
}
include 'layout/overall/footer.php';
?>