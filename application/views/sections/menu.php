<menu>
	<? if($this->session->userdata('is_logged_in')){ ?>
		<a href="<? echo base_url().$this->session->userdata('username'); ?>">Profile</a>
		<a href="<? echo base_url(); ?>forms/signout">Sign Out</a>
	<? }else{ ?>
		<a href="<? echo base_url(); ?>signup">Sign up</a>
		<a href="#" class="open-modal">Sign in</a>
	<? } ?>
</menu>