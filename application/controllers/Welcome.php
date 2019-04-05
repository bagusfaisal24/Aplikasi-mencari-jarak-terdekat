<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

	function __construct(){
		parent::__construct();
		$this->load->model('m_sekolah');
		$this->load->view('welcome_message');

		if ($this->session->userdata('auth_admin') != true) {
                 redirect('login');
             }
	}

	public function index()  // function untuk menampilkan tampilan beranda
	{
		$data['sekolah'] = $this->m_sekolah->getsekolah();
	    $this->load->view('tambah_data',$data);
	}
	public function add(){				//function untuk menambah data sekolah
		$nama = $_POST['nama_sekolah'];
		$lati = $_POST['latitude'];
		$longi = $_POST['longitude'];
		$alamat = $_POST['alamat'];

		$data['nama_sekolah'] = $nama;
		$data['latitude'] = $lati;
		$data['longitude'] = $longi;
		$data['alamat'] = $alamat;

		$this->m_sekolah->addData($data);
		redirect('Welcome/index');
	}

	 public function delete($id){    // function untuk menghapus record data
      $this->m_sekolah->delete($id); 
      redirect('Welcome/index');

    }

    public function update($id){			// function untuk mengubah data
    if($this->input->post('submit')){
        $this->m_sekolah->update($id);

        redirect('Welcome/index');
    }
    $data['sekolah'] = $this->m_sekolah->getById($id)[0];
    $data['id'] = $id;
    $this->load->view('up_sekolah',$data);
  }

}
