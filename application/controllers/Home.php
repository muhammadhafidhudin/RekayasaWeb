<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Anggota extends CI_Controller {

	function __construct(){
		parent::__construct();
		$this->load->model('m_anggota');

		if($this->session->userdata('login')==null){
			redirect('login');
		}

	} 
	public function index(){
		$data = array(
			'anggota' => $this->m_anggota->data_anggota()->result(),
			'data_kegiatan' => $this->m_anggota->data_kegiatan(), 
		);
		$this->load->view('v_anggota', $data);
	}
	public function tambah(){

		$this->load->view('v_tambah');
	}
	public function tambah_data(){
		$nama = $this->input->post('nama');
		$hp = $this->input->post('hp');
		$alamat = $this->input->post('alamat');
		$email = $this->input->post('email');

		$data = array(
			'nama' => $nama,
			'hp' => $hp,
			'alamat' => $alamat,
			'email' => $email
		);
		$this->m_anggota->simpan_data($data);
		redirect('');
	}

}

