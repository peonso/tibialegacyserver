<br><table class="blackline">
	<tr>
		<td><img src="layout/images/blank.gif"></td>
	</tr>
</table>
<div class="titleheader">
	<h1>News</h1>
</div>
<table class="blackline">
	<tr>
		<td><img src="layout/images/blank.gif"></td>
	</tr>
</table><br>
<table class="newstable">
<tr>
<td width="80%">
Welcome, wanderer, to the fascinating world of <?php echo $config['site_title']; ?>, a massive multiplayer online role playing game. Take the role of a valorous adventurer, explore a huge realm of magic and mystery and make friends with people from all over the world! To start playing <a href="register.php">sign up</a> for a free account and <a href="downloads.php">download your client</a>. See you in <?php echo $config['site_title']; ?>!</td>
<td width="20%" align="center"><a href="register.php"><img src="layout/images/signup.gif"/></a></td>
</tr>
</table>
<br>

<?php
		$cache = new Cache('engine/cache/news');
		if ($cache->hasExpired()) {
			$news = fetchAllNews();
			
			$cache->setContent($news);
			$cache->save();
		} else {
			$news = $cache->load();
		}

		if ($news) {
			
			$total_news = count($news);
			$row_news = $total_news / $config['news_per_page'];
			$page_amount = ceil($total_news / $config['news_per_page']);
			$current = $config['news_per_page'] * $page;

			function TransformToBBCode($string) {
				$tags = array(
					'[center]{$1}[/center]' => '<center>$1</center>',
					'[b]{$1}[/b]' => '<b>$1</b>',
					'[size={$1}]{$2}[/size]' => '<font size="$1">$2</font>',
					'[img]{$1}[/img]'    => '<a href="$1" target="_BLANK"><img src="$1" alt="image" style="width: 100%"></a>',
					'[link]{$1}[/link]'    => '<a href="$1">$1</a>',
					'[link={$1}]{$2}[/link]'   => '<a href="$1" target="_BLANK">$2</a>',
					'[color={$1}]{$2}[/color]' => '<font color="$1">$2</font>',
					'[*]{$1}[/*]' => '<li>$1</li>',
				);
				foreach ($tags as $tag => $value) {
					$code = preg_replace('/placeholder([0-9]+)/', '(.*?)', preg_quote(preg_replace('/\{\$([0-9]+)\}/', 'placeholder$1', $tag), '/'));
					$string = preg_replace('/'.$code.'/i', $value, $string);
				}
				return $string;
			}
			
			echo '<table><div id="news">';
			for ($i = $current; $i < $current + $config['news_per_page']; $i++) {
				if (isset($news[$i])) {
					?>
					<tr><td class="zheadline" colspan="2">&nbsp;&nbsp;<span class="znewsdate"><?php echo date('D, j M Y', $news[$i]['date']); ?> - </span><b><?php echo TransformToBBCode($news[$i]['title']); ?></td></tr>
					<tr><td class="znewsbody" colspan="2"><?php echo TransformToBBCode(nl2br($news[$i]['text'])); ?></td></tr>
					<tr><td class="znewsdate"><span style="color:#5a2800">&nbsp;&nbsp;by </span><a href="characterprofile.php?name=<?php echo $news[$i]['name']; ?>"><?php echo $news[$i]['name']; ?></a></td><td class="znewsdate"></td></tr>
					<tr><td class="znewsdate" colspan="2"></td></tr>
					<?php
				} 
			}
			echo '</div></table>';
			
			echo '<select name="newspage" onchange="location = this.options[this.selectedIndex].value;">';
			for ($i = 0; $i < $page_amount; $i++) {

				if ($i == $page) {

					echo '<option value="index.php?page='.$i.'" selected>Page '.$i.'</option>';

				} else {

					echo '<option value="index.php?page='.$i.'">Page '.$i.'</option>';
				}
			}
			echo '</select>';
			
		} else {
			echo '<p>No news exist.</p>';
		}
?>
