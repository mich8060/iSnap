<?php

class Misc_model extends CI_Model {
	
	function heart() {
		
		$data = array(
			'test'	=>	"Hello World",
		);
		
		header("Access-Control-Allow-Orgin: *");
		header("Access-Control-Allow-Methods: *");
		header("Content-Type: application/json");
		echo json_encode($data);
	}
	
}

/* End of file misc_model.php */
/* Location: ./application/controllers/misc_model.php */