<?php

class Snaps_model extends CI_Model {
	
	function index($id) {
		$query = $this->db->query('SELECT * FROM snaps ORDER BY id DESC LIMIT 0, 12');
		if($query->num_rows() > 0) {
			foreach($query->result() as $row){
				$data[] = $row;
			}
			return $data;
		}
	}
	
	function add($obj) {
		
		$this->load->library('simple_html_dom');
		
		$img = $_POST['image'];
		$img = str_replace('data:image/png;base64,', '', $img);
		$img = str_replace(' ', '+', $img);
		$data = base64_decode($img);
		$file = 'img/snaps/' . uniqid() . '.png';
		file_put_contents($file, $data);
		
		$ch = curl_init();
		$url = 'http://pictaculous.com/api/1.0/';
		$fields = array('image'=>file_get_contents($file));
		
		# Set some default CURL options
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
		
		$raw = file_get_html($obj['url']);
		$keywords = $raw->find("meta[name=keywords]");
		$keywords = $keywords[0]->content;
		$description = $raw->find("meta[name=description]");
		$description = $description[0]->content;
		
		$parse = parse_url($obj['url']);
		$host =  $parse['host'];
		$host = str_replace("www.", "", $host);

		$this->db->query(
			"INSERT INTO snaps (
				image,
				url,
				name,
				colors,
				keywords,
				description,
				date
			) 
			VALUES(
				'".$file."',
				'".$obj['url']."',
				'".$host."',
				'".$colors."',
				'".$keywords."',
				'".$description."',
				'".date('Y-m-d H:i:s')."'
			)"
		);
	}
	
	function read() {
		$query = $this->db->query('SELECT * FROM snaps');
		if($query->num_rows() > 0) {
			foreach($query->result() as $row){
				$data[] = $row;
			}
			return $data;
		}
	}
	
	function find($params, $limit) {
		$query = $this->db->query('');
		if($query->num_rows() > 0) {
			foreach($query->result() as $row){
				$data[] = $row;
			}
			return $data;
		}
	}
	
	function latest() {
		$query = $this->db->query('');
		if($query->num_rows() > 0) {
			foreach($query->result() as $row){
				$data[] = $row;
			}
			return $data;
		}
	}
	
	function recent(){
		$query = $this->db->query('');
		if($query->num_rows() > 0) {
			foreach($query->result() as $row){
				$data[] = $row;
			}
			return $data;
		}
	}
	
	function page(){
		$start = ($this->uri->segment(2) * 1) * 12;
		$end = (($this->uri->segment(2) * 1) * 12) + 12;
		$query = $this->db->query('SELECT * FROM snaps ORDER BY id DESC LIMIT '.$start.', '.$end);
		if($query->num_rows() > 0) {
			foreach($query->result() as $row){
				$data[] = $row;
			}
			return $data;
		}
	}
	
	function range($offset, $limit){
		$query = $this->db->query('');
		if($query->num_rows() > 0) {
			foreach($query->result() as $row){
				$data[] = $row;
			}
			return $data;
		}
	}
	
}

/* End of file snaps_model.php */
/* Location: ./application/controllers/snaps_model.php */