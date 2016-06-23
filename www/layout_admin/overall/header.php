<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Page Icon -->
	<link href="layout_admin/images/favicon.ico" rel="shortcut icon" />

    <title><?PHP echo $config['site_title'];?> - <?PHP echo $config['site_title_context'];?></title>

	<!-- Custom CSS -->
	<link href="layout_admin/css/bootstrap.min.css" rel="stylesheet">
	
	<style>
		#content {
			overflow: auto;
			height: 500px;
		}
	</style>
		
  </head>
  
  <body>
  
  	<div class="container">
        <div class="titleheader">
			<img  src="layout_admin/images/logo.png" alt=""><img  src="layout_admin/images/admin.png" align="right" alt="">
            <div class="clearfix"></div>
        </div>
	</div>
	<!-- /.container -->

    <div class="container">
		<div class="row">
			<div class="col-xs-3">
			  <div class="list-group"><ul class="nav nav-pills nav-stacked">
				<?php $name = basename($_SERVER['PHP_SELF']);?>
				<li><a href='index.php' class="list-group-item">Back to Main Page<span style="float:right"><i class="fa fa-home fa-lg"></i></span></a></li>
				<li<?php if ($name == 'admin.php') echo ' class="active"';?>><a href='admin.php' class="list-group-item">Main Settings<span style="float:right"><i class="fa fa-cog fa-lg"></i></span></a></li>
				<li<?php if ($name == 'admin_news.php') echo ' class="active"';?>><a href='admin_news.php' class="list-group-item">News<span style="float:right"><i class="fa fa-file-text-o fa-lg"></i></span></a></li>
				<li<?php if ($name == 'admin_shop.php') echo ' class="active"';?>><a href='admin_shop.php' class="list-group-item">Shop<span style="float:right"><i class="fa fa-usd fa-lg"></i></span></a></li>
				<li<?php if ($name == 'admin_skills.php') echo ' class="active"';?>><a href='admin_skills.php' class="list-group-item">Set Character Skills<span style="float:right"><i class="fa fa-child fa-lg"></i></span></a></li>
				<li<?php if ($name == 'admin_reports.php') echo ' class="active"';?>><a href='admin_reports.php' class="list-group-item">Reports<span style="float:right"><i class="fa fa-bug fa-lg"></i></span></a></li>
				<?php
				$new = 0;
				$cat = 4; //Category ID for feedback section
				$threads = mysql_select_multi("SELECT `id`, `player_id` FROM `znote_forum_threads` WHERE `forum_id`='$cat' AND `closed`='0';");
				if ($threads !== false) {
					$staffs = mysql_select_multi("SELECT `id` FROM `players` WHERE `group_id` > '1';");
					
					foreach($threads as $thread) {
						$response = false;
						$posts = mysql_select_multi("SELECT `id`, `player_id` FROM `znote_forum_posts` WHERE `thread_id`='". $thread['id'] ."';");
						if ($posts !== false) {
							foreach($posts as $post) {
								foreach ($staffs as $staff) {
									if ($post['player_id'] == $staff['id']) $response = true;
								}
							}
						}

						if (!$response) $new++;
					}
				}
				?>
				<li><a href='forum.php?cat=4' class="list-group-item">Feedback Forum <span class="badge pull-right"><strong><?php echo $new; ?></strong></span></a></li>
				<li><a href='logout.php' class="list-group-item">Logout<span style="float:right"><i class="fa fa-sign-out fa-lg"></i></span></a></li>
				</ul>
			  </div>
			  <!--<div class="box">
				  <h2 style="text-align:center;margin-top:4px;">Admin Panel</h2>
				  Running Znote AAC Version: 1.5_SVN.
				  <br>Last cached on: 01 Jan 1970, 02:00.
			  </div>-->
			</div>
  
			<div class="col-xs-9">
				<div class="box" id="content">