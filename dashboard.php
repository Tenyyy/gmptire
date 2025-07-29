<html>

	<?php $page = 'dashboard'; include('../include/header.php');?>
	<?php include('../include/navbar.php');?>
	<?php include('../database/db.php');?> 
	<link href="../css/dashboard.css" rel="stylesheet" type="text/css" />	
	<body>
	<div class="container">
		<div class="row dashboard">
			<div class="col-sm-12">Dashboard</div>
		</div>
		<div class="row analytics" >
			<div class="col-sm-4">
				<div class="card-group">
					<div class="card">
							<div class="card-body">
								<img src="../img/tire.png" class="col-sm-3" alt="" id="icon">
								<?php 
								$sql = "SELECT * FROM products";
								if ($result=mysqli_query($conn,$sql)) {
   							 	$rowcount=mysqli_num_rows($result);}?>
								<p class="card-text"><?php echo "<span id='supplier'> $rowcount </span>"  . "<br>Products"?></p>
							</div>
					</div>
				</div>
			</div>

			
			<div class="col-sm-4">
				<div class="card-group">
					<div class="card">
						<div class="card-body">
								<img src="../img/user.png" class="col-sm-3" alt="" id="icon">
							
							<?php 
								$Sqll = "SELECT * FROM clients";
								if ($Resultt=mysqli_query($conn,$Sqll)) {
								$Rowcounter=mysqli_num_rows($Resultt);}
							?>
							<p class="card-text"><?php echo "<span id='supplier'> $Rowcounter </span>"  . "<br>Clients"?></p>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="row orders" >
			<div class="col-sm-6">
			</div>

			
		</div>
		
	</div>
	</body>
	<script>
	$(document).ready(function () {
		$('#recent_clientorder').DataTable();
		$('#recent_purchaseorder').DataTable();
		
	});
	var table = $('#recent_clientorder').DataTable({
    pageLength : 3,
    lengthMenu: [[3], [3]]
  })
  	var potable = $('#recent_purchaseorder').DataTable({
    pageLength : 3,
    lengthMenu: [[3], [3]]
  })
	</script>
</html>