<?php
class cheque
{
   private $cheq_id              ;
   private $clpr_id              ;
   private $trca_id              ;
   private $cheq_numero          ;
   private $cheq_fechaentrega    ;
   private $cheq_fecharecepcion  ;
   private $cheq_fechavencimiento;
   private $cheq_depositado      ;
   private $cheq_monto           ;
   private $cheq_propietario     ;
   private $cheq_rechazado       ;
   private $cheq_fcehadeposito   ;
   
   function getCheq_id() {
       return $this->cheq_id;
   }

   function getClpr_id() {
       return $this->clpr_id;
   }

   function getTrca_id() {
       return $this->trca_id;
   }

   function getCheq_numero() {
       return $this->cheq_numero;
   }

   function getCheq_fechaentrega() {
       return $this->cheq_fechaentrega;
   }

   function getCheq_fecharecepcion() {
       return $this->cheq_fecharecepcion;
   }

   function getCheq_fechavencimiento() {
       return $this->cheq_fechavencimiento;
   }

   function getCheq_depositado() {
       return $this->cheq_depositado;
   }

   function getCheq_monto() {
       return $this->cheq_monto;
   }

   function getCheq_propietario() {
       return $this->cheq_propietario;
   }

   function getCheq_rechazado() {
       return $this->cheq_rechazado;
   }

   function getCheq_fcehadeposito() {
       return $this->cheq_fcehadeposito;
   }

   function setCheq_id($cheq_id) {
       $this->cheq_id = $cheq_id;
   }

   function setClpr_id($clpr_id) {
       $this->clpr_id = $clpr_id;
   }

   function setTrca_id($trca_id) {
       $this->trca_id = $trca_id;
   }

   function setCheq_numero($cheq_numero) {
       $this->cheq_numero = $cheq_numero;
   }

   function setCheq_fechaentrega($cheq_fechaentrega) {
       $this->cheq_fechaentrega = $cheq_fechaentrega;
   }

   function setCheq_fecharecepcion($cheq_fecharecepcion) {
       $this->cheq_fecharecepcion = $cheq_fecharecepcion;
   }

   function setCheq_fechavencimiento($cheq_fechavencimiento) {
       $this->cheq_fechavencimiento = $cheq_fechavencimiento;
   }

   function setCheq_depositado($cheq_depositado) {
       $this->cheq_depositado = $cheq_depositado;
   }

   function setCheq_monto($cheq_monto) {
       $this->cheq_monto = $cheq_monto;
   }

   function setCheq_propietario($cheq_propietario) {
       $this->cheq_propietario = $cheq_propietario;
   }

   function setCheq_rechazado($cheq_rechazado) {
       $this->cheq_rechazado = $cheq_rechazado;
   }

   function setCheq_fcehadeposito($cheq_fcehadeposito) {
       $this->cheq_fcehadeposito = $cheq_fcehadeposito;
   }


}
?>