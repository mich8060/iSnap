<div class="grid_2 fluff">
	<div class="listing">
		<div class="snap" style="background-image:url(<? echo $d['image']; ?>)">
			<a href="<? echo $d['url'] ?>"><img src="http://placehold.it/100x50" alt="" /></a>
		</div>
		<div class="info">
			<div class="title"><? echo $d['name']; ?></div>
			<? if($dev){ ?>
				<div class="link"><span class="icons">&#10145;</span></div>
				<div class="details"><span class="icons">&#57349;</span></div>
			<? } ?>
			<div class="actions">
				<span><span class="icons">&#59146;</span> <? echo $d['views']; ?></span>
				<? if($dev){ ?>
					<span><span class="icons">&#59160;</span> 10</span>
					<a href="#" data="<? echo $d['base']; ?>" action="<? echo base_url(); ?>forms/heart" class="heart"><span class="icons">&hearts;</span> 0</a>
				<? } ?>
			</div>
		</div>
	</div>
</div>