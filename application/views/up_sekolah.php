<div class="container">
<div class="row">
    <div class="col-md-6">
        <form method="POST" action="<?php echo base_url(); ?>/Welcome/update/<?php echo $id; ?>">
            <h3 style="margin-top:10px;">Form Ubah Data</h3></br>
            <div class="form-group">
                <label>Nama Sekolah</label>
                <input type="text" class="form-control" name="nama_sekolah"  value="<?php echo $sekolah['nama_sekolah']; ?>"  required>
            </div>

            <div class="form-group">
                <label>Latitude</label>
                <input type="text" class="form-control" name="latitude" value="<?php echo $sekolah['latitude']; ?>" required>
            </div>

            <div class="form-group">
                <label>Longitude</label>
                <input type="text" class="form-control" name="longitude"  value="<?php echo $sekolah['longitude']; ?>" required>
            </div>
            <div class="form-group">
                <label>Alamat</label>
                <textarea class="form-control" name="alamat"><?php echo $sekolah['alamat']; ?></textarea>
            </div>
            <input type="submit" class="btn btn-primary" name="submit" value="Submit">
        </form>
    </div>
</div>
</div>