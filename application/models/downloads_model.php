<?php

class Downloads_model extends CI_Model {
	
	public function photoshop($identifier) {
		$this->db->select('swatch1, swatch2, swatch3, swatch4, swatch5');
		$this->db->from('palette');
		$this->db->where('id',$identifier);
		$query = $this->db->get();
		
		if($query->num_rows() > 0) {
			foreach($query->result() as $row){
				$data[] = $row;
			}
			
			$swatches = (array)$data[0];
			foreach ($swatches as $key => $value) {
				if($value == ""){
					$swatches[$key] = "#000000";
				}
			}
		
			$aco = $this->createAcofile($swatches);
			//$aco = pack("H*" , $aco);
			$aco = $this->hex2bin($aco);
			$this->outputAcofile($aco);
		}
	}
	
	public function css($identifier){
		$this->db->select('swatch1, swatch2, swatch3, swatch4, swatch5');
		$this->db->from('palette');
		$this->db->where('id',$identifier);
		$query = $this->db->get();
		
		if($query->num_rows() > 0) {
			foreach($query->result() as $row){
				$data[] = $row;
			}
			
			header("Content-type: text/css; charset: UTF-8");
			header("Content-disposition: attachment; filename=\"isnap_palette.css\"");

			foreach((array)$data[0] as $key => $o){
				if($o != ""){
					$k = str_replace(" ", "-", strtolower($key));
					echo ".".$k." {";
					echo "\n";
					echo "\tproperty: #".$o.';' ;
					echo "\n";
					echo "}";
					echo "\n";
				}
			}
		}

	}
	
	public function sass($identifier){
		
		$this->db->select('swatch1, swatch2, swatch3, swatch4, swatch5');
		$this->db->from('palette');
		$this->db->where('id',$identifier);
		$query = $this->db->get();
		
		if($query->num_rows() > 0) {
			foreach($query->result() as $row){
				$data[] = $row;
			}
			
			header("Content-type: text/scss; charset: UTF-8");
	        header("Content-disposition: attachment; filename=\"isnap_palette.scss\"");

			echo "\$colors: (\n";
			foreach((array)$data[0] as $key => $o){
				if($o != ""){
					$k = str_replace(" ", "_", strtolower($key));
					echo "\t".$k.": #".$o.',' ;
					echo "\n";
				}
			}	
			echo ");";
		}
		
	}
	
	function hex2bin($str) {
		$bin = "";
	    $i = 0;
	    do {
	        $bin .= chr(hexdec($str{$i}.$str{($i + 1)}));
	        $i += 2;
	    } while ($i < strlen($str));
	    return $bin;
	}
	
	private function createAcofile($obj) { 
     	$string = "0001";  
		$max = sizeof($obj);
		$string .= "000".$max;
		foreach($obj as $o){
			$number_of_colors = strlen($o)/6;
	     	for($x=0;$x<$number_of_colors;$x++){
	          	$string.= "0000";
	          	$string.= substr($o,$x*6,2).substr($o,$x*6,2);
	          	$string.= substr($o,$x*6+2,2).substr($o,$x*6+2,2);
	          	$string.= substr($o,$x*6+4,2).substr($o,$x*6+4,2);
	          	$string.= "0000";
	     	}
		}	
		
		$string.= "0002";
		$string.= "000".$max;
		
		foreach($obj as $key => $o){
			$number_of_colors = strlen($o)/6;
	     	for($x=0;$x<$number_of_colors;$x++){
	          	$string.= "0000";
	          	$string.= substr($o,$x*6,2).substr($o,$x*6,2);
	          	$string.= substr($o,$x*6+2,2).substr($o,$x*6+2,2);
	          	$string.= substr($o,$x*6+4,2).substr($o,$x*6+4,2);
	          	$string.= "0000";
	          	$string.= "0000";
	          	$color_name = $key;
	          	$string.= sprintf('%04x',strlen($color_name)+1);
	          	for($y=0;$y<strlen($color_name);$y++){
	               	$string.= sprintf('%04x',ord($color_name{$y}));
	          	}
	          	$string.= "0000";  
	     	}
		}
		return $string;
	}
	
	public function outputAcofile($aco){
        header("Content-type: application/octet-stream");
        header('Content-Length: ' . strlen($aco));
        header("Content-disposition: attachment; filename=\"isnap_palette.aco\"");
        print $aco;
        exit;
    }
	
}

/* End of file downloads_model.php */
/* Location: ./application/controllers/downloads_model.php */