<?php
class banco
{
   private $banc_id            ;
   private $banc_descripcion   ;
   private $banc_numerocuenta  ;
   private $banc_oficial       ;
   private $banc_titular       ;
   private $banc_fec_apertura  ;
   private $banc_observaciones ;
   
   function getBanc_id() {
       return $this->banc_id;
   }

   function getBanc_descripcion() {
       return $this->banc_descripcion;
   }

   function getBanc_numerocuenta() {
       return $this->banc_numerocuenta;
   }

   function getBanc_oficial() {
       return $this->banc_oficial;
   }

   function getBanc_titular() {
       return $this->banc_titular;
   }

   function getBanc_fec_apertura() {
       return $this->banc_fec_apertura;
   }

   function getBanc_observaciones() {
       return $this->banc_observaciones;
   }

   function setBanc_id($banc_id) {
       $this->banc_id = $banc_id;
   }

   function setBanc_descripcion($banc_descripcion) {
       $this->banc_descripcion = $banc_descripcion;
   }

   function setBanc_numerocuenta($banc_numerocuenta) {
       $this->banc_numerocuenta = $banc_numerocuenta;
   }

   function setBanc_oficial($banc_oficial) {
       $this->banc_oficial = $banc_oficial;
   }

   function setBanc_titular($banc_titular) {
       $this->banc_titular = $banc_titular;
   }

   function setBanc_fec_apertura($banc_fec_apertura) {
       $this->banc_fec_apertura = $banc_fec_apertura;
   }

   function setBanc_observaciones($banc_observaciones) {
       $this->banc_observaciones = $banc_observaciones;
   }


}
?>