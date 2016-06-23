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
<table>
<tr><td>Account Login</td></tr>
<form action="login.php" method="post">
		<tr><td>
						&nbsp;<i style="font-size:11px">Account number:</i> <br>
			<input type="text" name="username"><br>
				&nbsp;<i style="font-size:11px">Password:</i> <br>
			<input type="password" name="password">&nbsp;&nbsp;&nbsp;
<input type="submit" value="Log in"></td></tr>
		<?php
			/* Form file */
			Token::create();
		?>
	</form>
</table>
	
<p>Lost <a href="recovery.php?mode=username">Account Number</a> or <a href="recovery.php?mode=password">Password</a>?</font>
<p>Are you new? Don't have an account yet? Access <a href="register.php">Create Account</a> now.