<?php

class Profile_model extends CI_Model {
	
	public function find(){
		$this->db->select('*');
		$this->db->from('profile');
		$this->db->limit(1);
		$this->db->where('username',$this->uri->segment(1));
		$query = $this->db->get();

		if ($query->num_rows() > 0){
			$profile = $query->result();	
		}
		
		$this->db->select('*');
		$this->db->from('snaps');
		$this->db->where('user_id', $profile[0]->id);
		$this->db->limit(12);
		$query = $this->db->get();
		
		if ($query->num_rows() > 0){
			$snaps = $query->result();	
		}
		
		$data = array(
			"user"	=>	$profile,
			"snaps" =>	$snaps
		);
		
		return $data;
	}
	
}

/* End of file profile_model.php */
/* Location: ./application/controllers/profile_model.php */