<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
	<?php foreach ($anggota as $data) { ?>
		<form method=" post" action="<?= base_url('edit_anggota');?>">
		<input type="hidden" name="id" value="<?= $data->id_anggota; ?>">
  <h2>Tambah Data Anggota</h2>
  <hr style="height:1.5px;border-width:0;color:gray;background-color:gray">
  <form>
    <div class="form-group">
      <label>Name</label>
      <input type="text" name="nama" class="form-control" value="<?= $data->nama;?>">
    </div>
    <div class="form-group">
      <label>No.Hp</label>
      <input type="text" name="hp" class="form-control" value="<?= $data->hp;?>">
    </div>
    <div class="form-group">
      <label>Alamat</label>
      <input type="text" name="alamat" class="form-control" value="<?= $data->alamat;?>">
    </div>
    <div class="form-group">
      <label>Email</label>
      <input type="text" name="email" class="form-control" value="<?= $data->email;?>">
    </div>
    <button type="submit" class="btn btn-primary">Update</button>
    <a href="<?= base_url('');?>" class="btn btn-warning">Batal</a>
  </form>
<?php }?>

</div>
</body>
</html>
