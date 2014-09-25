<?php

class Signin_model extends CI_Model {
	
	public function validate($obj){
		$user = $obj['username'];
		$pass = md5($obj['password']);
		
		$this->db->select('*');
		$this->db->from('users');
		$this->db->where("username", $user);
		$this->db->where("password", $pass);
		$query = $this->db->get();
		
		if($query->num_rows() > 0) {
			$info = array(
				'username' => $user,
				'is_logged_in' => true
			);
			$this->session->set_userdata($info);
			$data = array(
				'registered'	=>	true,
			);
		}else{
			
			$data = array(
				'registered'	=>	false,
			);
		}
		
		header("Access-Control-Allow-Orgin: *");
		header("Access-Control-Allow-Methods: *");
		header("Content-Type: application/json");
		echo json_encode($data);
	}
	
	public function info(){
		$this->db->select('*');
		$this->db->from('profile');
		$this->db->limit(1);
		$this->db->where('username',$this->session->userdata('username'));
		$query = $this->db->get();
		
		if($query->num_rows() > 0) {
			foreach($query->result() as $row){
				$data[] = $row;
			}
			return $data;
		}
	}
	
	public function logout() {
		$this->session->sess_destroy();
		redirect(base_url());
	}
	
}

/* End of file signin_model.php */
/* Location: ./application/controllers/signin_model.php */