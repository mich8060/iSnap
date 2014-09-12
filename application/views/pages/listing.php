<? if($dev){ ?>
	<pre style="color:#fff;display:none;">
		<? print_r($data); ?>
	</pre>
<? } ?>
<div id="listing">
	<div class="full-container">
		<? 
			foreach($data[0]->snaps as $d) {
				$data['d'] = array(
					'url'	=>	$d->url,
					'image'	=>	$d->image,
					'name'	=>	$d->name,
					'views'	=>	$d->views,
					'base'	=>	$d->base_url
					);
					$this->load->view('components/listing',$data);
 			} 
		?>
		<div class="clear"></div>
		<div class="pagination">
			<?	
				$next = $this->uri->segment(2) - 1;
				$prev = $this->uri->segment(2) + 1;
				if($data[0]->prev){
					echo '<a href="'.base_url().'page/'.$next.'" class="button black">Previous</a> ';
				}else{
					echo '<a href="'.base_url().'" class="button black">Previous</a> ';
				}
				if($data[0]->next){ 
					echo '<a href="'.base_url().'page/'.$prev.'" class="button black">Next</a>';
				}
			?>
		</div>
	</div>
</div>