<?php 
class M_sekolah extends CI_Model{
    public function __construct(){
        parent::__construct();
    }

  function getsekolah(){
        $data = $this->db->query("SELECT * FROM sekolah");
        return $data->result_array();
      }

  function addData($data){
        $this->db->insert('sekolah',$data);
      }

  function delete($id){
    $this->db->where('id',$id);
        $this->db->delete('sekolah');
      }   

   function update($id) {
        $nama_sekolah= $this->input->post('nama_sekolah');
        $lati= $this->input->post('latitude');
        $longi= $this->input->post('longitude');
        $alamat= $this->input->post('alamat');

        $data = array (
            'nama_sekolah' => $nama_sekolah,
            'latitude'=>$lati,
            'longitude'=>$longi,
            'alamat'=>$alamat
        );
        $this->db->where('id', $id);
        $this->db->update('sekolah', $data);
    }

   function getById($id) {
      $sql = "SELECT * FROM `sekolah` WHERE `id` = '".$id."'";
      $data = $this->db->query($sql);
      return $data->result_array();
    }
   }

 ?>