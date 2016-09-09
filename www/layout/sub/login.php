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
	<table class="table table-striped table-hover">
		<form action="login.php" method="post">
		<tr><td colspan="2">Account Login</td></tr>
		<tr><td width="20%">Account number:</td><td><input type="text" name="username" size="24" maxlength="8" placeholder=" 6-8 digits"></td></tr>
		<tr><td>Password:</td><td><input type="password" name="password" size="24" maxlength="32" placeholder=" 6-32 characters"></td></tr>
		<tr><td></td><td>
			<input type="submit" value="Log in">
		<?php
			/* Form file */
			Token::create();
		?>
		</td></tr>
		</form>
	</table>		
<p>Lost <a href="recovery.php?mode=username">Account Number</a> or <a href="recovery.php?mode=password">Password</a>?</font>
<p>Are you new? Don't have an account yet? <a href="register.php">Sign Up</a> now.