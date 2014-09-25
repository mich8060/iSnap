<? if($dev){ ?>
	<pre style="color:#fff;">
		<? print_r($data[0]->snaps); ?>
	</pre>
<? } ?>
<? if($dev){ ?>
<section class="intro">
	<div class="outer-container">
		<h1 class="light">The fastest and easiest way for designers to bookmark, save, and share the sites that inspire us.</h1>
		<p>
			<a href="#" class="button black">Getting Started</a>
			<a href="#" class="button white open-modal">Sign In</a>
		</p>
	</div>
</section>
<? } ?>
<div class="listing">
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
	</div>
	<div class="clear"></div>
	<div class="pagination">
		<a href="<? echo base_url()."page/1" ?>" class="button black">Next</a>
	</div>
	<div class="clear"></div>
</div>