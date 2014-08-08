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
		$img = $_POST['image'];
		$img = str_replace('data:image/png;base64,', '', $img);
		$img = str_replace(' ', '+', $img);
		$data = base64_decode($img);
		$file = 'img/snaps/' . uniqid() . '.png';
		file_put_contents($file, $data);
		$this->db->query(
			"INSERT INTO snaps (
				image,
				url,
				date
			) 
			VALUES(
				'".$file."',
				'".$obj['url']."',
				'".date('Y-m-d H:i:s')."'
			)"
		);
	}
	
	function read() {
		$query = $this->db->query(
				'SELECT * FROM snaps'
		);
		if($query->num_rows() > 0) {
			foreach($query->result() as $row){
				$data[] = $row;
			}
			return $data;
		}
	}
	
	function find($params, $limit) {
		$query = $this->db->query(
				'SELECT articles.*, 
						profiles.*,
						categories.name, 
						simpleurl.url 
				 FROM articles 
				 JOIN profiles ON articles.profile_id=profiles.id 
				 JOIN simpleurl ON articles.simple_id=simpleurl.id 
				 JOIN categories ON articles.cat_id=categories.id 
				 WHERE articles.'.$params.' = "'.$limit.'"'
		);
		if($query->num_rows() > 0) {
			foreach($query->result() as $row){
				$data[] = $row;
			}
			return $data;
		}
	}
	
	function latest() {
		$query = $this->db->query(
				'SELECT articles.*, 
						profiles.*,
						categories.name, 
						simpleurl.url 
				 FROM articles 
				 JOIN profiles ON articles.profile_id=profiles.id 
				 JOIN simpleurl ON articles.simple_id=simpleurl.id 
				 JOIN categories ON articles.cat_id=categories.id 
				 ORDER BY articles.id DESC LIMIT 1'
		);
		if($query->num_rows() > 0) {
			foreach($query->result() as $row){
				$data[] = $row;
			}
			return $data;
		}
	}
	
	function recent(){
		$query = $this->db->query(
				'SELECT articles.*, 
						profiles.*, 
						categories.name,
						simpleurl.url 
				 FROM articles JOIN profiles ON articles.profile_id=profiles.id 
				 JOIN simpleurl ON articles.simple_id=simpleurl.id 
				 JOIN categories ON articles.cat_id=categories.id 
				 ORDER BY articles.id DESC LIMIT 5'
		);
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
		$query = $this->db->query(
				'SELECT articles.*, 
						profiles.*, 
						categories.name,
						simpleurl.url 
				 FROM articles JOIN profiles ON articles.profile_id=profiles.id 
				 JOIN simpleurl ON articles.simple_id=simpleurl.id 
				 JOIN categories ON articles.cat_id=categories.id 
				 ORDER BY articles.id DESC LIMIT '.$offset.','.$limit
		);
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