<?php
class transaccion_detalle
{
   private $trde_id             ;
   private $trca_id             ;
   private $prod_id             ;
   private $trde_cantidad       ;
   private $trde_precio         ;
   private $trde_descuento      ;
   
   function getTrde_id() {
       return $this->trde_id;
   }

   function getTrca_id() {
       return $this->trca_id;
   }

   function getProd_id() {
       return $this->prod_id;
   }

   function getTrde_cantidad() {
       return $this->trde_cantidad;
   }

   function getTrde_precio() {
       return $this->trde_precio;
   }

   function getTrde_descuento() {
       return $this->trde_descuento;
   }

   function setTrde_id($trde_id) {
       $this->trde_id = $trde_id;
   }

   function setTrca_id($trca_id) {
       $this->trca_id = $trca_id;
   }

   function setProd_id($prod_id) {
       $this->prod_id = $prod_id;
   }

   function setTrde_cantidad($trde_cantidad) {
       $this->trde_cantidad = $trde_cantidad;
   }

   function setTrde_precio($trde_precio) {
       $this->trde_precio = $trde_precio;
   }

   function setTrde_descuento($trde_descuento) {
       $this->trde_descuento = $trde_descuento;
   }


}
?>