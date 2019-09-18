<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Productospedi extends CI_Controller {
       
    public function __construct(){
        parent::__construct();
         $this->load->model('pedir_model');
        
    }
	
	public function index(){        
    if($this->session->userdata('usuario')){
        $datos['products'] = $this->pedir_model->allprducts();
         $datos['medidas'] = $this->pedir_model->medidas();
        $this->load->view('parapedido',$datos); 
    }else{
        redirect('login');
    }
		
	}
    public function actu(){        
            $ident = $this->input->post('txtix');
            $nomprep = $this->input->post('nameproducto');
            $marcap = $this->input->post('marcaproducto');
            $cantp = $this->input->post('cantproducto');
            $mediads = $this->input->post('slctmediad');
            $valoru = $this->input->post('valoru');
            $iva = $this->input->post('iva');
            $porganancia = $this->input->post('porganan');
            $valivap = round($valoru*$iva/100);
            $valoruiva = round($valoru+$valivap);
            $pventa = round($valoruiva*$porganancia/100);
            $valsalega= round($valoruiva+$pventa);
            $valganacia= round($valsalega-$valoruiva);
            $comprat=round($valoruiva*$cantp);
            $ventat= round($valsalega*$cantp);
            $ganacit=round($valganacia*$cantp);
            date_default_timezone_set('America/Bogota');
            $fecha =   date("Y-m-d H:i:s"); 
            $archi = $_FILES["image"];
        if ($_FILES['image']['name'] != null){

            $config['upload_path'] = "./assets/img/productos";
            $config['file_name'] = "$nomprep";   
            $config['allowed_types'] = "*";
            $config['overwrite'] = 'TRUE';
            $config['max_size'] = 512000;

            $this->load->library('upload',$config);

            if ($this->upload->do_upload('image')){
                $data = array("upload_data" => $this->upload->data());
                $datos = array(
                    "image" => $data['upload_data']['file_name'],
                    "nameproducnto" =>$nomprep,
                    "marca" =>$marcap,
                    "cantidad" =>$cantp,
                    "medidas" =>$mediads,
                    "precio_compra" =>$valoruiva,
                    "precio_venta" =>$valsalega,
                    "por_ganancia" =>$porganancia,
                    "iva"=>$iva,
                    "ganancia" =>$valganacia,
                    "compra_total" =>$comprat,
                    "venta_total" =>$ventat,
                    "ganancia_total" =>$ganacit,
                    "fechaingresado" =>$fecha
                );
                $this->pedir_model->actuliproducto($datos,$ident);
                echo 'inserto';
            }else{
                $error = array('error' => $this->upload->display_errors());
                foreach($error as $er){
                    echo $er;
                }
            }
        }else{
            $datos = array(
                "image" => 'sinimg.png',
                "nameproducnto" =>$nomprep,
                "marca" =>$marcap,
                "cantidad" =>$cantp,
                "medidas" =>$mediads,
                "precio_compra" =>$valoruiva,
                "precio_venta" =>$valsalega,
                "por_ganancia" =>$porganancia,
                "iva"=>$iva,
                "ganancia" =>$valganacia,
                "compra_total" =>$comprat,
                "venta_total" =>$ventat,
                "ganancia_total" =>$ganacit,
                "fechaingresado" =>$fecha
            );   
            $this->pedir_model->actuliproducto($datos,$ident);
        }          
				
    }
    

}
