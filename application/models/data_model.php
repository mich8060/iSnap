<?php

class Data_model extends CI_Model {
	
	public function views($segment, $identifier) {

		if($segment){
			if($identifier){
				$page = $segment.'/'.$identifier;
			}else{
				$page = $segment;
			}
		}else{
			$page = "home";
		}

		$ip = $this->input->ip_address(); 
		$agent = $this->input->user_agent();
		
		$this->db->select('*');
		$this->db->from('unique_views');
		$this->db->where('page', $page);
		$this->db->where('ip_address', $ip);
		$query = $this->db->get();
		
		$data = array(
		   	'page' 			=> $page,
		   	'ip_address' 	=> $ip,
		   	'agent' 		=> $agent
		);
		
		if($identifier != "js"){
			if(!$query->num_rows()){
				$this->db->insert('unique_views', $data);
			}

			$this->db->insert('views', $data);
		}

	}
	
}

/* End of file data_model.php */
/* Location: ./application/controllers/data_model.php */