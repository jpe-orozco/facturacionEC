<?php
class salida_mercaderia
{
   private $same_id            ;
   private $prod_id            ;
   private $para_id            ;
   private $same_descipcion    ;
   private $same_costo         ;
   private $same_precio        ;
   private $same_cantidad      ;
   
   function getSame_id() {
       return $this->same_id;
   }

   function getProd_id() {
       return $this->prod_id;
   }

   function getPara_id() {
       return $this->para_id;
   }

   function getSame_descipcion() {
       return $this->same_descipcion;
   }

   function getSame_costo() {
       return $this->same_costo;
   }

   function getSame_precio() {
       return $this->same_precio;
   }

   function getSame_cantidad() {
       return $this->same_cantidad;
   }

   function setSame_id($same_id) {
       $this->same_id = $same_id;
   }

   function setProd_id($prod_id) {
       $this->prod_id = $prod_id;
   }

   function setPara_id($para_id) {
       $this->para_id = $para_id;
   }

   function setSame_descipcion($same_descipcion) {
       $this->same_descipcion = $same_descipcion;
   }

   function setSame_costo($same_costo) {
       $this->same_costo = $same_costo;
   }

   function setSame_precio($same_precio) {
       $this->same_precio = $same_precio;
   }

   function setSame_cantidad($same_cantidad) {
       $this->same_cantidad = $same_cantidad;
   }


}
?>