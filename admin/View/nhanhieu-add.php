
<?php
include('../Control/inc/config.php');
if(isset($_POST['form1'])) {
	$valid = 1;

    if(empty($_POST['nhanhieu'])) {
        $valid = 0;
        $error_message .= "Nhãn hiệu không được để trống<br>";
    } else {
    	// Duplicate Category checking
    	$statement = $pdo->prepare("SELECT * FROM tbl_nhanhieu WHERE id_nh=?");
    	$statement->execute(array($_POST['nhanhieu']));
    	$total = $statement->rowCount();
    	if($total)
    	{
    		$valid = 0;
        	$error_message .= "Nhãn hiệu đã tồn tại<br>";
    	}
    }

    if($valid == 1) {

		$statement = $pdo->prepare("INSERT INTO tbl_nhanhieu (nhanhieu) VALUES (?)");
		$statement->execute(array($_POST['nhanhieu']));
	
    	$success_message = 'Thêm Nhãn hiệu thành công.';
    }
}
?>

<section class="content-header">
	<div class="content-header-left">
		<h1>Thêm Nhãn hiệu</h1>
	</div>
	<div class="content-header-right">
		<a href="index.php?page=nhanhieu" class="btn btn-primary btn-sm">View All</a>
	</div>
</section>


<section class="content">

	<div class="row">
		<div class="col-md-12">

			<?php if($error_message): ?>
			<div class="callout callout-danger">
			
			<p>
			<?php echo $error_message; ?>
			</p>
			</div>
			<?php endif; ?>

			<?php if($success_message): ?>
			<div class="callout callout-success">
			
			<p><?php echo $success_message; ?></p>
			</div>
			<?php endif; ?>

			<form class="form-horizontal" action="" method="post">

				<div class="box box-info">
					<div class="box-body">
						<div class="form-group">
							<label for="" class="col-sm-2 control-label">Nhãn hiệu<span>*</span></label>
							<div class="col-sm-4">
								<input type="text" class="form-control" name="nhanhieu">
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-2 control-label"></label>
							<div class="col-sm-6">
								<button type="submit" class="btn btn-success pull-left" name="form1">Submit</button>
							</div>
						</div>
					</div>
				</div>

			</form>


		</div>
	</div>

</section>
