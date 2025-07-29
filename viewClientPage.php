<html>
	<?php $page = 'viewPage'; include('../include/header.php');?>
	<?php include('../include/navbar.php');?>
	<?php include('../database/db.php');?> 
	<body>
		<div class="label clientList">Client List
			<button id="myBtn">เพิ่ม</button>
			<!-- The Modal -->
				<?php include('../include/modal_Client.php');?>
		</div>
		<table id="client_list" class="display">
			<thead>
				<tr>
					<th>ชื่อ</th>
					<th>ทะเบียนรถ</th>
					<th>รายการ</th>
					<th>Action</th>
				</tr>
			</thead>
				<tbody>
					<?php
						$sql = "SELECT * FROM clients"; //get all products
						$result = $conn->query($sql);
					?>

					<?php if ($result->num_rows > 0): ?>
						<?php while($row = $result->fetch_assoc()): ?>
							<tr>
								<td><?php echo $row["ClientName"]; ?></td>
								<td><?php echo $row["ClientPlate"]; ?></td>	
								<td><?php echo $row["ClientDesc"]; ?></td>
								<td><a onclick="return alert('Client Deleted');" href="../actions/client_delete.php?cid=<?php echo $row["ClientName"];?>" class="action delete">Delete</td>	
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
				$('#client_list').DataTable();
				} );
			</script>
			<script src="../include/modalscript.js"></script>
	</body>
	
</html>