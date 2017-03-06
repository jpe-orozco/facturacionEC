<?php
class producto
{
   private $prod_id              ;
   private $prod_nombre          ;
   private $prod_precioc         ;
   private $prod_stock           ;
   private $prod_stockmin        ;
   private $prod_stockmax        ;
   private $prod_codigobarras    ;
   private $prod_codigoprod      ;
   private $prod_foto            ;
   private $prod_costopromedio   ;
   private $prod_precio1         ;
   private $prod_precio2         ;
   private $prod_precio3         ;
   private $prod_precio4         ;
   private $prod_feccreacion     ;
   private $prod_costolifo       ;
   private $prod_costofifo       ;
   
   function getProd_id() {
       return $this->prod_id;
   }

   function getProd_nombre() {
       return $this->prod_nombre;
   }

   function getProd_precioc() {
       return $this->prod_precioc;
   }

   function getProd_stock() {
       return $this->prod_stock;
   }

   function getProd_stockmin() {
       return $this->prod_stockmin;
   }

   function getProd_stockmax() {
       return $this->prod_stockmax;
   }

   function getProd_codigobarras() {
       return $this->prod_codigobarras;
   }

   function getProd_codigoprod() {
       return $this->prod_codigoprod;
   }

   function getProd_foto() {
       return $this->prod_foto;
   }

   function getProd_costopromedio() {
       return $this->prod_costopromedio;
   }

   function getProd_precio1() {
       return $this->prod_precio1;
   }

   function getProd_precio2() {
       return $this->prod_precio2;
   }

   function getProd_precio3() {
       return $this->prod_precio3;
   }

   function getProd_precio4() {
       return $this->prod_precio4;
   }

   function getProd_feccreacion() {
       return $this->prod_feccreacion;
   }

   function getProd_costolifo() {
       return $this->prod_costolifo;
   }

   function getProd_costofifo() {
       return $this->prod_costofifo;
   }

   function setProd_id($prod_id) {
       $this->prod_id = $prod_id;
   }

   function setProd_nombre($prod_nombre) {
       $this->prod_nombre = $prod_nombre;
   }

   function setProd_precioc($prod_precioc) {
       $this->prod_precioc = $prod_precioc;
   }

   function setProd_stock($prod_stock) {
       $this->prod_stock = $prod_stock;
   }

   function setProd_stockmin($prod_stockmin) {
       $this->prod_stockmin = $prod_stockmin;
   }

   function setProd_stockmax($prod_stockmax) {
       $this->prod_stockmax = $prod_stockmax;
   }

   function setProd_codigobarras($prod_codigobarras) {
       $this->prod_codigobarras = $prod_codigobarras;
   }

   function setProd_codigoprod($prod_codigoprod) {
       $this->prod_codigoprod = $prod_codigoprod;
   }

   function setProd_foto($prod_foto) {
       $this->prod_foto = $prod_foto;
   }

   function setProd_costopromedio($prod_costopromedio) {
       $this->prod_costopromedio = $prod_costopromedio;
   }

   function setProd_precio1($prod_precio1) {
       $this->prod_precio1 = $prod_precio1;
   }

   function setProd_precio2($prod_precio2) {
       $this->prod_precio2 = $prod_precio2;
   }

   function setProd_precio3($prod_precio3) {
       $this->prod_precio3 = $prod_precio3;
   }

   function setProd_precio4($prod_precio4) {
       $this->prod_precio4 = $prod_precio4;
   }

   function setProd_feccreacion($prod_feccreacion) {
       $this->prod_feccreacion = $prod_feccreacion;
   }

   function setProd_costolifo($prod_costolifo) {
       $this->prod_costolifo = $prod_costolifo;
   }

   function setProd_costofifo($prod_costofifo) {
       $this->prod_costofifo = $prod_costofifo;
   }


}
?>