<? if($dev){ ?>
	<pre style="color:#fff;display:none;">
		<? print_r($data); ?>
	</pre>
<? } ?>
<div id="listing">
	<div class="full-container">
		<? foreach($data[0]->snaps as $d) { ?>
			<div class="grid_2 fluff">
				<a href="<? echo $d->url ?>" class="listing-block">
					<div class="snap" style="background-image:url(<? echo $d->image; ?>)">
						<img src="http://placehold.it/100x50" alt="" />
					</div>
					<div class="info">
						<div class="title"><? echo $d->name; ?></div>
						<div class="link"><span class="icons">&#10145;</span></div>
						<div class="details"><span class="icons">&#57349;</span></div>
						<div class="actions">
							<span><span class="icons">&#59146;</span> 100</span>
							<span><span class="icons">&#59160;</span> 10</span>
							<span><span class="icons">&hearts;</span> 100</span>
						</div>
					</div>
				</a>
			</div>	
		<? } ?>
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