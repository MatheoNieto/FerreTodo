<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Menuprincipal extends CI_Controller {
       
    public function __construct(){
        parent::__construct();
    }
	
	public function index(){
        
    if($this->session->userdata('usuario')){
        $this->load->view('home'); 
    }else{
        redirect('login');
    }
		
	}
    

}
