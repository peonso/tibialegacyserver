	
	
					<div style="clear:both;"></div>
					<br>
					<table class="blackline">
						<tr>
							<td><img src="layout/images/blank.gif"></td>
						</tr>
					</table>
					
					<div align="center" style="font-face:verdana;font-size:10px">
					<a href="credits.php">Credits</a>. © <?php echo $config['site_title']; ?>.<!--
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
	
</body>
</html>