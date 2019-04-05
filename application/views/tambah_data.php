<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
    <link type="text/css" rel="stylesheet" href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css">
  </head>
  <body>
    <?php
          $no = 1;
    ?>
      <div class="container">
      <div class="row">
        <div class="col-md-9">

        </div>

        <div class="col-md-3">

<button type="button" class="btn btn-success pull-right" data-toggle="modal" style="margin-top:10px;" data-target="#myModal"><i class="fa fa-plus"></i> Tambah Data</button>

        </div>
      </div>
        <hr>
        <table class="table table-striped table-hover " id="data">
            <thead>
                <tr>
                    <th scope="col">No</th>
                    <th scope="col">Nama Sekolah</th>
                    <th scope="col">Latitude</th>
                    <th scope="col">Longitude</th>
                    <th scope="col">Alamat</th>
                    <th scope="col">Aksi</th>
                    
                </tr>
            </thead>
            <tbody>
            <?php foreach($sekolah as $row){ ?>
                <tr>
                    <th scope="row"><?php echo $no; ?></th>
                    <td><?php echo $row['nama_sekolah']; ?></td>
                    <td><?php echo $row['latitude']; ?></td>
                    <td><?php echo $row['longitude']; ?></td> 
                    <td><?php echo $row['alamat']; ?></td> 
                    <td>
                    <a href="<?php echo site_url('Welcome/delete/'.$row['id']);?>" class="btn btn-sm btn-danger" onclick="return confirm('Yakin Ingin Menghapus ?')"><i class="fa fa-trash"></i> Hapus </a>
                   <a href="<?php echo site_url('Welcome/update/'.$row['id']);?>" class="btn btn-sm btn-primary"><i class="fa fa-edit"></i> Edit </a>
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

<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">

    <div class="modal-content">
  
      <div class="modal-header">
        <h4 class="modal-title" id="myModalLabel">Form Input Data</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      </div>

    <div class="modal-body">
  <form class="form-horizontal" method="post" action="<?php echo base_url();?>/Welcome/add/">
      <fieldset>
         

      <div class="form-group">
          <div class="col-lg-6">
              <label class="control-label" for="inputSmall">Nama Sekolah</label>
              <input type="text" name="nama_sekolah" class="form-control input"  required=" id="inputSmall">
          </div>
      </div>

      <div class="form-group">
          <div class="col-lg-6">
              <label class="control-label" for="inputSmall">Latitude</label>
              <input type="text" name="latitude" class="form-control input"  required="" id="inputSmall">
          </div>
      </div>
      
      <div class="form-group">
          <div class="col-lg-6">
              <label class="control-label" for="inputSmall">Longitude</label>
              <input type="text" name="longitude" class="form-control input"  required="" id="inputSmall">
          </div>
      </div>
      <div class="form-group">
          <div class="col-lg-6">
              <label class="control-label" for="inputSmall">Alamat</label>
              <textarea rows="4" cols="50" name="alamat"></textarea>
              
          </div>
      </div>  
        <div class="modal-footer">
          <button type="reset" class="btn btn-default" data-dismiss="modal">Close</button>
          <button type="submit" class="btn btn-primary">Simpan</button>
        </div>
      </div>
    
      </fieldset>
    </form>
  </div>
  
</html>
