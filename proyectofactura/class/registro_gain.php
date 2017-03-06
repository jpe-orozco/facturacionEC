<?php
class registro_gain
{
   private $regi_id              ;
   private $para_id              ;
   private $regi_fecha           ;
   private $regi_descripcion     ;
   private $regi_valor           ;
   
   function getRegi_id() {
       return $this->regi_id;
   }

   function getPara_id() {
       return $this->para_id;
   }

   function getRegi_fecha() {
       return $this->regi_fecha;
   }

   function getRegi_descripcion() {
       return $this->regi_descripcion;
   }

   function getRegi_valor() {
       return $this->regi_valor;
   }

   function setRegi_id($regi_id) {
       $this->regi_id = $regi_id;
   }

   function setPara_id($para_id) {
       $this->para_id = $para_id;
   }

   function setRegi_fecha($regi_fecha) {
       $this->regi_fecha = $regi_fecha;
   }

   function setRegi_descripcion($regi_descripcion) {
       $this->regi_descripcion = $regi_descripcion;
   }

   function setRegi_valor($regi_valor) {
       $this->regi_valor = $regi_valor;
   }


}
?>   
