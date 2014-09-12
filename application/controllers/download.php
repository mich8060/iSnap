<?php

class Download extends CI_Controller {
	
	public function index(){
		$download = $this->clean($this->uri->segment(2));
		$identifier = $this->clean($this->uri->segment(3));
		$this->load->model("downloads_model");
		
		switch ($download) {
			case "photoshop":
				$this->downloads_model->photoshop($identifier);
		        break;
			case "css":	
				$this->load->model("downloads_model");
				$this->downloads_model->css($identifier);
				break;
			case "sass":	
				$this->load->model("downloads_model");
				$this->downloads_model->sass($identifier);
				break;
		    default:
				show_404('/this_page_was_not_found', FALSE);
				break;
		}
	}
	
	private function clean($obj){
		if(is_array($obj)){
			$cleaned = Array();
			foreach ($obj as $key => $value) {
				$cleaned[$key] = strip_tags(htmlspecialchars(trim($value)));
			}
			return $cleaned;
		}else{
			return strip_tags(htmlspecialchars(trim($obj)));
		}

	}
	
}

/* End of file download.php */
/* Location: ./application/controllers/download.php */