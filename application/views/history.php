<!DOCTYPE html>
<html>
<head>
	<title></title>
	<script type="text/javascript" src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
    <link type="text/css" rel="stylesheet" href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css">
</head>
<body>
<div class="container">

	<hr>
	<table class="table table-striped table-hover " id="data">
		<thead>
			<tr>
				<th scope="col">No</th>
				<th scope="col">Rute</th>
				<th scope="col">Tanggal dibuat</th>
			</tr>
		</thead>
		<tbody>
			<?php $no = 1; foreach($data as $row){ ?>
			<tr>
				<th scope="row">
					<?php echo $no; ?>
				</th>
				<td>
					<?php echo $row['rute']; ?>
				</td>
				<td>
					<?php echo $row['tanggal_buat']; ?>
				</td>
			</tr>
			<?php $no++; } ?>
		</tbody>
	</table>
</div>

</body>
<script type="text/javascript">
    $(document).ready(function () {
        $('#data').DataTable();
    });
  </script>
</html>
