<?php
class rol
{
   private $role_id             ;
   private $usua_id             ;
   private $perm_id             ;
   private $role_descripcion    ;
   
   function getRole_id() {
       return $this->role_id;
   }

   function getUsua_id() {
       return $this->usua_id;
   }

   function getPerm_id() {
       return $this->perm_id;
   }

   function getRole_descripcion() {
       return $this->role_descripcion;
   }

   function setRole_id($role_id) {
       $this->role_id = $role_id;
   }

   function setUsua_id($usua_id) {
       $this->usua_id = $usua_id;
   }

   function setPerm_id($perm_id) {
       $this->perm_id = $perm_id;
   }

   function setRole_descripcion($role_descripcion) {
       $this->role_descripcion = $role_descripcion;
   }


}
?>   
