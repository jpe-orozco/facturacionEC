<?php
class catalogo
{
   private $cata_id             ;
   private $cata_tipo           ;
   
   function getCata_id() {
       return $this->cata_id;
   }

   function getCata_tipo() {
       return $this->cata_tipo;
   }

   function setCata_id($cata_id) {
       $this->cata_id = $cata_id;
   }

   function setCata_tipo($cata_tipo) {
       $this->cata_tipo = $cata_tipo;
   }


}
?>