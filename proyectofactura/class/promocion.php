<?php
class promocion
{
   private $prom_id             ;
   private $prod_id             ;
   private $prom_fechai         ;
   private $prom_fechaf         ;
   private $prom_porcentaje     ;
   private $prom_precio         ;
   private $prom_fechar         ;
   
   function getProm_id() {
       return $this->prom_id;
   }

   function getProd_id() {
       return $this->prod_id;
   }

   function getProm_fechai() {
       return $this->prom_fechai;
   }

   function getProm_fechaf() {
       return $this->prom_fechaf;
   }

   function getProm_porcentaje() {
       return $this->prom_porcentaje;
   }

   function getProm_precio() {
       return $this->prom_precio;
   }

   function getProm_fechar() {
       return $this->prom_fechar;
   }

   function setProm_id($prom_id) {
       $this->prom_id = $prom_id;
   }

   function setProd_id($prod_id) {
       $this->prod_id = $prod_id;
   }

   function setProm_fechai($prom_fechai) {
       $this->prom_fechai = $prom_fechai;
   }

   function setProm_fechaf($prom_fechaf) {
       $this->prom_fechaf = $prom_fechaf;
   }

   function setProm_porcentaje($prom_porcentaje) {
       $this->prom_porcentaje = $prom_porcentaje;
   }

   function setProm_precio($prom_precio) {
       $this->prom_precio = $prom_precio;
   }

   function setProm_fechar($prom_fechar) {
       $this->prom_fechar = $prom_fechar;
   }


}
?>