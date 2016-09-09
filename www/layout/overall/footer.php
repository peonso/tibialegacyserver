	
	
					<div style="clear:both;"></div>
					<br>
					<table class="blackline">
						<tr>
							<td><img src="layout/images/blank.gif"></td>
						</tr>
					</table>
					
					<div align="center" style="font-face:verdana;font-size:10px">
					© <?php echo $config['site_title']; ?>. <a href="credits.php">Credits</a>.<!--
					<?php 
						$time = microtime();
						$time = explode(' ', $time);
						$time = $time[1] + $time[0];
						$finish = $time;
						$total_time = round(($finish - $start), 4);
						echo ''. getClock(false, true) .' Page generated in '. $total_time .' seconds.';
					?><br>Layout by <a href="https://www.cipsoft.com">CipSoft GmbH</a>. Engine by <a href="credits.php">Znote</a>-->
					</div>
				</div>
			</div>
		</div>
	</div>
		<!-- jQuery Version 1.11.0 -->
    <script src="layout/js/jquery-1.11.0.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="layout/js/bootstrap.min.js"></script>
	
	
	<?php
	// Don't touch this, 2524608000 is 1 Jan 2050 in seconds (random day in distant future)
	// *1000 because javascript script (js/serversave.js) works with timestamp in milliseconds
	$save_timestamp = (2524608000 + (($config['save_hour'] * 60 * 60) + ($config['save_minute'] * 60))) * 1000;
	?>
	<script type="text/javascript">
		var target_date =  <?php echo $save_timestamp; ?>;
	</script>
	
	<!-- Bootstrap Core JavaScript -->
    <script src="layout/js/serversave.js"></script>
	
</body>
</html>