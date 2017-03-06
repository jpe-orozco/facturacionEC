<?php
class atributo_valor
{
   private $atva_id             ;
   private $para_id             ;
   private $prod_id             ;
   private $atva_descripcion    ;
   
   function getAtva_id() {
       return $this->atva_id;
   }

   function getPara_id() {
       return $this->para_id;
   }

   function getProd_id() {
       return $this->prod_id;
   }

   function getAtva_descripcion() {
       return $this->atva_descripcion;
   }

   function setAtva_id($atva_id) {
       $this->atva_id = $atva_id;
   }

   function setPara_id($para_id) {
       $this->para_id = $para_id;
   }

   function setProd_id($prod_id) {
       $this->prod_id = $prod_id;
   }

   function setAtva_descripcion($atva_descripcion) {
       $this->atva_descripcion = $atva_descripcion;
   }


}
?>