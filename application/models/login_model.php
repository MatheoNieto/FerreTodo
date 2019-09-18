<?php
 
class Login_model extends CI_Model {
    public function __construct(){
        parent::__construct();
    }
    
    public function login($codigo,$password){
        $this->db->where('usuario',$codigo);       
        $this->db->where('password',$password);
        $resultado = $this->db->get('usuarios');
        if($resultado->num_rows()>0){          
            return true;
        }else{
            return false;         
        }  

    }   
    
}
