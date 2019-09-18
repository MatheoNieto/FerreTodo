<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Reportes extends CI_Controller {
       
    public function __construct(){
        parent::__construct();
         $this->load->model('reportes_model');
    }
	
	public function index(){        
    if($this->session->userdata('usuario')){
        $this->load->view('reportes'); 
        $this->load->view('contenido/reportes1'); 
        $this->load->view('contenido/reportes2'); 
    }else{
        redirect('login');
    }
		
	}
    
    public function consultarfe(){
        $fecharange = $this->input->post('demo');
        $fechadr = explode(" - ",$fecharange);
        $fecha1 = $fechadr[0];
        $fecha2 = $fechadr[1];
        $datosu['consult'] = $this->reportes_model->consulta($fecha1,$fecha2);
        $this->load->view('contenido/reportes1',$datosu); 
        
    }
    

}
