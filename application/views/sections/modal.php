<div class="overlay">
	<div class="modal">
		<div class="container">
			<a href="#" class="close-modal"><span class="icons icons-medium">&#10133;</span></a>
			<img src="<? echo base_url(); ?>img/layout/snapme_sign_in.png" alt="" />
			<form method="post" action="<? echo base_url(); ?>forms/signin">
				<label for="">
					<input type="text" placeholder="Username" />
				</label>
				<label for="">
					<a href="<? echo base_url(); ?>forgot" class="forgot">Forgot?</a>
					<input type="password" placeholder="Password" />
				</label>
					<input type="submit" value="Sign In" class="button black" />
				<div class="space">
					<input type="checkbox" checked="checked" id="custom" />
					<label for="custom">Stay logged in?</label>
				</div>
				<div class="new">
					No iSnap Account? No Problem!
					<div><a href="#">Sign up</a> as a rookie and get nominated!</div>
				</div>
			</form>
		</div>
		<div class="clear"></div>
	</div>
</div>