<?php
/**
 * Funciones de control para Usuario
 *
 * @author JJ
 */
class UsuarioController extends ControladorBase{
    public $conectar;
    public $adapter;
	
    public function __construct() {
        parent::__construct();
        $this->conectar=new Conectar();
        $this->adapter=$this->conectar->conexion();
    }
    
    public function index(){
        
        //Creamos el objeto usuario
        $usuario=new Usuario($this->adapter);
        
        //Conseguimos todos los usuarios
        $allusers=$usuario->getAll();
       
        //Cargamos la vista index y le pasamos valores
        $this->view("usuario",array(
            "allusers"=>$allusers));
    }
    
    public function crear(){
        if(isset($_POST["usua_nombre"])){
            //Creamos un usuario
            $usuario=new Usuario($this->adapter);
            $usuario->setUsua_login($_POST["usua_login"]);
            $usuario->setUsua_nombre($_POST["usua_nombre"]);
            $usuario->setUsua_direccion($_POST["usua_direccion"]);
            $usuario->setUsua_email($_POST["usua_email"]);
            $usuario->setUsua_clave(sha1($_POST["usua_clave"]));
            $save=$usuario->save();
        }
        $this->redirect("Usuario", "index");
    }
    
    public function borrar(){
        if(isset($_GET["usua_id"])){ 
            $id=(int)$_GET["usua_id"];
            $usuario=new Usuario($this->adapter);
            $usuario->deleteById($id); 
        }
        $this->redirect();
    }
    
    public function hola(){
        if(isset($_GET["usua_email"])){ 
        $mail=(int)$_GET["usua_email"];        
        $usuarios=new Usuario($this->adapter);
        $usu=$usuarios->getUnUsuario($mail);
        var_dump($usu);
        }
    }
}
?>
