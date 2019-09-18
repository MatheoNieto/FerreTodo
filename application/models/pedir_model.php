<?php
 
class Pedir_model extends CI_Model {
    public function __construct(){
        parent::__construct();
    }
    
  public function allprducts(){
      $this->db->where('productos.cantidad <=',2);
             $this->db->from('productos');
        $this->db->join('medidascant','medidascant.id_medida = productos.medidas');
    $resultado= $this->db->get();
    return $resultado->result();      
      
  }
    
        public function medidas(){        
        $resultado = $this->db->get('medidascant');
        return $resultado->result();
    } 
    
    public function actuliproducto($datos,$id){
        $this->db->set($datos);
        $this->db->where('id',$id);
        $this->db->update('productos');
        if ($this->db->affected_rows() > 0){
        return true;
        }else{
        return false;
        }
    }
    
}
