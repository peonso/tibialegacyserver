<?php require_once 'engine/init.php'; include 'layout/overall/header.php'; ?>
<br><table class="blackline">
	<tr>
		<td><img src="layout/images/blank.gif"></td>
	</tr>
</table>
<div class="titleheader">
	<h1>Downloads</h1>
</div>
<table class="blackline">
	<tr>
		<td><img src="layout/images/blank.gif"></td>
	</tr>
</table><br>

<p>In order to play, you need an compatible IP changer and a Tibia client.</p>
<br>
<table class="table table-striped table-hover">
	<tr class="transborder">
		<td width="10%"></td><td>
			<center><a href="<?php echo $config['client_download']; ?>"><img src="/layout/images/tibia.png" alt="Tibia Client <?php echo ($config['client'] / 100); ?>">
			<br><strong>Tibia Client <?php echo ($config['client'] / 100); ?></strong></a><br>9.9 MB</center>
		</td><td>
			<center><a href="http://static0.otland.net/ipchanger.exe"><img src="/layout/images/ipchanger.png" alt="OtLand IP Chancer">
			<br><strong>OtLand IP Changer</strong></a><br>0.1 MB</center>
		</td><td width="10%"></td>
	</tr>
</table>
<?php 
include 'layout/overall/footer.php'; ?>
