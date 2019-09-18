<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Ventas extends CI_Controller {
       
    public function __construct(){
        parent::__construct();
        $this->load->model('ventas_model');
    }
	
	public function index(){
        
    if($this->session->userdata('usuario')){
        $datos['productos'] = $this->ventas_model->productos();
        $this->load->view('vender',$datos); 
    }else{
        redirect('login');
    }
		
	}
    
    public function lasventas(){
        $usaurio = $this->session->userdata('usuario');
       $productosvend = $this->input->post('prdvendi'); 
        $json = json_decode($productosvend);
        date_default_timezone_set('America/Bogota');
        $fecha =   date("Y-m-d H:i:s");
        foreach($json as $bla){
            $producto = $bla->id;
            $canttno = $bla->cantidad;
            $canttv = $bla->cantidadn;
            $descuento = $bla->descuento;
            $envio = $bla->envio;
            $precio_ventad =$bla->precio_venta;
            $precio_venta =$bla->precio_venta;           
            if($descuento>0){
                $valdescuento = $precio_venta*$descuento/100;
                $precio_ventad = $precio_ventad-$valdescuento;                
            }
        $ventaotlta= $precio_ventad*$canttv;
        $datos = array(
            "id"=>null,
            "producto" => $producto,
            "cantidad" =>$canttv,
            "descuento" =>$descuento,
            "envio" =>$envio,
            "precio_venta" =>$precio_ventad,
            "valortotal" =>$ventaotlta,
            "fecha_venta" =>$fecha,
            "vendedor" =>$usaurio
        );
            
        $this->ventas_model->regisfactura($datos);            
            
            $nucanti = $canttno-$canttv;
            
            $updtae = array(
            "cantidad"=>$nucanti
            );
        
        $this->ventas_model->actuinventary($updtae,$producto);
        
        
        
        }
 
        
        
        
    }
    

}
