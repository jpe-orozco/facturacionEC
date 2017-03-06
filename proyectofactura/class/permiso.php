<?php
class permiso
{
   private $perm_id             ;
   private $perm_nombre         ;
   
   function getPerm_id() {
       return $this->perm_id;
   }

   function getPerm_nombre() {
       return $this->perm_nombre;
   }

   function setPerm_id($perm_id) {
       $this->perm_id = $perm_id;
   }

   function setPerm_nombre($perm_nombre) {
       $this->perm_nombre = $perm_nombre;
   }


}
?>