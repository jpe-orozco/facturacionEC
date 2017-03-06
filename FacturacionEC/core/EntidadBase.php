<?php
/**
 * Funciones generales para la BD
 * Funciones que no requieran nombres de campos o tablas quemado en el codigo
 * @author JJ
 */
class EntidadBase{
    private $table;
    private $db;
    private $conectar;

    public function __construct($table, $adapter) {
                $this->table=(string) $table;
		$this->conectar = null;
		$this->db = $adapter;
    }
    
    public function getConetar(){
        return $this->conectar;
    }
    
    public function db(){
        return $this->db;
    }
    
    public function getAll(){
        $query=$this->db->query("SELECT * FROM $this->table ");

        while ($row = $query->fetch_object()) {
           $resultSet[]=$row;
        }
        
        return $resultSet;
    }
    
    public function getById($id){
        $query=$this->db->query("SHOW COLUMNS FROM $this->table");
        $_id = $query->fetch_object()->Field;  /* 1er. field de la tabla*/

        $query=$this->db->query("SELECT * FROM $this->table WHERE $_id =$id");
        if($row = $query->fetch_object()) {
           $resultSet=$row;
        }
        return $resultSet;
    }
    
    public function getBy($column,$value){
        $query=$this->db->query("SELECT * FROM $this->table WHERE $column='$value'");

        while($row = $query->fetch_object()) {
           $resultSet[]=$row;
        }
        return $resultSet;
    }
    
    public function deleteById($id){
        $query=$this->db->query("SHOW COLUMNS FROM $this->table");
        //$_id = $query->fetch_object()->Field; /* 1er. field de la tabla*/
        while($row = $query->fetch_object()) { // buscar tipo increment
           if ($row->Extra == 'auto_increment')
               $_id = $row->Field; 
        }
        $query=$this->db->query("DELETE FROM $this->table WHERE $_id =$id"); 
        return $query;
    }
    
    public function deleteBy($column,$value){
        $query=$this->db->query("DELETE FROM $this->table WHERE $column='$value'"); 
        return $query;
    }
    public function ejecutarSql($query){
        $query=$this->db()->query($query);
        if($query==true){
            if($query->num_rows>1){
                while($row = $query->fetch_object()) {
                   $resultSet[]=$row;
                }
            }elseif($query->num_rows==1){
                if($row = $query->fetch_object()) {
                    $resultSet=$row;
                }
            }else{
                $resultSet=true;
            }
        }else{
            $resultSet=false;
        }
        
        return $resultSet;
    }   
    
}
?>
