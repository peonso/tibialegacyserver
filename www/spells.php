 <?php 
require_once 'engine/init.php'; include 'layout/overall/header.php'; ?>
<?php
if(file_exists('spell.php')) { require_once 'spell.php'; ?>
<br><table class="blackline">
	<tr>
		<td><img src="layout/images/blank.gif"></td>
	</tr>
</table>
<div class="titleheader">
	<h1>Magic</h1>
</div>
<table class="blackline">
	<tr>
		<td><img src="layout/images/blank.gif"></td>
	</tr>
</table><br>
Here you can see the list of all available spells in Tibia. Click on any spell name to get detailed information. Please adjust the search criteria below if you want to see just certain spells. Also, you can sort the spell list by any column of your choice. 
<form action='spells.php' method='post'>
    <table>
        <tr class="yellow">
            <td colspan=4><b>Spell Search</b></td></tr>
            <tr class="darkborder">
                <?php if($show_spells_groups) {
                echo'<td width=25%><b>vocation</b></td>
                    <td width=25%><b>group</b></td>
                    <td width=25%><b>type</b></td>';}
                else {
                echo'<td width=40%><b>vocation</b></td>
                    <td width=30%><b>type</b></td>';}?>
            </tr>
            <tr>
                <td valign='top'>
                    <input type='radio' name='vocation' value='vall' checked> all<br>
					<input type='radio' name='vocation' value='Master Sorcerer'> Sorcerer<br>
					<input type='radio' name='vocation' value='Elder Druid'> Druid<br>
					<input type='radio' name='vocation' value='Royal Paladin'> Paladin<br>
					<input type='radio' name='vocation' value='Elite Knight'> Knight<br>
                    <?php /*
                    foreach(config('vocations') as $id => $vocation)
                    {
                        if($id > 0)
                        {
                            echo "<input type='radio' name='vocation' value='".$vocation."'> ".$vocation."<br>";
                        }
                    }
                    */?>
                </td>
                <?php 
                if($show_spells_groups) echo"
                    <td valign='top'>
                        <input type='radio' name='_group' value='gall' checked> all<br>
                        <input type='radio' name='_group' value='Attack'> Attack<br>
                        <input type='radio' name='_group' value='Healing'> Healing<br>
						<input type='radio' name='_group' value='Summon'> Summon<br>
                        <input type='radio' name='_group' value='Supply'> Supply<br>
						<input type='radio' name='_group' value='Support'> Support</td>"; ?>
                <td valign='top'>
                    <input type='radio' name='_type' value='tall' checked> all<br>
                    <input type='radio' name='_type' value='Instant'> Instant<br>
                    <input type='radio' name='_type' value='Rune'> Rune
                </td>
            </tr>
            <tr class="darkborder">
                <td colspan='4'>sort by:
                    <select name='sort'>
                        <option value='name' selected>name
                        <option value='words'>words
                        <?php if($show_spells_groups) echo "<option value='group' >group"; ?>
                        <option value='type' >type
                        <option value='level' >exp lvl
                        <option value='mana' >mana
                    </select>
                    <input type='submit' name='Submit'>
                </td>
            </tr>
    </table>
</form>
<table>
    <tr class="yellow">
        <td width=45%><b>Name</b></td>
        <?php if($show_spells_groups) echo '<td><b>Group</b></td>'; ?>
        <td><b>Type</b></td>
        <td><b>Exp Lvl</b></td>
        <td><b>Mana</b></td>

        </span>
    </tr>

<?php 
    @$sort = $_REQUEST['sort'];
    if(!isset($sort)) $sort = 'name';
    
    @$vocation = $_REQUEST['vocation'];
    if(!isset($vocation)) $vocation = 'vall';
    
    if($show_spells_groups)
    {
        @$group = $_REQUEST['_group'];
        if(!isset($group)) $group = 'gall';
    }
    
    @$type = $_REQUEST['_type'];
    if(!isset($type)) $type = 'tall';
    
    @$premium = $_REQUEST['_premium'];
    if(!isset($premium)) $premium = 'pall';
    
    $order = array();
    foreach($spells as $key => $row)
    {
        $order[$key] = $row[$sort];
    }
    array_multisort($order, SORT_ASC, $spells);
    
    foreach($spells as $spell) { 
        if($vocation != 'vall')
        {
            if(!in_array($vocation, $spell['vocation'])) continue;
        }
        if($show_spells_groups && $group != 'gall')
        {
            if($spell['group'] != $group) continue;
        }
        if($type != 'tall')
        {
            if($spell['type'] != $type) continue;
        }
        if($premium != 'pall')
        {
            if($spell['premium'] != $premium) continue;
        }
    ?>
    <tr>
        <td><?php echo '<b>'.$spell['name'].'</b> ('.$spell['words'].')'; ?></td>
        <?php if($show_spells_groups) echo '<td>'.$spell['group'].'</td>'; ?>
        <td><?php echo $spell['type']; ?></td>
        <td><?php echo $spell['level']; ?></td>
        <td><?php echo $spell['mana']; ?></td>

    </tr>
<?php } echo '</table>'; ?> 

<?php } else { echo 'This page has not been configured yet.'; };
include 'layout/overall/footer.php'; ?>