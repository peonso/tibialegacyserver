<?php require_once 'engine/init.php';
protect_page();

if (empty($_POST) === false) {
	/* Token used for cross site scripting security */
	if (!Token::isValid($_POST['token'])) {
		$errors[] = 'Token is invalid.';
	}
	
	$required_fields = array('current_password', 'new_password', 'new_password_again');
	
	foreach($_POST as $key=>$value) {
		if (empty($value) && in_array($key, $required_fields) === true) {
			$errors[] = 'You need to fill in all fields.';
			break 1;
		}
	}
	
	$pass_data = user_data($session_user_id, 'password');
	//$pass_data['password'];
	// $_POST['']
	
	// .3 compatibility
	if ($config['TFSVersion'] == 'TFS_03' && $config['salt'] === true) {
		$salt = user_data($session_user_id, 'salt');
	}
	if (sha1($_POST['current_password']) === $pass_data['password'] || $config['TFSVersion'] == 'TFS_03' && $config['salt'] === true && sha1($salt['salt'].$_POST['current_password']) === $pass_data['password']) {
		if (trim($_POST['new_password']) !== trim($_POST['new_password_again'])) {
			$errors[] = 'Your new passwords do not match.';
		} else if (strlen($_POST['new_password']) < 6) {
			$errors[] = 'Your new passwords must be at least 6 characters.';
		} else if (strlen($_POST['new_password']) > 32) {
			$errors[] = 'Your new passwords must be less than 33 characters.';
		}
	} else {
		$errors[] = 'Your current password is incorrect.';
	}
}

include 'layout/overall/header.php'; ?>
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
if (isset($_GET['success']) && empty($_GET['success'])) {
	echo 'Your password has been changed.<br>You will need to login again with the new password.';
	session_destroy();
	header("refresh:2;url=index.php");
	exit();
} else {
	if (empty($_POST) === false && empty($errors) === true) {
		//Posted the form without errors
		if ($config['TFSVersion'] == 'OTH' || $config['TFSVersion'] == 'TFS_10') {
			user_change_password($session_user_id, $_POST['new_password']);
		} else if ($config['TFSVersion'] == 'TFS_03') {
			user_change_password03($session_user_id, $_POST['new_password']);
		}
		header('Location: changepassword.php?success');
	} else if (empty($errors) === false){
		echo '<div class="alert alert-danger alert-dismissible"><button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>';
		echo output_errors($errors);
		echo '</div>';
	}
	?>
	<table class="table table-striped table-hover">
		<form action="" method="post">
		<tr><th colspan="2">Change Password</th></tr>
		<tr><td width="20%">Current Password:</td>
			<td><input type="password" name="current_password" size="24"></td>
		</tr>
		<tr><td>New Password:</td>
			<td><input type="password" name="new_password" size="24" placeholder="6-32 characters"></td>
		</tr>
		<tr><td>Repeat New Password:</td>
			<td><input type="password" name="new_password_again" size="24" placeholder="6-32 characters"></td>
		</tr>
		<tr class="transborder"><td></td><td>
			<?php
				/* Form file */
				Token::create();
			?>
			<input type="submit" value="Change password">&nbsp;<script> document.write('<a class="linkbutton" style="float: right;" href="' + document.referrer + '">Back</a>'); </script>
		</td></tr>
		</form>
	</table>
<?php
}
include 'layout/overall/footer.php'; ?>