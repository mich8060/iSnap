<pre style="color:#fff;display:none;">
	<? print_r($data); ?>
</pre>
<div id="profile">
	<div class="wallpaper">
		<div class="bg"></div>
		<div class="outer-container">
			<div class="grid_5" style="text-align:center;">
				<div class="circle"><img src="<? echo base_url().'img/profiles/'.$data["user"][0]->pic; ?>" alt="Snap.me - <? echo $data["user"][0]->name; ?>" /></div>
				<a href="#" class="button black-outline">Follow</a>
			</div>
			<div class="grid_5-3">
				<p>
					<h2 class="light" style="color:#fff;"><? echo $data["user"][0]->name; ?></h2>
					<span style="color:#fff;"><span class="icons">&#59172;</span><? echo $data["user"][0]->city; ?>, <? echo $data["user"][0]->state; ?> <? echo $data["user"][0]->zip; ?></span>
					<span style="color:#fff;"><span class="icons">&#128279;</span><? echo $data["user"][0]->website; ?></span>
				</p>
				<p>
					<? echo $data["user"][0]->bio; ?>
				</p>
			</div>
			<div class="clear"></div>
		</div>
	</div>
</div>