<!DOCTYPE html">
<html>
<?php
$time = microtime();
$time = explode(' ', $time);
$time = $time[1] + $time[0];
$start = $time;
?>
	<head>
	
		<meta charset="utf-8">
		<meta name="distribution" content="Global" />
		<meta name="author" content="peonso" />
		<meta name="robots" content="index,follow" />
		<meta name="description" content="Site Description." />
		<meta name="keywords" content="ot, open tibia server, opentibia, othire, tibia" />
		
		<title><?PHP echo $config['site_title'];?> - <?PHP echo $config['site_title_context'];?></title>

		<link rel="stylesheet" type="text/css" href="layout/css/bootstrap.css" />
		<link rel="stylesheet" type="text/css" href="layout/css/main.css" />
		<link href="layout/images/favicon.ico" rel="shortcut icon" />
		
	</head>
	
<body style="background-image:url('layout/images/bg.jpg');background-size: 100%;">
	<div id="pandaac">
		<div id="header">
			<a href="index.php"><img src="layout/images/header-left.png" alt="Tibia"></a>
		</div>

		<div id="topbar">
			<ul>
				<li><a href="index.php">Home</a></li>
				<li><a href="forum.php">Forum</a></li>
				<li><a href="guilds.php">Guilds</a></li>
				<li><a href="sub.php?page=whoisonline">Who is Online</a></li>
				<li><a href="support.php">Support</a></li>
			</ul>
		</div>
		
		<div id="content-container">
			<div id="sidebar">
				<div id="sidebar-links">
					<div class="line"></div>
					<div class="line wide"></div>

					<ul>
						<li><a href="register.php">Sign Up</a></li>
						<li><a href="sub.php?page=charactersearch">Characters</a></li>
						<li><a href="highscores.php">Highscores</a></li>
						<li><a href="downloads.php">Downloads</a></li>
						<!--<li><a href="sub.php?page=library">Library</a></li>-->
						<li><a href="deaths.php">Latest Deaths</a></li>
						<li><a href="houses.php">Houses</a></li>
						<li><a href="spells.php">Magic</a></li>
						<li><a href="sub.php?page=experiencetable">Experience</a></li>
						<li><a href="powergamers.php">Powergamers</a></li>
						<li><a href="insomaniacs.php">Insomaniacs</a></li>
						<li><a href="map.php">World Map</a></li>
						<li><a href="shop.php">Shop</a></li>
					</ul>
					<div class="line wide"></div>
					<div class="line"></div>
				</div>

				<div id="sidebar-misc">
				
					<?php if (user_logged_in() && is_admin($user_data)) { ?>
						<div class="bar"></div>
						<a href="admin.php" class="martel">Admin Panel</a>
					<?php } ?>
				
					<div class="bar"></div>
						<a href="
						<?php
						if (user_logged_in() === true) {
							echo 'myaccount.php'; 
						} else {
							echo 'sub.php?page=login'; 
						}
						?>" class="martel">My Account</a>
					<div class="bar"></div>
	
					<br>

					<a href="sub.php?page=whoisonline">Players Online</a>
					<div class="bar"></div>
						<a href="sub.php?page=whoisonline">
						<?php
							$status = true;
							if ($config['status']['status_check']) {
								@$sock = fsockopen ($config['status']['status_ip'], $config['status']['status_port'], $errno, $errstr, 1);
								if(!$sock) {
									echo '<font color="#9873DA"> Offline</font>';
									$status = false;
								}
								else {
									$info = chr(6).chr(0).chr(255).chr(255).'info';
									fwrite($sock, $info);
									$data='';
									while (!feof($sock))$data .= fgets($sock, 1024);
									fclose($sock);
									echo '<!--font color="#9873DA"> Online</font><br--><a href="sub.php?page=whoisonline">';
									echo user_count_online();
									echo ' players<br/></a>';
								}
							}
						?>
						</a>
					<div class="bar"></div>
					
					<br>

					<div class="bar"></div>
					<span style="font-size: 10px; font-weight: bold;">Server Save in
					<br><span id="sshours"></span>:<span id="ssminutes"></span>:<span id="ssseconds"></span></span>
					<div class="bar"></div>
				</div>
			</div>
			<div id="main">
				<div id="content">


