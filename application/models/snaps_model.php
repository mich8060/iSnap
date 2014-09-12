<?php

class Snaps_model extends CI_Model {
	
	public function index() {
		$json = json_decode(file_get_contents("http://api.isnap.me/snaps/page/0"));
		return $json;
	}
	
	private function resize($image) {
		$thumb_width = 800;
		$thumb_height = 500;

		$width = imagesx($image);
		$height = imagesy($image);

		$original_aspect = $width / $height;
		$thumb_aspect = $thumb_width / $thumb_height;

		if ( $original_aspect >= $thumb_aspect ){
		   $new_height = $thumb_height;
		   $new_width = $width / ($height / $thumb_height);
		}else{
		   $new_width = $thumb_width;
		   $new_height = $height / ($width / $thumb_width);
		}

		$thumb = imagecreatetruecolor($thumb_width, $thumb_height);

		# Resize and crop
		imagecopyresampled($thumb,
		                   $image,
		                   0 - ($new_width - $thumb_width) / 2, // Center the image horizontally
		                   0 - ($new_height - $thumb_height) / 2, // Center the image vertically
		                   0, 0,
		                   $new_width, $new_height,
		                   $width, $height);
		imagejpeg($thumb, $filename, 80);
	}
	
	public function add($obj) {
		
		# Build screen capture from base64 encoded data
		$img = $this->input->post('image');
		$img = str_replace('data:image/png;base64,', '', $img);
		$img = str_replace(' ', '+', $img);
		$data = base64_decode($img);
		$file = 'img/snaps/' . uniqid() . '.png';
		file_put_contents($file, $data);
		
		# Parse url for host name
		$parse = parse_url($obj['url']);
		$host =  $parse['host'];
		$host = str_replace("www.", "", $host);

		# Compose & Execute SQL query parameters
		$this->db->query(
			"INSERT INTO snaps (
				image,
				name,
				description,
				keywords,
				title,
				colors,
				url,
				date
			) 
			VALUES(
				'".$file."',
				'".$host."',
				'".$obj['description']."',
				'".$obj['keywords']."',
				'".$obj['title']."',
				'".$colors."',
				'".$obj['url']."',
				'".date('Y-m-d H:i:s')."'
			)"
		);
		$reference = $this->db->insert_id();
		$page_ref = $reference.'-'.preg_replace('/[.,]/', '-', $host);
		
		$data = array(
		   	'template' 		=> 'pages/snaps' ,
		   	'model' 		=> 'snaps_model' ,
		   	'function' 		=> 'id',
			'premissions'	=>	0,
			'active'		=>	1,
			'url'			=>  $page_ref,
			'name'			=>	$obj['title']
		);

		$this->db->insert('simpleurl', $data);
		$page_ref = $this->db->insert_id();
		
		$data = array('page_url' => $page_ref);
		$this->db->where('id', $reference);
		$this->db->update('snaps', $data);
		
		# Curl external script to gather metadata in the background.
		$ch = curl_init();
		$url = base_url().'tools/index';
		$meta = array(
			"file" =>	$file, 
			"url" =>	$obj['url'],
			"id" => 	$reference
		);
		curl_setopt($ch, CURLOPT_FOLLOWLOCATION, true);
		curl_setopt($ch, CURLOPT_HEADER, false);
		curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, false);
		curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
		curl_setopt($ch, CURLOPT_POST, true);
		curl_setopt($ch, CURLOPT_POSTFIELDS, $meta);
		curl_setopt($ch, CURLOPT_URL, $url);
		curl_exec($ch);
	}
	
	function meta($data) {
		$id = $data["id"];
		$colors = $data["colors"];
		$this->db->query('UPDATE snaps SET colors=\''.$colors.'\' WHERE id='.$id);
	}
	
	public function read(){
		$json = json_decode(file_get_contents("http://api.isnap.me/snaps"));
		return $json;
	}
	
	public function page() {
		$identifier = mysql_real_escape_string(strtolower($this->uri->segment(2)));
		$json = json_decode(file_get_contents("http://api.isnap.me/snaps/page/".$identifier));
		return $json;
	}
	
	public function id() {
		$identifier = mysql_real_escape_string(strtolower($this->uri->segment(1)));
		$json = json_decode(file_get_contents("http://api.isnap.me/snaps/id/".$identifier));
		return $json;
	}
	
	public function find() {
		$query = $this->db->query('SELECT * FROM snaps');
		if($query->num_rows() > 0) {
			foreach($query->result() as $row){
				$data[] = $row;
			}
			return $data;
		}
	}
	
	public function latest() {
		$query = $this->db->query('');
		if($query->num_rows() > 0) {
			foreach($query->result() as $row){
				$data[] = $row;
			}
			return $data;
		}
	}
	
	public function record_count() {
		return $this->db->count_all("snaps");
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