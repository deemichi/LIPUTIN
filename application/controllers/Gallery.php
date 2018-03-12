<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Gallery extends CI_Controller {
/*
		function __construct()
    {
        // Call the Model constructor
        parent::__construct();

        $this->load->model('Calendar_model');
    }
*/

	/*Home page Calendar view  */
	Public function index()
	{
		$this->load->view('header');
		$this->load->view('konten_gallery');
		$this->load->view('footer');
	}


}
