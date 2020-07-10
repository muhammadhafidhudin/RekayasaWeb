<?php 

class M_data extends CI_Model{
	public function data_dosen(){
		$query = $this->db->query("SELECT *FROM tb_dosen");
		return $query->result();
	}

	public function data_mahasiswa(){
		$query = $this->db->get('tb_mahasiswa');
		return $query->result();
	}
	public function tambah_mahasiswa(){
		$query = $this->db->query("INSERT INTO tb_dosen VALUES '$id','$nama','$semester','$email'");
		return $query->result();
	}

}

?>
