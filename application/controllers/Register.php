<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Register extends CI_Controller {
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

		$this->load->view('login/header_login');
		$this->load->view('login/register');
		$this->load->view('login/footer_login');

	}


}
