<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Listing extends CI_Controller {

	public function index(){
		$this->load->view('listing');
	}
}

/* End of file listing.php */
/* Location: ./application/controllers/listing.php */