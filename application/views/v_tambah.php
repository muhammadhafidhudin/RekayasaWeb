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

<form method="post" action="<?= base_url('anggota/tambah_data');?>">
<div class="container">
  <h2>Tambah Data Anggota</h2>
  <hr style="height:1.5px;border-width:0;color:blue;background-color:blue">
  <form>
    <div class="form-group">
      <label>Nama</label>
      <input type="text" name="nama" class="form-control">
    </div>
    <div class="form-group">
      <label>Nomer Hp</label>
      <input type="text" name="hp" class="form-control">
    </div>
    <div class="form-group">
      <label>Alamat</label>
      <input type="text" name="alamat" class="form-control">
    </div>
    <div class="form-group">
      <label>Email</label>
      <input type="text" name="email" class="form-control">
    </div>
    <button type="submit" bgcolor="blue" class="btn btn-primary">Simpan</button>
  </form>
</div>
</body>
</html>
