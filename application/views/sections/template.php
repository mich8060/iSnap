<?php $this->load->view('sections/head'); ?>
<?php $this->load->view('sections/header'); ?>
<?php $this->load->view('sections/modal'); ?>
<article>
	<main>
		<?php $this->load->view($template); ?>
	</main>
	<?php $this->load->view('sections/footer'); ?>
</article>
<?php $this->load->view('sections/foot'); ?>
