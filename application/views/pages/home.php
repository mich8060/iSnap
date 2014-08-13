<section class="intro">
	<div class="outer-container">
		<h1 class="light">The fastest and easiest way to visually bookmark</h1>
		<p>
			<a href="#" class="button white">Getting Started</a>
			<a href="#" class="button white-outline">Sign In</a>
		</p>
	</div>
</section>
<div class="listing">
	<div class="wide-container">
		<? foreach($data as $d) { ?>
		<div class="grid_2 fluff">
			<a href="<? echo $d->url ?>" target="_blank" class="listing-block">
				<img src="<? echo $d->image ?>" alt="" />
				<div class="direct"><span class="icons">&#10150;</span></div>
				<div class="details"><span class="icons">&#57349;</span></div>
				<div class="info">
						<img src="http://www.w3schools.com/favicon.ico" class="favicon" />
					<span><span class="icons">&#59146;</span> 1,000</span>
					<span><span class="icons">&hearts;</span> 1,000</span>
				</div>
			</a>
		</div>	
		<? } ?>
	</div>
	<div class="clear"></div>
	<div class="pagination">
		<a href="<? echo base_url()."page/1" ?>" class="button black">Next</a>
	</div>
	<div class="clear"></div>
</div>