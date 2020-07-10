<?php

class M_anggota extends CI_Model{
	
	function data_anggota(){
		return $this->db->get('anggota');

	}
	function simpan_data($data){
		$this->db->insert('anggota',$data);
	}
		public function data_kegiatan(){
		$query = $this->db->get('kegiatan');
		return $query->result();
	}
}