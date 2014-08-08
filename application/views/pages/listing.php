<div id="listing">
	<div class="outer-container">
		<div class="grid_1">
			<h1>Page <? echo $this->uri->segment(2); ?></h1>
		</div>
		<? foreach($data as $d) { ?>
		<div class="grid_2 fluff">
			<a href="<? echo $d->url ?>" class="listing-block">
				<img src="<? echo base_url().$d->image ?>" alt="" />
				<div class="info">
					<span><span class="icons">&#59146;</span> 1,000</span>
					<span><span class="icons">&hearts;</span> 1,000</span>
				</div>
			</a>
		</div>	
		<? } ?>
		<div class="clear"></div>
		<div class="pagination">
			<a href="<? echo base_url(); ?>" class="button black">Previous</a>
			<a href="<? echo base_url()."page/1"; ?>" class="button black">Next</a>
		</div>
	</div>
</div>