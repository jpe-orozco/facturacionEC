<?php
class parametro
{
   private $para_id              ;
   private $cata_id              ;
   private $para_descripcion     ;
   private $para_tipo		    ;
   private $para_valor           ;

   function getPara_id() {
       return $this->para_id;
   }

   function getCata_id() {
       return $this->cata_id;
   }

   function getPara_descripcion() {
       return $this->para_descripcion;
   }

   function getPara_tipo() {
       return $this->para_tipo;
   }

   function getPara_valor() {
       return $this->para_valor;
   }

   function setPara_id($para_id) {
       $this->para_id = $para_id;
   }

   function setCata_id($cata_id) {
       $this->cata_id = $cata_id;
   }

   function setPara_descripcion($para_descripcion) {
       $this->para_descripcion = $para_descripcion;
   }

   function setPara_tipo($para_tipo) {
       $this->para_tipo = $para_tipo;
   }

   function setPara_valor($para_valor) {
       $this->para_valor = $para_valor;
   }


   
}
?>