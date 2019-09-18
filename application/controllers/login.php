<?php
defined('BASEPATH') OR exit('No direct script access allowed');
 
class Login extends CI_Controller {
 
     
    public function __construct(){
        parent::__construct();
         $this->load->model('login_model');
       
    }

    public function index(){           
        if($this->session->userdata('usuario')){      
            redirect('menuprincipal');
        }else{
            if(isset($_POST["password"])){
                $user = $_POST["codigo"];
                $contrasena = $_POST["password"]."*/+&^";
                $password = md5($contrasena);
                if ($this->login_model->login($user,$password) == true){
                    $variablesession = array(
                    'usuario'=>$user
                    );
                    $this->session->set_userdata($variablesession);
                     redirect('menuprincipal');
                }else{                 
                    echo '<script>alert("Usuario o contraseña incorrecta");</script>';
                    redirect('login','refresh');
                }
            }else{
                $this->load->view('index');  
            }
            
        }
    }  
          
      
    public function cerrarsession() {
         
    $this->session->sess_destroy();
    redirect('login');
        
    }
     
}
