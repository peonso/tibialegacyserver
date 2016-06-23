<?php
require_once 'engine/init.php';
include 'layout_admin/overall/header.php'; 
protect_page();
admin_only($user_data);

$orders = mysql_select_multi('SELECT * FROM `znote_shop_orders` ORDER BY `id` DESC;');
$order_types = array(1 => 'Item', 2 => 'Premium Days', 3 => 'Gender Change', 4 => 'Name Change', 5 => 'Custom');
$items = getItemList();
?>
<h2>Shop</h2>

<h3>Pending Orders</h3>
<p>These are pending orders, like items bought, but not received or used yet.</p>
<table class="table table-striped table-hover">
	<tr>
		<th>Id</th>
		<th>Account id</th>
		<th>Account name</th>
		<th>Type</th>
		<th>Item</th>
		<th>Count</th>
		<th>Date</th>
	</tr>	
	<?php foreach(($orders ? $orders : array()) as $order) { ?>
	<tr>
		<td><?php echo $order['id']; ?></td>
		<td><?php echo $order['account_id']; ?></td>
		<td><strong><?php echo user_account_id_from_name($order['account_id']); ?></strong></td>
		<td><?php echo $order_types[$order['type']] ?></td>
		<td><?php echo '(' . $order['itemid'] . ') ', (isset($items[$order['itemid']])) ? $items[$order['itemid']] : ''; ?></td>
		<td><?php echo $order['count'] ?></td>
		<td><?php echo date('Y/m/d H:i', $order['time']) ?></td>
	</tr>
	<?php } ?>
</table>

<?php
$orders = mysql_select_multi("SELECT `id`, `account_id`, `type`, `itemid`, `count`, `points`, `time` FROM `znote_shop_logs` ORDER BY `id` DESC;");
?>
<h3>Order History</h3>
<p>This list contains all transactions bought in the shop.</p>
<table class="table table-striped table-hover">
	<tr>
		<th>Id</th>
		<th>Account id</th>
		<th>Account name</th>
		<th>Type</th>
		<th>Item</th>
		<th>Count</th>
		<th>Points</th>
		<th>Date</th>
	</tr>
	<?php foreach(($orders ? $orders : array()) as $order) { ?>
	<tr>
		<td><?php echo $order['id']; ?></td>
		<td><?php echo $order['account_id']; ?></td>
		<td><strong><?php echo user_account_id_from_name($order['account_id']); ?></strong></td>
		<td><?php echo $order_types[$order['type']] ?></td>
		<td><?php echo '(' . $order['itemid'] . ') ', (isset($items[$order['itemid']])) ? $items[$order['itemid']] : ''; ?></td>
		<td><?php echo $order['count'] ?></td>
		<td><?php echo $order['points'] ?></td>
		<td><?php echo getClock($order['time'], true, false); ?></td>
	</tr>
	<?php } ?>
</table>
<?php
include 'layout_admin/overall/footer.php';
?>