<?php 
class M_history extends CI_Model{
    public function __construct(){
        parent::__construct();
    }

	function gethistory(){
	      $data = $this->db->query("SELECT * FROM history");
	      return $data->result_array();
	    }

	function addData($data){
	      $data = $this->db->query("INSERT INTO history (rute) VALUES ('".$data['rute']."')");
    }
}
 ?>