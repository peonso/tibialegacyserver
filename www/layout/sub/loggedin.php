<h2>Welcome, <?php echo $user_data['id']; ?>.</h2>
<div class="inner">
	<ul>
		<?php
		// If admin
		if (is_admin($user_data)) {
		?>
		<?php
		$new = 0;
		$cat = 4; //Category ID for feedback section
		$threads = mysql_select_multi("SELECT `id`, `player_id` FROM `znote_forum_threads` WHERE `forum_id`='$cat' AND `closed`='0';");
		if ($threads !== false) {
			$staffs = mysql_select_multi("SELECT `id` FROM `players` WHERE `group_id` > '1';");
			
			foreach($threads as $thread) {
				$response = false;
				$posts = mysql_select_multi("SELECT `id`, `player_id` FROM `znote_forum_posts` WHERE `thread_id`='". $thread['id'] ."';");
				foreach($posts as $post) {

					foreach ($staffs as $staff) {
						if ($post['player_id'] == $staff['id']) $response = true;
					}
				}

				if (!$response) $new++;
			}
		}
		?>
		<li>
			<a href='forum.php?cat=4'>Feedback: [<?php echo $new; ?>] new</a>
		</li>
		<br>
		<li>
			<a href='admin.php'>Admin Page</a>
		</li>
		<li>
			<a href='admin_news.php'>Admin News</a>
		</li>
		<li>
			<a href='admin_gallery.php'>Admin Gallery</a>
		</li>
		<br>
		<?php
		}
		// end if admin
		?>
		<li>
			<a href='myaccount.php'>My Account (Character Management)</a>
		</li>
		<li>
			<a href='createcharacter.php'>Create Character</a>
		</li>
		<li>
			<a href='changepassword.php'>Change Password</a>
		</li>
		<li>
			<a href='settings.php'>Settings</a>
		</li>
		<li>
			<a href='logout.php'>Logout</a>
		</li>
	</ul>
</div>