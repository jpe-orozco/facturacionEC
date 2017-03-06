<?php
class log
{
   private $log_id               ;
   private $usua_id              ;
   private $para_id              ;
   private $log_timestamp        ;
   private $log_proceso          ;
   private $log_descripcion      ;
   private $log_modulo           ;
   private $log_pc               ;
   private $log_usuario          ;
   private $log_accion           ;
   
   function getLog_id() {
       return $this->log_id;
   }

   function getUsua_id() {
       return $this->usua_id;
   }

   function getPara_id() {
       return $this->para_id;
   }

   function getLog_timestamp() {
       return $this->log_timestamp;
   }

   function getLog_proceso() {
       return $this->log_proceso;
   }

   function getLog_descripcion() {
       return $this->log_descripcion;
   }

   function getLog_modulo() {
       return $this->log_modulo;
   }

   function getLog_pc() {
       return $this->log_pc;
   }

   function getLog_usuario() {
       return $this->log_usuario;
   }

   function getLog_accion() {
       return $this->log_accion;
   }

   function setLog_id($log_id) {
       $this->log_id = $log_id;
   }

   function setUsua_id($usua_id) {
       $this->usua_id = $usua_id;
   }

   function setPara_id($para_id) {
       $this->para_id = $para_id;
   }

   function setLog_timestamp($log_timestamp) {
       $this->log_timestamp = $log_timestamp;
   }

   function setLog_proceso($log_proceso) {
       $this->log_proceso = $log_proceso;
   }

   function setLog_descripcion($log_descripcion) {
       $this->log_descripcion = $log_descripcion;
   }

   function setLog_modulo($log_modulo) {
       $this->log_modulo = $log_modulo;
   }

   function setLog_pc($log_pc) {
       $this->log_pc = $log_pc;
   }

   function setLog_usuario($log_usuario) {
       $this->log_usuario = $log_usuario;
   }

   function setLog_accion($log_accion) {
       $this->log_accion = $log_accion;
   }

 
}
?>