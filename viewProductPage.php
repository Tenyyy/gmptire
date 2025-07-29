<html>
	<?php $page = 'viewPage'; include('../include/header.php');?>
	<?php include('../include/navbar.php');?>
	<?php include('../database/db.php');?> 
	<body>
		<div class="label productList">Product List
			<button id="myBtn">เพิ่ม</button>
				<!-- The Modal -->
				<?php include('../include/modal_Product.php');?>
		</div>
		<table id="product_list" class="display">
			<thead>
				<tr>
					<th>Item ID</th>
					<th>ไซส์ยาง</th>
					<th>ยี่ห้อกับชื่อ</th>
					<th>ปี</th>	
					<th>จำนวน</th>
					<th>เวลาอัพเดท</th>
					<th>Action</th>
				</tr>
			</thead>
				<tbody>
					<?php
						$sql = "SELECT * FROM products"; //get all products
						$result = $conn->query($sql);
					?>

					<?php if ($result->num_rows > 0): ?>
						<?php while($row = $result->fetch_assoc()): ?>
							<tr>
								<td><?php echo $row["ProdId"]; ?></td>
								<td><?php echo $row["ProdSize"]; ?></td>	
								<td><?php echo $row["ProdBrandName"]; ?></td>	
								<td><?php echo $row["ProdYear"]; ?></td>	
								<td><?php echo $row["ProdQuan"]; ?></td>		
								<td><?php echo $row["ProdDate"]; ?></td>	
								<td><button class="action update" 
								data-id="<?php echo $row["ProdId"]; ?>"
								data-desc="<?php echo $row["ProdSize"]; ?>"
								data-qty="<?php echo $row["ProdBrandName"]; ?>"
								data-unit="<?php echo $row["ProdYear"]; ?>"
								data-uprice="<?php echo $row["ProdQuan"]; ?>"
								
								data-expiry="<?php echo $row["ProdDate"]; ?>"
								>Update</button>
								<a onclick="return alert('Product Deleted');" href="../actions/product_delete.php?pid=<?php echo $row["ProdId"];?>" class="action delete">Delete</td>	
							</tr>
						<?php endwhile; ?>
					<?php endif; ?>

					<?php
						$conn->close();
					?>
				</tbody>
		</table>
		
	<script>
			$(document).ready( function () {
					$('#product_list').DataTable();
			});
	</script>
	<script src="../include/modalscript.js"></script>
	</body>
</html> 