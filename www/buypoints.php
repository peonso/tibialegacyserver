<?php require_once 'engine/init.php';
protect_page();
include 'layout/overall/header.php'; 

// Import from config:
$paypal = $config['paypal'];
$prices = $config['paypal_prices'];

if ($paypal['enabled']) {
?>
<br><table class="blackline">
	<tr>
		<td><img src="layout/images/blank.gif"></td>
	</tr>
</table>
<div class="titleheader">
	<h1>Shop</h1>
</div>
<table class="blackline">
	<tr>
		<td><img src="layout/images/blank.gif"></td>
	</tr>
</table>
<p><span style="padding-left:20px;">Buy tickets using <span style="font-weight: bold;">Paypal</span>.</span></p>
<table id="buypointsTable" class="table table-striped table-hover" style="width:70%; margin-left:15%; margin-right:15%;">
	<tr class="yellow">
		<th>Points</th>
		<th>Price</th>
		<?php if ($paypal['showBonus']) { ?>
			<th>Bonus</th>
		<?php } ?>
		<th></th>
	</tr>
		<?php
		foreach ($prices as $price => $points) {
		echo '<tr class="special">';
		echo '<td><center>'. $points .'</center></td>';
		echo '<td><center>'. $price .' '. $paypal['currency'] .'</center></td>';
		if ($paypal['showBonus']) echo '<td><center>'. calculate_discount(($paypal['points_per_currency'] * $price), $points) .' bonus</center></td>';
		?>
		<td>
			<center><form action="https://www.paypal.com/cgi-bin/webscr" method="POST">
				<input type="hidden" name="cmd" value="_xclick">
				<input type="hidden" name="business" value="<?php echo $paypal['email']; ?>">
				<input type="hidden" name="item_name" value="<?php echo $points .' shop points on '. $config['site_title']; ?>">
				<input type="hidden" name="item_number" value="1">
				<input type="hidden" name="amount" value="<?php echo $price; ?>">
				<input type="hidden" name="no_shipping" value="1">
				<input type="hidden" name="no_note" value="1">
				<input type="hidden" name="currency_code" value="<?php echo $paypal['currency']; ?>">
				<input type="hidden" name="lc" value="GB">
				<input type="hidden" name="bn" value="PP-BuyNowBF">
				<input type="hidden" name="return" value="<?php echo $paypal['success']; ?>">
				<input type="hidden" name="cancel_return" value="<?php echo $paypal['failed']; ?>">
				<input type="hidden" name="rm" value="2">
				<input type="hidden" name="notify_url" value="<?php echo $paypal['ipn']; ?>" />
				<input type="hidden" name="custom" value="<?php echo (int)$_SESSION['user_id']; ?>">
				<input type="submit" value="Purchase"  style="margin: 0px 0px -13px;">
			</form></center>
		</td>
		<?php
		echo '</tr>';
		}
		?>
</table>
<?php } ?>

<?php
if ($config['paygol']['enabled'] == true) {
?>
<!-- PayGol Form using Post method -->
<br><p><span style="padding-left:20px;">Buy tickets using <span style="font-weight: bold;">PayGol</span>.</span></p>
<?php $paygol = $config['paygol']; ?>
<p style="margin-left:2em"><?php echo $paygol['points'] ." points for " . $paygol['price'] ." ". $paygol['currency'] ."."; ?><br>
<form name="pg_frm" method="post" action="http://www.paygol.com/micropayment/paynow" >
	<input type="hidden" name="pg_serviceid" value="<?php echo $paygol['serviceID']; ?>">
	<input type="hidden" name="pg_currency" value="<?php echo $paygol['currency']; ?>">
	<input type="hidden" name="pg_name" value="<?php echo $paygol['name']; ?>">
	<input type="hidden" name="pg_custom" value="<?php echo $session_user_id; ?>">
	<input type="hidden" name="pg_price" value="<?php echo $paygol['price']; ?>">
	<input type="hidden" name="pg_return_url" value="<?php echo $paygol['returnURL']; ?>">
	<input type="hidden" name="pg_cancel_url" value="<?php echo $paygol['cancelURL']; ?>">
	<input type="image" name="pg_button" src="http://www.paygol.com/micropayment/img/buttons/150/black_en_pbm.png" border="0" alt="Make payments with PayGol: the easiest way!" title="Make payments with PayGol: the easiest way!">
</form>
</p>
<?php }

if (!$config['paypal']['enabled'] && !$config['paygol']['enabled']) echo '<h1>Buy Points system disabled.</h1><p>Sorry, this functionality is disabled.</p>';
include 'layout/overall/footer.php'; ?>