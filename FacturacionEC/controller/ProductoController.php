<?php
/**
 * Description of ProductoControlller
 *
 * @author JJ
 */
class ProductoController extends ControladorBase{
    public $conectar;
    public $adapter;
	
    public function __construct() {
        parent::__construct();
		 
        $this->conectar=new Conectar();
        $this->adapter=$this->conectar->conexion();
    }
    
    public function index(){
		//Producto
        $producto=new Producto($this->adapter);
		$allitems=$producto->getAll();
       
        //Cargamos la vista index y le pasamos valores
        $this->view("producto",array(
	    "allitems" => $allitems));
    }
    
    public function crear(){
        if(isset($_POST["prod_nombre"]) and $_POST["prod_nombre"] <> ''){
            //Creamos un item
            $producto=new Producto($this->adapter);
            $producto->setProd_id($_POST["prod_id"]);
            $producto->setProd_nombre($_POST["prod_nombre"]);
            $producto->setProd_precioc($_POST["prod_precioc"]);
            $producto->setProd_stock($_POST["prod_stock"]);
            $producto->setProd_stockmin($_POST["prod_stockmin"]);
            $producto->setProd_stockmax($_POST["prod_stockmax"]);
            $producto->setProd_codigobarras($_POST["prod_codigobarras"]);
            $producto->setProd_codigoProd($_POST["prod_codigoprod"]);
            $producto->setProd_foto($_POST["prod_foto"]);
            $producto->setProd_costopromedio($_POST["prod_costopromedio"]);
            $producto->setProd_precio1($_POST["prod_precio1"]);
            $producto->setProd_precio2($_POST["prod_precio2"]);
            $producto->setProd_precio3($_POST["prod_precio3"]);
            $producto->setProd_precio4($_POST["prod_precio4"]);
            $producto->setProd_feccreacion($_POST["prod_feccreacion"]);
            $producto->setProd_costolifo($_POST["prod_costolifo"]);
            $producto->setProd_costofifo($_POST["prod_costofifo"]);
            $save=$producto->save();
        }         
                $this->redirect("Producto", "index");
    }
    
    public function borrar(){
        if(isset($_GET["prod_id"])){ 
            $id=(int)$_GET["prod_id"];
            $producto=new Producto($this->adapter);
            $producto->deleteById($id); 
        }
        $this->redirect();
    }
    
    public function modifi(){
        if(isset($_GET["prod_id"])){ 
            $id=(int)$_GET["prod_id"];        
            $producto=new Producto($this->adapter);
            $usu=$producto->getUnUsuario($mail);
            var_dump($usu);
        }
    }
}
?>

