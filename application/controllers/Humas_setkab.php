<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Humas_setkab extends CI_Controller {

	public function index()
	{
		$this->load->view('header');
		$this->load->view('konten_beranda');
		$this->load->view('footer');

	}
}