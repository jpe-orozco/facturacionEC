<?php
class transaccion_cabecera
{
   private $trca_id            ;
   private $clpr_id            ;
   private $para_id            ;
   private $trca_numreg        ;
   private $trca_numfactura    ;
   private $trca_fecha         ;
   private $trca_saldo         ;
   private $trca_formapago     ;
   private $trca_descuento     ;
   private $trca_total         ;
   private $trca_subtotal      ;
   private $trca_iva           ;
   private $trca_recargo       ;
   private $trca_numerocheque  ;
   private $trca_proforma      ;
   private $trca_anulado       ;
   
   function getTrca_id() {
       return $this->trca_id;
   }

   function getClpr_id() {
       return $this->clpr_id;
   }

   function getPara_id() {
       return $this->para_id;
   }

   function getTrca_numreg() {
       return $this->trca_numreg;
   }

   function getTrca_numfactura() {
       return $this->trca_numfactura;
   }

   function getTrca_fecha() {
       return $this->trca_fecha;
   }

   function getTrca_saldo() {
       return $this->trca_saldo;
   }

   function getTrca_formapago() {
       return $this->trca_formapago;
   }

   function getTrca_descuento() {
       return $this->trca_descuento;
   }

   function getTrca_total() {
       return $this->trca_total;
   }

   function getTrca_subtotal() {
       return $this->trca_subtotal;
   }

   function getTrca_iva() {
       return $this->trca_iva;
   }

   function getTrca_recargo() {
       return $this->trca_recargo;
   }

   function getTrca_numerocheque() {
       return $this->trca_numerocheque;
   }

   function getTrca_proforma() {
       return $this->trca_proforma;
   }

   function getTrca_anulado() {
       return $this->trca_anulado;
   }

   function setTrca_id($trca_id) {
       $this->trca_id = $trca_id;
   }

   function setClpr_id($clpr_id) {
       $this->clpr_id = $clpr_id;
   }

   function setPara_id($para_id) {
       $this->para_id = $para_id;
   }

   function setTrca_numreg($trca_numreg) {
       $this->trca_numreg = $trca_numreg;
   }

   function setTrca_numfactura($trca_numfactura) {
       $this->trca_numfactura = $trca_numfactura;
   }

   function setTrca_fecha($trca_fecha) {
       $this->trca_fecha = $trca_fecha;
   }

   function setTrca_saldo($trca_saldo) {
       $this->trca_saldo = $trca_saldo;
   }

   function setTrca_formapago($trca_formapago) {
       $this->trca_formapago = $trca_formapago;
   }

   function setTrca_descuento($trca_descuento) {
       $this->trca_descuento = $trca_descuento;
   }

   function setTrca_total($trca_total) {
       $this->trca_total = $trca_total;
   }

   function setTrca_subtotal($trca_subtotal) {
       $this->trca_subtotal = $trca_subtotal;
   }

   function setTrca_iva($trca_iva) {
       $this->trca_iva = $trca_iva;
   }

   function setTrca_recargo($trca_recargo) {
       $this->trca_recargo = $trca_recargo;
   }

   function setTrca_numerocheque($trca_numerocheque) {
       $this->trca_numerocheque = $trca_numerocheque;
   }

   function setTrca_proforma($trca_proforma) {
       $this->trca_proforma = $trca_proforma;
   }

   function setTrca_anulado($trca_anulado) {
       $this->trca_anulado = $trca_anulado;
   }


}
?>