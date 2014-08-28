<pre style="color:#fff;display:none;">
	<? print_r($data); ?>
</pre>
<div id="snap">
	<div class="wide-container">
		<div class="grid_1 fluff">
			<h1><? echo $data["item"][0]->title; ?></h1>
			<?
				$time = strtotime($data["item"][0]->date);
				$my_format = date("l, F d, Y", $time);
			
			?>
			<div><? echo $my_format; ?></div>
		</div>
		<div class="grid_4-3 fluff">
			<a href="<? echo $data["item"][0]->url; ?>" class="snapshot" target="_blank"><img src="<? echo base_url().$data["item"][0]->image; ?>" alt="<? echo $data["item"][0]->title; ?>" /></a>
		</div>
		<div class="grid_4 fluff">
			<div class="previews">
				<div class="grid_2 flush">
					<? if(isset($data["prev"]) && $data["prev"]) { ?>
					<a href="<? echo $data["prev"][0]->url; ?>"><img src="<? echo base_url().$data["prev"][0]->image; ?>" alt="<? echo $data["prev"][0]->title; ?>" /><span><span class="icons icons-large">&#11013;</span></span></a>
					<? } ?>
				</div>
				<div class="grid_2 flush">
					<? if(isset($data["next"]) && $data["next"]) { ?>
					<a href="<? echo $data["next"][0]->url; ?>"><img src="<? echo base_url().$data["next"][0]->image; ?>" alt="<? echo $data["next"][0]->title; ?>" /><span><span class="icons icons-large">&#10145;</span></span></a>
					<? } ?>
				</div>
			</div>
			<div class="clear"></div>
			<p>
				<div><a href="http://<? echo $data["item"][0]->name; ?>" target="_blank"><? echo $data["item"][0]->name; ?></a></div>
				<div class="palette">
					<?
						$colors = explode(",", $data["item"][0]->colors);
						foreach($colors as $c) {
							echo '<div class="swatches" style="background-color:#'.$c.'"></div>';
						}
					?>
					<div class="clear"></div>
					<div class="name">
						Untitled Palette
					</div>
				</div>
			</p>
			<? if($data["item"][0]->description) { ?>
				<p>	
					<div class="hint"><strong>Description</strong></div>
					<? echo $data["item"][0]->description; ?>
				</p>
			<? }?>
			<? if($data["item"][0]->keywords) { ?>
				<div class="keywords">
					<div class="hint"><strong>Tags</strong></div>
					<?
						$keywords = explode(",", trim($data["item"][0]->keywords, ' '));
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