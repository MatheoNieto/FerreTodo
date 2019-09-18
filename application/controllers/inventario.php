<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Inventario extends CI_Controller {
       
    public function __construct(){
        parent::__construct();
         $this->load->model('inventario_model');
        
    }	
	public function index(){
        
    if($this->session->userdata('usuario')){
        $datos['productos'] = $this->inventario_model->productos();
        $datos['medidas'] = $this->inventario_model->medidas();
        $this->load->view('inventary',$datos); 
        $this->load->view('contenido/inventario1',$datos); 
        $this->load->view('contenido/inventario2',$datos); 
    }else{
        redirect('login');
    }
		
	}
    
    public function registrartp(){      

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
                    "id"=>null,
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
                $this->inventario_model->regisproduct($datos);
                echo 'inserto';
            }else{
                $error = array('error' => $this->upload->display_errors());
                foreach($error as $er){
                    echo $er;
                }
            }
        }else{
            $datos = array(
                "id"=>null,
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
            $this->inventario_model->regisproduct($datos);
        }
    }

    public function actu(){
         
        $ident = $this->input->post('txtix2');
        $nomprep = $this->input->post('nameproducto2');
        $marcap = $this->input->post('marcaproducto2');
        $cantp = $this->input->post('cantproducto2');
        $mediads = $this->input->post('slctmediad2');
        $valoru = $this->input->post('valoru2');
        $iva = $this->input->post('iva2');
        $porganancia = $this->input->post('porganan2');
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
        $archi = $_FILES["matle"];
        if ($_FILES['matle']['name'] != null){
            $config['upload_path'] = "./assets/img/productos";
            $config['file_name'] = "$nomprep";   
            $config['allowed_types'] = "*";
            $config['overwrite'] = 'TRUE';
            $config['max_size'] = 512000;
            $this->load->library('upload',$config);
            if ($this->upload->do_upload('matle')){
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
                if($this->inventario_model->actuliproducto($datos,$ident)){
                    echo 'inserto'; 
                }else{
                    echo 'pailas';  
                }
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
            if($this->inventario_model->actuliproducto($datos,$ident)){
                echo 'inserto'; 
            }else{
                echo 'pailas';  
            }
        }
    }

    public function cargadatost(){
        $datos['productos'] = $this->inventario_model->productos();
        $this->load->view('contenido/inventario1',$datos);        
    }
   
    

}
