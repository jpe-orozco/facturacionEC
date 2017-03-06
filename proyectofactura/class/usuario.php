<?php
class usuario
{
   private $usua_id             ;
   private $usua_login          ;
   private $usua_clave          ;
   private $usua_nombre         ;
   private $usua_direccion      ;
   private $usua_telefono       ;
   private $usua_celular        ;
   private $usua_mail           ;
   

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

   function getUsua_mail() {
       return $this->usua_mail;
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

   function setUsua_mail($usua_mail) {
       $this->usua_mail = $usua_mail;
   }


   
}
?>