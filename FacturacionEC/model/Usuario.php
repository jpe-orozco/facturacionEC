<?php
/**
 * ceacion de la clase y funciones get/set
 * para Usuario
 * @author JJ
 */
class usuario extends EntidadBase{
    private $usua_id;
    private $usua_login;    
    private $usua_clave;
    private $usua_nombre;
    private $usua_direccion;
    private $usua_telefono;
    private $usua_celular;    
    private $usua_email;

    public function __construct($adapter) {
        $table="usuario";
        parent::__construct($table, $adapter);
    }
    function getUsua_id() {
        return $this->usua_id;
    }

    function getUsua_login() {
        return $this->usua_login;
    }

    function getUsua_clave() {
        return $this->usua_clave;
    }

    function getUsua_nombre() {
        return $this->usua_nombre;
    }

    function getUsua_direccion() {
        return $this->usua_direccion;
    }

    function getUsua_telefono() {
        return $this->usua_telefono;
    }

    function getUsua_celular() {
        return $this->usua_celular;
    }

    function getUsua_email() {
        return $this->usua_email;
    }

    function setUsua_id($usua_id) {
        $this->usua_id = $usua_id;
    }

    function setUsua_login($usua_login) {
        $this->usua_login = $usua_login;
    }

    function setUsua_clave($usua_clave) {
        $this->usua_clave = $usua_clave;
    }

    function setUsua_nombre($usua_nombre) {
        $this->usua_nombre = $usua_nombre;
    }

    function setUsua_direccion($usua_direccion) {
        $this->usua_direccion = $usua_direccion;
    }

    function setUsua_telefono($usua_telefono) {
        $this->usua_telefono = $usua_telefono;
    }

    function setUsua_celular($usua_celular) {
        $this->usua_celular = $usua_celular;
    }

    function setUsua_email($usua_email) {
        $this->usua_email = $usua_email;
    }

    public function save(){

            $query="INSERT INTO usuario 
	(usua_login,usua_clave,usua_nombre,usua_direccion,usua_telefono,
         usua_celular,usua_email,usua_fecha_alta)
                VALUES('".$this->usua_login."',
                       '".$this->usua_clave."',
                       '".$this->usua_nombre."',
                       '".$this->usua_direccion."',
                       '".$this->usua_telefono."',
                       '".$this->usua_celular."',                           
                       '".$this->usua_email."',(SELECT now()));";

        $saver=$this->db()->query($query);
        //$this->db()->error;
        return $saver;
    }
        //Metodos de consulta
    public function getUnUsuario($mail){
        $query="SELECT * FROM usuario WHERE usua_email=$mail";
        $usuario=$this->db()->query($query);
        return $usuario;
    }

}
?>