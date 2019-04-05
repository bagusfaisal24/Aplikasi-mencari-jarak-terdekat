<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {
		var $auth_admin;

	function __construct(){
		parent::__construct();
		$this->load->model('m_sekolah');
		$this->load->model('m_admin');

		$this->auth_admin = $this->session->userdata('auth_admin');
	}

	public function index()
	{
		$this->pros();
	}

	public function pros(){
		if ($this->auth_admin==TRUE) {
		  redirect('Welcome/Index');
		
		}else{
			if($this->input->post('submit')){
			$username = $this->input->post('username');
			$password = md5($this->input->post('password'));

			if ($this->m_admin->auth($username, $password ) == true) {
				  $row = $this->m_admin->set($username, $password)->row();
				
						$data = array(
						// 'id_pengguna'=>$row->$pengguna,
						'user' => $username,
						'nama' => $row->nama,
						'auth_admin' => true);
						// var_dump($data);
						$this->session->set_userdata($data);
						  redirect('Welcome/index');
				}else{
					$notif = 'Username / Password tidak cocok';
					$this->session->set_flashdata('type','danger');
					$this->session->set_flashdata('notif', $notif);
					redirect('login/pros');
				}
			}
			$this->load->view('login');
		}
		
	}

	function logout(){
		$this->session->sess_destroy();
		redirect(base_url('login'));
	}
}