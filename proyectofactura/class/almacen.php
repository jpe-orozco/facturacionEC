<?php
class almacen
{
   private $alma_id              ;
   private $para_id              ;
   private $alma_nombre          ;
   private $alma_ruc             ;
   private $alma_codsri          ;
   private $alma_telefono        ;
   private $alma_direccion       ;
   private $alma_mail            ;
   private $alma_porpvp          ;
   private $alma_tvaloracion     ;
   
   function getAlma_id() {
       return $this->alma_id;
   }

   function getPara_id() {
       return $this->para_id;
   }

   function getAlma_nombre() {
       return $this->alma_nombre;
   }

   function getAlma_ruc() {
       return $this->alma_ruc;
   }

   function getAlma_codsri() {
       return $this->alma_codsri;
   }

   function getAlma_telefono() {
       return $this->alma_telefono;
   }

   function getAlma_direccion() {
       return $this->alma_direccion;
   }

   function getAlma_mail() {
       return $this->alma_mail;
   }

   function getAlma_porpvp() {
       return $this->alma_porpvp;
   }

   function getAlma_tvaloracion() {
       return $this->alma_tvaloracion;
   }

   function setAlma_id($alma_id) {
       $this->alma_id = $alma_id;
   }

   function setPara_id($para_id) {
       $this->para_id = $para_id;
   }

   function setAlma_nombre($alma_nombre) {
       $this->alma_nombre = $alma_nombre;
   }

   function setAlma_ruc($alma_ruc) {
       $this->alma_ruc = $alma_ruc;
   }

   function setAlma_codsri($alma_codsri) {
       $this->alma_codsri = $alma_codsri;
   }

   function setAlma_telefono($alma_telefono) {
       $this->alma_telefono = $alma_telefono;
   }

   function setAlma_direccion($alma_direccion) {
       $this->alma_direccion = $alma_direccion;
   }

   function setAlma_mail($alma_mail) {
       $this->alma_mail = $alma_mail;
   }

   function setAlma_porpvp($alma_porpvp) {
       $this->alma_porpvp = $alma_porpvp;
   }

   function setAlma_tvaloracion($alma_tvaloracion) {
       $this->alma_tvaloracion = $alma_tvaloracion;
   }


   }
?>