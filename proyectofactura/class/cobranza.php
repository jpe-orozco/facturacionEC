<?php
class cobranza
{
   private $cobr_id              ;
   private $clpr_id              ;
   private $para_id              ;
   private $cobr_numfactura      ;
   private $cobr_fechareg        ;
   private $cobr_totalfactura    ;
   private $cobr_pago            ;
   private $cobr_saldo           ;
   private $cobr_numrecibo       ;
   private $cobr_estado          ;
   
   function getCobr_id() {
       return $this->cobr_id;
   }

   function getClpr_id() {
       return $this->clpr_id;
   }

   function getPara_id() {
       return $this->para_id;
   }

   function getCobr_numfactura() {
       return $this->cobr_numfactura;
   }

   function getCobr_fechareg() {
       return $this->cobr_fechareg;
   }

   function getCobr_totalfactura() {
       return $this->cobr_totalfactura;
   }

   function getCobr_pago() {
       return $this->cobr_pago;
   }

   function getCobr_saldo() {
       return $this->cobr_saldo;
   }

   function getCobr_numrecibo() {
       return $this->cobr_numrecibo;
   }

   function getCobr_estado() {
       return $this->cobr_estado;
   }

   function setCobr_id($cobr_id) {
       $this->cobr_id = $cobr_id;
   }

   function setClpr_id($clpr_id) {
       $this->clpr_id = $clpr_id;
   }

   function setPara_id($para_id) {
       $this->para_id = $para_id;
   }

   function setCobr_numfactura($cobr_numfactura) {
       $this->cobr_numfactura = $cobr_numfactura;
   }

   function setCobr_fechareg($cobr_fechareg) {
       $this->cobr_fechareg = $cobr_fechareg;
   }

   function setCobr_totalfactura($cobr_totalfactura) {
       $this->cobr_totalfactura = $cobr_totalfactura;
   }

   function setCobr_pago($cobr_pago) {
       $this->cobr_pago = $cobr_pago;
   }

   function setCobr_saldo($cobr_saldo) {
       $this->cobr_saldo = $cobr_saldo;
   }

   function setCobr_numrecibo($cobr_numrecibo) {
       $this->cobr_numrecibo = $cobr_numrecibo;
   }

   function setCobr_estado($cobr_estado) {
       $this->cobr_estado = $cobr_estado;
   }


}
?>