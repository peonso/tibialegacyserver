<?php
require_once 'engine/init.php';
protect_page();
include 'layout/overall/header.php';

if (empty($_POST) === false) {
	// $_POST['']
	/* Token used for cross site scripting security */
	if (!Token::isValid($_POST['token'])) {
		$errors[] = 'Token is invalid.';
	}
	$required_fields = array('new_email');
	foreach($_POST as $key=>$value) {
		if (empty($value) && in_array($key, $required_fields) === true) {
			$errors[] = 'You need to fill in all fields.';
			break 1;
		}
	}
	
	if (empty($errors) === true) {
		if (filter_var($_POST['new_email'], FILTER_VALIDATE_EMAIL) === false) {
			$errors[] = 'A valid email address is required.';
		} else if (user_email_exist($_POST['new_email']) === true && $user_data['email'] !== $_POST['new_email']) {
			$errors[] = 'That email address is already in use.';
		}
	}
	
	print_r($errors);
}
?>
<br><table class="blackline">
	<tr>
		<td><img src="layout/images/blank.gif"></td>
	</tr>
</table>
&nbsp;&nbsp;&nbsp;&nbsp;<img src="layout/images/titles/t_accman.png"/>
<table class="blackline">
	<tr>
		<td><img src="layout/images/blank.gif"></td>
	</tr>
</table><br>
<?php
if (isset($_GET['success']) === true && empty($_GET['success']) === true) {
	echo 'Your settings have been updated.';
} else {
	if (empty($_POST) === false && empty($errors) === true) {
		$update_data = array(
			'email' => $_POST['new_email'],
		);
		
		user_update_account($update_data);
		header('Location: settings.php?success');
		exit();
		
	} else if (empty($errors) === false) {
		echo output_errors($errors);
	}
	?>
	<table class="table table-striped table-hover">
		<form action="" method="post">
		<tr><th colspan="2">Change Email</th></tr>
		<tr><td width="20%">New Email:</td>
			<td><input type="text" name="new_email" size="24" placeholder="<?php echo $user_data['email']; ?>"></td>
		</tr>
		<tr class="transborder"><td></td><td>
			<?php
				/* Form file */
				Token::create();
			?>
			<input type="submit" value="Submit">&nbsp;<a class="linkbutton" style="float: right;" href="myaccount.php">Back</a>
		</td></tr>
		</form>
	</table>
<?php
}
include 'layout/overall/footer.php';
?>