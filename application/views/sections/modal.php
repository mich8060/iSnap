<div class="overlay">
	<a href="#" class="close-modal"><span class="icons icons-large">&#10133;</span></a>
	<div class="modal">
		<div class="container">
			<form method="post" action="<? echo base_url(); ?>forms/signin">
				<label for="username">
					<input id="username" type="text" placeholder="Username" autocomplete="off" />
					<strong>Username</strong>
				</label>
				<label for="password">
					<input id="password" type="password" placeholder="Password" autocomplete="off" />
					<strong>Password</strong>
				</label>
				<p>
					<input type="submit" value="Sign In" class="button black" />
				</p>
				<p class="hint">
					<a href="<? echo base_url(); ?>forgot">Lost my password?</a>
				</p>
				<div class="hint">
					No iSnap Account? <br />
					<a href="#">Sign up</a> as a rookie and<br />
					get nominated!
				</div>
			</form>
		</div>
		<div class="clear"></div>
	</div>
</div>