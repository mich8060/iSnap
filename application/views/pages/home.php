<? if($dev){ ?>
	<pre style="color:#fff;display:none;">
		<? print_r($data); ?>
	</pre>
<? } ?>
<section class="intro">
	<div class="outer-container">
		<h1 class="light">The fastest and easiest way for designers to bookmark, save, and share the sites that inspire us.</h1>
		<p>
			<a href="#" class="button black">Getting Started</a>
			<a href="#" class="button white open-modal">Sign In</a>
		</p>
	</div>
</section>
<div class="listing">
	<div class="full-container">
		<? foreach($data as $d) { ?>
		<div class="grid_2 fluff">
			<a href="<? echo $d->url ?>" class="listing-block">
				<div class="snap" style="background-image:url(<? echo base_url().$d->image ?>)">
					<img src="http://placehold.it/100x50" alt="" />
				</div>
				<div class="info">
					<div class="title"><? echo $d->name; ?></div>
					<div class="link"><span class="icons">&#10145;</span></div>
					<div class="details"><span class="icons">&#57349;</span></div>
					<span><span class="icons">&#59146;</span> 100</span>
					<span><span class="icons">&#59160;</span> 10</span>
					<span><span class="icons">&hearts;</span> 100</span>
				</div>
			</a>
		</div>	
		<? } ?>
		<div class="clear"></div>
	</div>
	<div class="clear"></div>
	<div class="pagination">
		<a href="<? echo base_url()."page/1" ?>" class="button black">Next</a>
	</div>
	<div class="clear"></div>
</div>