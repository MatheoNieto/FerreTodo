<?php
 
class Reportes_model extends CI_Model {
    public function __construct(){
        parent::__construct();
    }
    
    public function consulta($fecha1,$fecha2){
    $this->db->select('productos.nameproducnto,facturas.cantidad,facturas.descuento,facturas.envio,facturas.precio_venta,facturas.valortotal,facturas.fecha_venta,facturas.vendedor');
    $this->db->from('facturas');
    $this->db->join('productos','productos.id = facturas.producto');
    $this->db->where('facturas.fecha_venta >=',''.$fecha1.' 00:00:00' );
    $this->db->where('facturas.fecha_venta <= ',''.$fecha2.' 23:00:00');
    $this->db->order_by("facturas.fecha_venta", "DESC");
    $resultados= $this->db->get();
    return $resultados->result();

    }   
    
}
