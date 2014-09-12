<?php

class Forms extends CI_Controller {
	
	public function index(){
		$form = $this->uri->segment(2);
		
		switch ($form) {
			case "snaps":
				$obj = $this->clean($_POST);
				$this->load->model("snaps_model");
				$this->snaps_model->add($obj);
		        break;
			case "signin":
				$obj = $this->clean($_POST);
				$this->load->model("signin_model");
				$this->signin_model->validate($obj);
				break;
			case "signout":
				$this->load->model("signin_model");
				$this->signin_model->logout();
				break;
			case "heart":
				$this->load->model("misc_model");
				$this->misc_model->heart();
				break; 
		    default:
				show_404('/this_page_was_not_found', FALSE);
				break;
		}
	}
	
	private function clean($obj){
		$cleaned = Array();
		foreach ($obj as $key => $value) {
			$cleaned[$key] = strip_tags(htmlspecialchars(trim( $value)));
		}
		return $cleaned;
	}
	
}

/* End of file forms.php */
/* Location: ./application/controllers/forms.php */