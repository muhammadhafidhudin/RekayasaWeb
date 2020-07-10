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
  <h2><?php echo $judul ?></h2>         
  <table class="table table-striped">
    <br>
    <a href='view/v_tambah.php'><button type="button" class="btn btn-info">Tambah Anggota</button></a>
    <br>
    <br>
    <thead>
      <tr>
        <th>No</th>
        <th>Nama</th>
        <th>Nip</th>
        <th>Bidang Ilmu</th>
        <th>Email</th>
      </tr>
    </thead>
    <tbody>
		<?php $no = 0;?>
		<?php foreach($data_dosen as $data):?>
		<?php $no++;?>
      <tr>
        <td><?php echo $no?></td>
        <td><?php echo $data->nama?></td>
        <td><?php echo $data->niy?></td>
        <td><?php echo $data->keahlian?></td>
        <td><?php echo $data->email?></td>
	  </tr>
	  <?php endforeach?>
    </tbody>
  </table>
  <h2><?php echo "Data Mahasiswa" ?></h2>         
  <table class="table table-striped">
    <thead>
      <tr>
        <th>No</th>
        <th>Nama</th>
        <th>nim</th>
        <th>semester</th>
        <th>Email</th>
      </tr>
    </thead>
    <tbody>
		<?php $no = 0;?>
		<?php foreach($data_mahasiswa as $data):?>
		<?php $no++;?>
      <tr>
        <td><?php echo $no?></td>
        <td><?php echo $data->nama?></td>
        <td><?php echo $data->nim?></td>
        <td><?php echo $data->semester?></td>
        <td><?php echo $data->email?></td>
	  </tr>
	  <?php endforeach?>
    </tbody>
  </table>
</div>

</body>
</html>
