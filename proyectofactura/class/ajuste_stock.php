<?php
class ajuste_stock
{
   private $ajst_id ;             
   private $prod_id ;             
   private $ajst_stock;           
   private $ajst_stockanterior;   
   private $ajst_motivo ;         
   private $ajst_usuario;         
   private $ajst_fecha;  
   
   function getAjst_id() {
       return $this->ajst_id;
   }

   function getProd_id() {
       return $this->prod_id;
   }

   function getAjst_stock() {
       return $this->ajst_stock;
   }

   function getAjst_stockanterior() {
       return $this->ajst_stockanterior;
   }

   function getAjst_motivo() {
       return $this->ajst_motivo;
   }

   function getAjst_usuario() {
       return $this->ajst_usuario;
   }

   function getAjst_fecha() {
       return $this->ajst_fecha;
   }

   function setAjst_id($ajst_id) {
       $this->ajst_id = $ajst_id;
   }

   function setProd_id($prod_id) {
       $this->prod_id = $prod_id;
   }

   function setAjst_stock($ajst_stock) {
       $this->ajst_stock = $ajst_stock;
   }

   function setAjst_stockanterior($ajst_stockanterior) {
       $this->ajst_stockanterior = $ajst_stockanterior;
   }

   function setAjst_motivo($ajst_motivo) {
       $this->ajst_motivo = $ajst_motivo;
   }

   function setAjst_usuario($ajst_usuario) {
       $this->ajst_usuario = $ajst_usuario;
   }

   function setAjst_fecha($ajst_fecha) {
       $this->ajst_fecha = $ajst_fecha;
   }

   public function __construct() {
       
   }

}
?>