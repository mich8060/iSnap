<? if($dev){ ?>
	<menu>
		<? if($this->session->userdata('is_logged_in')){ ?>
			<a href="<? echo base_url().$user_data[0]->username; ?>"> <? echo $user_data[0]->name; ?> <img src="<? echo base_url()."img/profiles/".$user_data[0]->pic; ?>" alt="" /></a>

		<? }else{ ?>
			<a href="<? echo base_url(); ?>signup">Sign up</a>
			<a href="#" class="open-modal">Sign in</a>
		<? } ?>
	</menu>
<? } ?>