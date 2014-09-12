<? if($dev){ ?>
	<pre style="color:#fff;display:none;">
		<? print_r($data); ?>
	</pre>
<? } ?>
<div id="snap">
	<div class="gallery">
		<div class="outer-container">
			<div class="grid_1">
				<div class="previews">

						<? if($data->prev) { ?>
						<a href="<? echo $data->prev[0]->url; ?>" title="<? echo $data->prev[0]->title; ?>" data="<? echo $data->prev[0]->base_url; ?>" data_id="<? echo $data->prev[0]->id; ?>" style="background-image:url(<? echo $data->prev[0]->image; ?>);"></a>
						<? }else{ ?>
						<a class="home" href="<? echo base_url(); ?>" title="home" data="">Home</a>	
						<? } ?>

						<? if($data->next) { ?>
						<a href="<? echo $data->next[0]->url; ?>" title="<? echo $data->next[0]->title; ?>" data="<? echo $data->next[0]->base_url; ?>" data_id="<? echo $data->next[0]->id; ?>" style="background-image:url(<? echo $data->next[0]->image; ?>);"></a>
						<? }else{ ?>
						<a class="home" href="<? echo base_url(); ?>" title="home" data="">Home</a>	
						<? } ?>

				</div>
				<div class="clear"></div>
			</div>
			<div class="grid_1 fluff">
				<a href="<? echo $data->current[0]->url; ?>" class="snap-shot" target="_blank"><img src="<? echo $data->current[0]->image; ?>" alt="<? echo $data->current[0]->title; ?>" /></a>
			</div>
			<div class="grid_4-3 fluff">
				<h3 class="normal snap-title"><? echo $data->current[0]->title; ?></h3>
				<?
					$time = strtotime($data->current[0]->date);
					$my_format = date("l, F d, Y", $time);

				?>
				<ul class="horizontal-list">
					<li class="snap-date"><? echo $my_format; ?></li>
					<li><span class="icons icons-tiny">&#59146;</span> <? echo $data->current[0]->views; ?> Views</li>
					<? if($dev){ ?>
					<li><span class="icons icons-tiny">&hearts;</span> 1 Likes</li>
					<? } ?>
				</ul>
				<ul class="tabs">
					<li><a href="#"><span class="icons">&#59141;</span>Description</a></li>
					<li><a href="#"><span class="icons">&#59148;</span>Tags</a></li>
					<li><a href="#"><span class="icons">&#59160;</span>Comments (<span class="fb-comments-count" data-href="<? echo $data->current[0]->url; ?>">0</span>)</a></li>
					<? if($dev){ ?>
					<li><a href="#"><span class="icons">&#59157;</span>share</a></li>
					<? } ?>
				</ul>
			</div>
			<div class="grid_4 fluff">
				<div class="palette">
					<div class="name">
						Untitled Palette
					</div>
					<?
						foreach($data->current[0]->palettes as $key => $value) {
							if($key != "id"){
								echo '<div class="swatches" style="background-color:#'.$value.'"></div>';
							}else{
								$id = $value;
							}
						}
					?>
					<div class="name">
						Download: 
						<div>
							<a href="<? echo base_url().'download/photoshop/'.$id; ?>">Photoshop Swatches</a> |
							<a href="<? echo base_url().'download/css/'.$id; ?>">CSS</a> |
							<a href="<? echo base_url().'download/sass/'.$id; ?>">SASS</a>
						</div>
					</div>
					<div class="clear"></div>
				</div>
			</div>
			<div class="clear"></div>
			<div class="grid_4-3 fluff snap-description">
				<? echo $data->current[0]->description; ?>
			</div>
			<div class="clear"></div>
			<div class="grid_4-3 fluff snap-keywords">
				<? echo $data->current[0]->keywords; ?>
			</div>
		</div>
	</div>
	<div class="outer-container">
		<div class="grid_1">
			<p>
				<h4 class="normal">Comments</h4>
			</p>
			<div id="fb-root"></div>
			<script>(function(d, s, id) {
			  var js, fjs = d.getElementsByTagName(s)[0];
			  if (d.getElementById(id)) return;
			  js = d.createElement(s); js.id = id;
			  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&appId=365283620193152&version=v2.0";
			  fjs.parentNode.insertBefore(js, fjs);
			}(document, 'script', 'facebook-jssdk'));</script>
			<div class="fb-comments" data-href="<? echo $data->current[0]->url; ?>" data-numposts="10" data-width="100%" data-colorscheme="light"></div>
		</div>
	</div>
</div>