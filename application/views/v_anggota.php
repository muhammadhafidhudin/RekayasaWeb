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
  <!-- this for nvbar -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark" style="margin:34px 0;">
    

    <div class="collapse navbar-collapse" id="navb">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item">
          <a class="nav-link disabled" href="javascript:void(0)"><?php echo $this->session->userdata('nama')?></a>
        </li>
      </ul>
      <br><br>
      <form class="form-inline my-2 my-lg-0">
        <a href="<?php echo site_url('login/logout')?>" class="btn btn-success my-2 my-sm-0" type="button">Logout</a>
      </form>
    </div>
  </nav>
  <!-- this for nvbar -->


  <h2>Data Anggota BPKP</h2> 
<table class="table table-striped">
    <thead>
      <tr>
        <th>No</th>
        <th>Nama</th>
        <th>Nomer Hp</th>
        <th>Alamat</th>
        <th>Email</th>
      </tr>
    </thead>
    <tbody>
		<?php $no = 1; foreach($anggota as $data):?>
      <tr>
        <td><?= $no?></td>
        <td><?= $data->nama?></td>
        <td><?= $data->hp?></td>
        <td><?= $data->alamat?></td>
        <td><?= $data->email?></td>
        <td>
        </td>
	  </tr>
	  <?php $no++;?>
	  <?php endforeach?>
    </tbody>
  </table>
  <a href="<?= base_url('anggota/tambah');?>" class="btn btn-success" style="margin-bottom: 10px" bgcolor="blue">Tambah Data</a>
  <br>
  <h2><?php echo "Jadwal Kegiatan" ?></h2>         
  <table class="table table-striped">
    <thead>
      <tr>
        <th>No</th>
        <th>Nama Kegiatan</th>
        <th>Tanggal</th>
        <th>Jam</th>
        <th>Lokasi</th>
      </tr>
    </thead>
    <tbody>
    <?php $no = 0;?>
    <?php foreach($data_kegiatan as $data):?>
    <?php $no++;?>
      <tr>
        <td><?php echo $no?></td>
        <td><?php echo $data->namakegiatan?></td>
        <td><?php echo $data->tanggal?></td>
        <td><?php echo $data->jam?></td>
        <td><?php echo $data->lokasi?></td>
    </tr>
    <?php endforeach?>
    </tbody>
  </table>
</div>
</body>
</html>