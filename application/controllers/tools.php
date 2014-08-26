<?php

class Tools extends CI_Controller {

	public function index() {
		
		$this->load->library('simple_html_dom');
		$form = $this->uri->segment(2);
		
		switch ($form) {
			case "index":		
				# Initiate Pictaculous API
				$ch = curl_init();
				$url = 'http://pictaculous.com/api/1.0/';
				$fields = array('image'=>file_get_contents($_POST['file']));
				curl_setopt($ch, CURLOPT_FOLLOWLOCATION, true);
				curl_setopt($ch, CURLOPT_HEADER, false);
				curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, false);
				curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
				curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
				curl_setopt($ch, CURLOPT_POST, true);
				curl_setopt($ch, CURLOPT_POSTFIELDS, $fields);
				curl_setopt($ch, CURLOPT_URL, $url);
				$json = curl_exec($ch);
				$json = json_decode($json);
				$colors = implode(",", $json->info->colors);
				
				# Assemble Information and send to database
				$meta = array(
					"id"			=>	$_POST['id'],
					"colors" 		=> 	$colors
				);
				
				$this->load->model('snaps_model');
				$this->snaps_model->meta($meta);
				break;
		    default:
				show_404('/this_page_was_not_found', FALSE);
				break;
		}
	}
}

/* End of file tools.php */
/* Location: ./application/controllers/tools.php */