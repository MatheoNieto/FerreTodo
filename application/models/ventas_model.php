<?php
 
class Ventas_model extends CI_Model {
    public function __construct(){
        parent::__construct();
    }
    
    public function productos(){     
        $this->db->from('productos');
        $this->db->join('medidascant','medidascant.id_medida = productos.medidas');
        $this->db->order_by("nameproducnto", "ASC");
        $resultado = $this->db->get();
        return $resultado->result();
    } 
    
    public function regisfactura($datos){
         $this->db->insert('facturas',$datos);
    }
    public function actuinventary($datos,$id){
            $this->db->set($datos);
            $this->db->where('id',$id);
            $this->db->update('productos');
        
        
    }
    
    
}
