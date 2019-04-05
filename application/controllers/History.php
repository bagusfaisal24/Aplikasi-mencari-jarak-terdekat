<?php
defined('BASEPATH') OR exit('No direct script access allowed');

Class History extends CI_Controller {

	function __construct(){
		parent::__construct();
        $this->load->model('m_history');
		$this->load->view('welcome_message');
        if ($this->session->userdata('auth_admin') != true) {
                 redirect('login');
             }
    }
    
    public function hasilcari(){
        $data['data'] = $this->m_history->gethistory();
        $this->load->view('history',$data);
        // var_dump($data);
    }

	public function index(){
        $mulai = $_POST['mulai'];
        $tengah = $_POST['tengah'];
        $akhir = $_POST['mulai'];

        $rute = "Dari ".$mulai." -> ";
        foreach ($tengah as $value) {
            $rute .= $value." -> ";
        }
        $rute .= $akhir." (SELESAI)";

        $data['rute'] = $rute;
        $this->m_history->addData($data);
    }
}