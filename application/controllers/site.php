<?php

class Site extends CI_Controller {
	
	function index() {
		
		$data;
		
		$this->load->model('simple_model');
		$data['control'] = $this->simple_model->simpleurl();
	
		# Create variable from multidimensional array to make more accesable. 
		$obj = $data['control'];	
		
		if(!$obj->active) {
			show_404('/this_page_was_not_found', FALSE);
		}
		
		if($obj->premissions){
			$is_logged_in = $this->session->userdata('is_logged_in');
			if(!isset($is_logged_in) || $is_logged_in != true) {
				redirect('portal');
			}
		}
		
		# Check to see if they are using a mobile device
		if($this->agent->is_mobile()){
			if($this->agent->mobile() == 'iPad') {
		    	$data['mobile'] = 'Tablet';
		    }else{
				$data['mobile'] = 'Phone';
			}
		}else{
			$data['mobile'] = 'Desktop';
		}
		
		# Check to see if this is a development enviroment
		if (strpos(base_url() ,'http://localhost') !== false) {
		    $data['dev'] = true;
		}else{
			$data['dev'] = false;
		}
		
		# Record page view data
		$this->load->model('Data_model');
		$segment = mysql_real_escape_string(strtolower($this->uri->segment(1)));
		$identifier = mysql_real_escape_string(strtolower($this->uri->segment(2)));
		$this->Data_model->views($segment, $identifier);
		
		# Declare API Key
		if(!$obj->premissions){
			$_SERVER['API_KEY'] = $this->config->item('api_key');
		}
		
		// Verify if a model is associated with this item.
		if($obj->model) {
			$models = explode(" ", $obj->function);
			$model = $obj->model;
			$this->load->model($model);
			
			foreach($models as $m){
				// Create variables to make more accesable. 
				$function = $m;
				$data["data"] = $this->$model->$function(null, null);
			}
		}
		
		// Compile back into a format that codeigniter is familiar with.
		$data['template'] = $obj->template;
		
		// Load Templates
		$this->load->view('sections/template', $data);
	}
	
}


/* End of file site.php */
/* Location: ./application/controllers/site.php */