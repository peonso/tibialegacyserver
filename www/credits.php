<?php require_once 'engine/init.php'; include 'layout/overall/header.php'; ?>

<br><table class="blackline">
	<tr>
		<td><img src="layout/images/blank.gif"></td>
	</tr>
</table>
<div class="titleheader">
	<h1>Credits</h1>
</div>
<table class="blackline">
	<tr>
		<td><img src="layout/images/blank.gif"></td>
	</tr>
</table><br>

	<ul>
        <li><a href="#cip">CipSoft</a></li>
        <li><a href="#ot">OpenTibia Team</a></li>
        <li><a href="#othire">OTHire</a></li>
        <li><a href="#znote">ZnoteAAC</a></li>
        <li><a href="#others">Others</a></li>
		<li><a href="#tls">Tibia Legacy Server</a></li>
	</ul>
	<br>
	
	<!-- CipSoft credits -->
	<h1><a class="anchors" name="cip"></a>.:: CipSoft ::.</h1>
	Tibia Legacy Server objective is to pay tribute to the awesome game created by Guido Lübke, Stephan Payer, Ulrich Schlott and Stephan Vogler, in the year of 1997, <a href="http://tibia.com/">Tibia</a>, a 2D MMORPG. In the year of 2001, they created a company to run it, <a href="https://www.cipsoft.com/index.php/en/">CipSoft</a>. TLS is based in their game, trying to mimic the incarnation of 2006, version 7.72.
	<br><br><!-- end CipSoft credits -->
	
	<!-- OTServ Team credits -->
	<h1><a class="anchors" name="ot"></a>.:: OpenTibia Team ::.</h1>
	OpenTibia is a project from years and years ago, and the files used to run TLS are based on their work, the list of contributors is extensive. You can find more information about it in the current repository in GitHub, <a href="https://github.com/opentibia/server">here</a>.<br>
	<br><strong>Project Admins:</strong> Iryont/iryont, marksamman, Remere/hjnilsson.
	<br><strong>Active Developers:</strong> assassina, hackerpotato, kilouco/aseverino.
	<br><strong>Inactive Developers:</strong> SimOne/xeroc81, Tliff, Spin, Shi'Voc, Nostradamus, rafaelhamdan, Acrimon, Haktivex, Fandoras, Reebow, Privateer, Aire, Anstice, Arkold Thos, bruno, Heliton, Jiddo, Winghawk, Blackdemon, FightingElf, Gecko, Pedro B., Matkus, OsoSangre, Smygflik, Snack, TiMMit, Primer, j4K3xBl4sT3r, Wrzasq, nfries88, the fike, Vitor, Decar, Torvik, GriZzm0, Stormer, Mackan, Tythor Zeth, Tliff, Yorick, Pekay, Nuker, verkon, Evo.
    <br><strong>Contributors:</strong> adakraz, Bennet, Dored, Pietia10, Quintinon, Fusion666, Joffily, Ispiro, slawkens, Umby, Rogier1337, pajlada, Fernando Coutinho, Sapphire, Lithium, Proglin, LooS!k, Jason, nicaw, Xidaozu, The Chaos, Junkfood, Beet Da Brat, honux, Ruly, Steeled Blade, Xera, BurnMc, Cayan, BlackKnight, Thomac, mike2k1, SuperGillis, wik, Tijn, X_Dead_X, Skulldiggers, NeWsOfTzzz, kijano, Rex, DimiGhost, dark-bart, DeathClaw, Steelberg, Jero, TechnoPirate, Mozila, Thax, Ashganek, RicarDog, ZeroCoolz, K-Zodron, gerax, Urmel, Cip, wasabi, Jovial, Yurez, Rebell, Ilidian, blaxskull, dabobath, Mindrage, Eventide, MedionAktiver, Czepek, krt, mmb, Iyashii, Mazen, Figgi, Rith, Rizz, Vinny, YobaK, Nexoz, Ferrus.
	
	<?php if(function_exists('curl_version')) { ?>
	<table class="table table-striped table-hover">
		<tr><th colspan="6">Contributors</th></tr>
		<?php 
			$curl = curl_init();
			curl_setopt($curl, CURLOPT_URL, 'https://api.github.com/repos/opentibia/server/contributors');
			curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
			curl_setopt($curl, CURLOPT_USERAGENT, 'ZnoteAAC'); // GitHub requires user agent header.
			curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);
			$contributors = json_decode(curl_exec($curl), true); // Sorted by contributions.

			$CONTRIBUTORS_PER_ROW = 6;

			$i = 0;
			$first_container = true;
			$div_closed = true;
			foreach($contributors as $contributor)
			{
					$new_div = ctype_digit((String)($i / $CONTRIBUTORS_PER_ROW));

					if($new_div) {
						if(!$first_container)
							echo '</tr>';

						echo '<tr>';
						$div_closed = false;
						$first_container = false;
					}

					echo '<td width="16%">
							<a href="' . $contributor['html_url'] . '">
								<img src="' . $contributor['avatar_url'] . 'size=80" style="width: 60px; height: 60px" /><br/>
								<span>' . $contributor['login'] . '</span>
							</a>
						</td>';
					$i++;
			}
			if(!$div_closed)
				echo '</tr>';
		 ?>
	</table>
	<?php } ?>
	
	<br><br><!-- end OTServ Team credits -->
	
	<!-- OTHire credits -->
	<h1><a class="anchors" name="othire"></a>.:: OTHire ::.</h1>
	In 2014, Ezzz/<a href="https://github.com/TwistedScorpio">TwistedScorpio</a>, converted OTServ branch to protocol 7.72. It's his modified engine that we are using to run Tibia Legacy Server. Original OtLand thread <a href="https://otland.net/threads/7-72-othire-0-0-1b-based-in-otserv-trunk-latest.212153/">here</a>, GitHub repository <a href="https://github.com/TwistedScorpio/OTHire/">here</a>.
	
	<?php if(function_exists('curl_version')) { ?>
	<table class="table table-striped table-hover">
		<tr><th colspan="6">Contributors</th></tr>
		<?php 
			$curl = curl_init();
			curl_setopt($curl, CURLOPT_URL, 'https://api.github.com/repos/TwistedScorpio/OTHire/contributors');
			curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
			curl_setopt($curl, CURLOPT_USERAGENT, 'ZnoteAAC'); // GitHub requires user agent header.
			curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);
			$contributors = json_decode(curl_exec($curl), true); // Sorted by contributions.

			$CONTRIBUTORS_PER_ROW = 6;

			$i = 0;
			$first_container = true;
			$div_closed = true;
			foreach($contributors as $contributor)
			{
					$new_div = ctype_digit((String)($i / $CONTRIBUTORS_PER_ROW));

					if($new_div) {
						if(!$first_container)
							echo '</tr>';

						echo '<tr>';
						$div_closed = false;
						$first_container = false;
					}

					echo '<td width="16%">
							<a href="' . $contributor['html_url'] . '">
								<img src="' . $contributor['avatar_url'] . 'size=80" style="width: 60px; height: 60px" /><br/>
								<span>' . $contributor['login'] . '</span>
							</a>
						</td>';
					$i++;
			}
			if(!$div_closed)
				echo '</tr>';
		 ?>
	</table>
	<?php } ?>
	
	<p>And also:</p>
	<br><a href="https://github.com/babymannen">babymannen</a>
	<br><a href="https://otland.net/members/nottinghster.3619/">Nottinghster</a>
	
	<br><br><!-- end OTHire credits --> 


	<!-- ZnoteAAC credits -->
	<h1><a class="anchors" name="znote"></a>.:: Znote AAC ::.</h1>
	<p>This website is powered by the ZnoteAAC engine. ZnoteAAC 1.5, revision from 24/07/2014, was converted to OTHire, GitHub <a href="https://github.com/peonso/ZnoteOTHire">here</a>. Original ZnoteAAC GitHub repository <a href="https://github.com/Znote/ZnoteAAC">here</a>.</p>

	<?php if(function_exists('curl_version')) { ?>
	<table class="table table-striped table-hover">
		<tr><th colspan="6">Contributors</th></tr>
		<?php 
			$curl = curl_init();
			curl_setopt($curl, CURLOPT_URL, 'https://api.github.com/repos/Znote/ZnoteAAC/contributors');
			curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
			curl_setopt($curl, CURLOPT_USERAGENT, 'ZnoteAAC'); // GitHub requires user agent header.
			curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);
			$contributors = json_decode(curl_exec($curl), true); // Sorted by contributions.

			$CONTRIBUTORS_PER_ROW = 6;

			$i = 0;
			$first_container = true;
			$div_closed = true;
			foreach($contributors as $contributor)
			{
					$new_div = ctype_digit((String)($i / $CONTRIBUTORS_PER_ROW));

					if($new_div) {
						if(!$first_container)
							echo '</tr>';

						echo '<tr>';
						$div_closed = false;
						$first_container = false;
					}

					echo '<td width="16%">
							<a href="' . $contributor['html_url'] . '">
								<img src="' . $contributor['avatar_url'] . 'size=80" style="width: 60px; height: 60px" /><br/>
								<span>' . $contributor['login'] . '</span>
							</a>
						</td>';
					$i++;
			}
			if(!$div_closed)
				echo '</tr>';
		 ?>
	</table>
	<?php } ?>
	
	<p>And also:</p>
	<a href="http://otland.net/members/chris.13882/">Chris</a> - PHP OOP file samples, testing, bugfixing.
	<br><a href="http://otland.net/members/kiwi-dan.152/">Kiwi Dan</a> - Researching TFS 0.2 for me, participation in developement.
	<br><a href="http://otland.net/members/amoaz.26626/">Amoaz</a> - Pentesting and security tips.
	<br><a href="http://otland.net/members/evan.40401/">Evan</a>, <a href="http://otland.net/members/gremlee.12075/">Gremlee</a> - Researching TFS 0.3, constructive feedback, suggestion and participation.
	<br><a href="http://otland.net/members/att3.98289/">ATT3</a> - Reporting and fixing bugs, TFS 1.0 research.
	<br><a href="http://otland.net/members/mark.1/">Mark</a> - Old repository, TFS distributions which this AAC works against.
	<br><a href="https://github.com/tedbro">Tedbro</a>, <a href="https://github.com/exura">Exura</a>, <a href="https://github.com/PrinterLUA">PrinterLUA</a> - Reporting bugs.

	<br><br><!-- end ZnoteAAC credits -->
	
	<!-- Others credits -->
	<h1><a class="anchors" name="others"></a>.:: Others ::.</h1>
	Some notable mentions.<br>
	<br>#1 <a href="https://otland.net/members/chris.13882/">Chris</a> is the one how ripped off old tibia.com layout.
	<br>#2 Remere/<a href="https://github.com/hjnilsson">hjnilsson</a> developed and <a href="https://github.com/Mignari">Mignari</a> is maintaining, <a href="https://github.com/hjnilsson/rme">Remere's Map Editor</a>, an imprescindible tool to make it all possible.
	<br>#3 Leaked 7.7 files, <a href="https://otland.net/threads/realots-7-7-cipsoft-files-virgin.244562/">OtLand thread</a>.
	<br>#4 People that made scripts and compilied datapacks and worked on it, as <a href="https://otland.net/members/nottinghster.3619/">Nottinghster</a>. The Datapacks: <a href="https://otland.net/threads/7-6-tibia-old-full-release.211679/">Tibia old</a>, <a href="https://otland.net/threads/mastercores-com-7-40-complete-release.158489/">MasterCores</a>, <a href="https://otland.net/threads/yet-another-7-6-real-datapack.241055/">Yet Another</a>, <a href="https://otland.net/threads/free-full-reamap-datapack-7-6-7-7-otx.238492/">Free Full ReaMap</a>, <a href="https://otland.net/threads/data-pack-7-6-avesta-real-map-quests.201508">Datapack Avesta</a>.
	<br><br><!-- end Others credits -->
	
	<!-- TLS credits -->
	<h1><a class="anchors" name="tls"></a>.:: Tibia Legacy Server ::.</h1>
	Tibia Legacy Server is a compilation of files and a lot of work done by Peonso (<a href="https://github.com/Peonso">GitHub</a>, <a href="https://otland.net/members/peonso.5289/">Otland</a>). The point is to merge both OTHire and ZnoteAAC to mimic Tibia 7.72 gameplay, grouping files from datapacks made available by the community, a website template, and a lot more. GitHub repository <a href="https://github.com/Peonso/tibialegacyserver">here</a>.
	<br><br><!-- end TLS credits -->

<?php include 'layout/overall/footer.php'; ?>
