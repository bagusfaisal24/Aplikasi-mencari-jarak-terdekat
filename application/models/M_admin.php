<?php 
class M_admin extends CI_Model{
    public function __construct(){
        parent::__construct();
    }
	function auth($user,$pass){
         $query = $this->db->get_where('administrator', array('username' => $user, 'password' => $pass), 1, 0);

        if ($query->num_rows() == 1) {
            return TRUE;
        } else {
            return FALSE;
        }

    }
      function set($user,$pass){
        $query = $this->db->get_where('administrator', array('username' => $user, 'password' => $pass), 1, 0);
        return $query;
    }

}