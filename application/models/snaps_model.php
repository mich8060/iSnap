<?php

class Snaps_model extends CI_Model {
	
	function index() {
		
		$this->db->select('snaps.*, simpleurl.url');
		$this->db->from('snaps');
		$this->db->join('simpleurl', 'snaps.page_url=simpleurl.id');
		$this->db->order_by("id", "desc");
		$this->db->limit(0, 12);
		$query = $this->db->get();
		
		$query = $this->db->query('SELECT snaps.*, simpleurl.url FROM snaps JOIN simpleurl ON simpleurl.id = snaps.page_url ORDER BY id DESC LIMIT 0, 12');
		
		if($query->num_rows() > 0) {
			foreach($query->result() as $row){
				$data[] = $row;
			}
			return $data;
		}
	}
	
	function resize($image) {
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
	
	function add($obj) {
		
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
		$query = $this->db->query('SELECT * FROM snaps');
		if($query->num_rows() > 0) {
			foreach($query->result() as $row){
				$data[] = $row;
			}
			return $data;
		}
	}
	
	public function page($offset, $limit) {
		$pagination["base_url"] = base_url() . "page/";
		$pagination["page"] = $this->uri->segment(2);
		$pagination["per_page"] = (isset($limit) ? ($limit * 1) : 12);
		$pagination["start"] = (isset($offset) ? ($offset * 1) : ($pagination["page"] * $pagination["per_page"]));
		$pagination["count"] = $this->record_count();
		
		$data[] = array(
			"total" =>	$pagination["count"],
			"offset" =>	$pagination["start"],
			"limit"	=> $pagination["per_page"],
			"next"	=>	(($pagination["start"] + $pagination["per_page"]) < $pagination["count"]) ? 1 : 0,
			"prev"	=>	($pagination["start"] > $pagination["per_page"]) ? 1 : 0,
			"snaps" =>	null
		);
		
		$this->db->select('snaps.*, simpleurl.url');
		$this->db->from('snaps');
		$this->db->join('simpleurl', 'snaps.page_url=simpleurl.id');
		$this->db->order_by("id", "desc");
		$this->db->limit($pagination["per_page"], $pagination["start"]);
		$query = $this->db->get();

		if ($query->num_rows() > 0){
			foreach ($query->result() as $row) {
				$data[0]["snaps"][] = $row;
			}
			return $data;
		}
		return false;
	}
	
	public function id() {
		$query = $this->db->query(
				'SELECT snaps.* 
				 FROM snaps 
				 JOIN simpleurl ON snaps.page_url=simpleurl.id
				 WHERE simpleurl.url="'.$this->uri->segment(1).'"');
				
		if($query->num_rows() > 0) {
			$main = $query->result();
			$reference = $main[0]->id;
			
			# Get previous item in database
			$this->db->select('snaps.*, simpleurl.url');
			$this->db->from('snaps');
			$this->db->join('simpleurl', 'snaps.page_url=simpleurl.id');
			$this->db->where('snaps.id >', $reference); 
			$this->db->order_by("snaps.id");
			$this->db->limit(1);
			$prev = $this->db->get();
			
			if($prev->num_rows() > 0) {
				$prev_item = $prev->result();
			}
			
			# Get next item in database
			$this->db->select('snaps.*, simpleurl.url');
			$this->db->from('snaps');
			$this->db->join('simpleurl', 'snaps.page_url=simpleurl.id');
			$this->db->where('snaps.id <', $reference); 
			$this->db->order_by("snaps.id", "desc");
			$this->db->limit(1);
			$next = $this->db->get();
			
			if($next->num_rows() > 0) {
				$next_item = $next ->result();
			}
			
			$data = array(
				"next"	=>	(isset($next_item)) ? $next_item : false,
				"prev"	=>	(isset($prev_item)) ? $prev_item : false,
				"item"	=>	$main
			);
			
			return $data;
		}
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