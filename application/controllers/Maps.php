<?php
defined('BASEPATH') OR exit('No direct script access allowed');

Class Maps extends CI_Controller {

	function __construct(){
		parent::__construct();
		$this->load->model('m_sekolah');
		$this->load->view('welcome_message');
		
		if ($this->session->userdata('auth_admin') != true) {
                 redirect('login');
             }
	}

	public function index(){
		$data['data'] = $this->m_sekolah->getsekolah();
		$this->load->view('map',$data);
	}
}