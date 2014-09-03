<? if($dev){ ?>
	<pre style="color:#fff;display:none;">
		<? print_r($data); ?>
	</pre>
<? } ?>
<div id="snap">
	<div class="wide-container">
		<div class="grid_1 fluff">
			<h1><? echo $data->current[0]->title; ?></h1>
			<?
				$time = strtotime($data->current[0]->date);
				$my_format = date("l, F d, Y", $time);
			
			?>
			<div><? echo $my_format; ?></div>
		</div>
		<div class="grid_4-3 fluff">
			<a href="<? echo $data->current[0]->url; ?>" class="snapshot" target="_blank"><img src="<? echo $data->current[0]->image; ?>" alt="<? echo $data->current[0]->title; ?>" /></a>
		</div>
		<div class="grid_4 fluff">
			<div class="previews">
				<div class="grid_2 flush">
					<? if($data->prev) { ?>
					<a href="<? echo $data->prev[0]->url; ?>"><img src="<? echo $data->prev[0]->image; ?>" alt="<? echo $data->prev[0]->title; ?>" /><span><span class="icons icons-large">&#11013;</span></span></a>
					<? }else{ ?>
					<a class="home" href="<? echo base_url(); ?>">Home</a>	
					<? } ?>
				</div>
				<div class="grid_2 flush">
					<? if($data->next) { ?>
					<a href="<? echo $data->next[0]->url; ?>"><img src="<? echo $data->next[0]->image; ?>" alt="<? echo $data->next[0]->title; ?>" /><span><span class="icons icons-large">&#10145;</span></span></a>
					<? }else{ ?>
					<a class="home" href="<? echo base_url(); ?>">Home</a>	
					<? } ?>
				</div>
			</div>
			<div class="clear"></div>
			<p>
				<div><a href="<? echo $data->current[0]->name; ?>" target="_blank"><? echo $data->current[0]->name; ?></a></div>
				<div class="palette">
					<?
						foreach($data->current[0]->palettes as $c) {
							echo '<div class="swatches" style="background-color:#'.$c.'"></div>';
						}
					?>
					<div class="clear"></div>
					<div class="name">
						Untitled Palette
					</div>
				</div>
			</p>
			<? if($data->current[0]->description) { ?>
				<p>	
					<div class="hint"><strong>Description</strong></div>
					<? echo $data->current[0]->description; ?>
				</p>
			<? }?>
			<? if($data->current[0]->keywords) { ?>
				<div class="keywords">
					<div class="hint"><strong>Tags</strong></div>
					<?
						$keywords = explode(",", trim($data->current[0]->keywords, ' '));
						foreach($keywords as $k) {
							echo '<div class="keyword">'.$k.'</div>';
						}
					?>
				</div>
			<? }?>

		</div>
		<div class="clear"></div>
	</div>
</div>