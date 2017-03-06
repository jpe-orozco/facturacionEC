
/*==============================================================*/
/* ajuste_stock                   */
/*==============================================================*/
//create ajuste_stock
   private $ajst_id              
   private $prod_id              
   private $ajst_stock           
   private $ajst_stockanterior   
   private $ajst_motivo          
   private $ajst_usuario         
   private $ajst_fecha           

/*==============================================================*/
/* almacen                 */
/*==============================================================*/
//create almacen
   private $alma_id              
   private $para_id              
   private $alma_nombre          
   private $alma_ruc             
   private $alma_codsri          
   private $alma_telefono        
   private $alma_direccion       
   private $alma_mail            
   private $alma_porpvp          
   private $alma_tvaloracion     

/*==============================================================*/
/* banco*/
/*==============================================================*/
//create banco
   private $banc_id            
   private $banc_descripcion   
   private $banc_numerocuenta  
   private $banc_oficial       
   private $banc_titular       
   private $banc_fec_apertura  
   private $banc_observaciones 

/*==============================================================*/
/* cheques */
/*==============================================================*/
//create cheque
   private $cheq_id              
   private $clpr_id              
   private $trca_id              
   private $cheq_numero          
   private $cheq_fechaentrega    
   private $cheq_fecharecepcion  
   private $cheq_fechavencimiento
   private $cheq_depositado      
   private $cheq_monto           
   private $cheq_propietario     
   private $cheq_rechazado       
   private $cheq_fcehadeposito   

/*==============================================================*/
/* cliente_proveedor                                     */
/*==============================================================*/
//create cliente_proveedor
   private $clpr_id              
   private $para_id              
   private $clpr_tipoiden        
   private $clpr_identificacion  
   private $clpr_nombre          
   private $clpr_nombrecomercial 
   private $clpr_direccion       
   private $clpr_telefono1       
   private $clpr_telefono2       
   private $clpr_mail            
   private $clpr_contacto        
   private $clpr_fechanacimiento 
   private $clpr_saldo_cta       
   private $clpr_web             
   private $clpr_fechacreacion   
   private $clpr_fechamodificacion
   private $clpr_observaciones   
   private $clpr_estado          

/*==============================================================*/
/* cobranza                                              */
/*==============================================================*/
//create cobranza
   private $cobr_id              
   private $clpr_id              
   private $para_id              
   private $cobr_numfactura      
   private $cobr_fechareg        
   private $cobr_totalfactura    
   private $cobr_pago            
   private $cobr_saldo           
   private $cobr_numrecibo       
   private $cobr_estado          

/*==============================================================*/
/* log                                                   */
/*==============================================================*/
//create log
   private $log_id               
   private $usua_id              
   private $para_id              
   private $log_timestamp        
   private $log_proceso          
   private $log_descripcion      
   private $log_modulo           
   private $log_pc               
   private $log_usuario          
   private $log_accion           

/*==============================================================*/
/* movimiento_caja                                       */
/*==============================================================*/
//create movimiento_caja
   private $moca_id              
   private $usua_id              
   private $para_id              
   private $moca_fecha           
   private $moca_nombre          
   private $moca_observacion     
   private $moca_valor           
   private $moca_cobranzas       
   private $moca_nd              
   private $moca_ingresos        
   private $moca_compras         
   private $moca_pagos           
   private $moca_nc              
   private $moca_egresos         
   private $moca_inicial         
   private $moca_retiros         
   private $moca_ctactec         
   private $moca_ctactep         
   private $moca_venta_efectivo  
   private $moca_venta_tarjeta   
   private $moca_venta_cheque    
   private $moca_ndc             

/*==============================================================*/
/* catalogo  */
/*==============================================================*/
//create catalogo
   private $cata_id             
   private $cata_tipo           

/*==============================================================*/
/* parametro                                             */
/*==============================================================*/
//create parametro
   private $para_id              
   private $cata_id              
   private $para_descripcion     
   private $para_tipo		    
   private $para_valor           

/*==============================================================*/
/* permiso                                              */
/*==============================================================*/
//create permiso
   private $perm_id             
   private $perm_nombre         
   private $primary key (perm_id)

/*==============================================================*/
/* producto                                             */
/*==============================================================*/
//create producto
   private $prod_id              
   private $prod_nombre          
   private $prod_precioc         
   private $prod_stock           
   private $prod_stockmin        
   private $prod_stockmax        
   private $prod_codigobarras    
   private $prod_codigoprod      
   private $prod_foto            
   private $prod_costopromedio   
   private $prod_precio1         
   private $prod_precio2         
   private $prod_precio3         
   private $prod_precio4         
   private $prod_feccreacion     
   private $prod_costolifo       
   private $prod_costofifo       

/*==============================================================*/
/* productos  */
/*==============================================================*/
//create atributo_valor
   private $atva_id             
   private $para_id             
   private $prod_id             
   private $atva_descripcion    

/*==============================================================*/
/* promocion                                             */
/*==============================================================*/
//create promocion
   private $prom_id             
   private $prod_id             
   private $prom_fechai         
   private $prom_fechaf         
   private $prom_porcentaje     
   private $prom_precio         
   private $prom_fechar         

/*==============================================================*/
/* registro_gain                                         */
/*==============================================================*/
//create registro_gain
   private $regi_id              
   private $para_id              
   private $regi_fecha           
   private $regi_descripcion     
   private $regi_valor           

/*==============================================================*/
/* rol                                                 */
/*==============================================================*/
//create rol
   private $role_id             
   private $usua_id             
   private $perm_id             
   private $role_descripcion    

/*==============================================================*/
/* salida_mercaderia                                     */
/*==============================================================*/
//create salida_mercaderia
   private $same_id            
   private $prod_id            
   private $para_id            
   private $same_descipcion    
   private $same_costo         
   private $same_precio        
   private $same_cantidad      

/*==============================================================*/
/* transaccion_cabecera                                  */
/*==============================================================*/
//create transaccion_cabecera
   private $trca_id            
   private $clpr_id            
   private $para_id            
   private $trca_numreg        
   private $trca_numfactura    
   private $trca_fecha         
   private $trca_saldo         
   private $trca_formapago     
   private $trca_descuento     
   private $trca_total         
   private $trca_subtotal      
   private $trca_iva           
   private $trca_recargo       
   private $trca_numerocheque  
   private $trca_proforma      
   private $trca_anulado       

/*==============================================================*/
/* transaccion_detalle                                   */
/*==============================================================*/
//create transaccion_detalle
   private $trde_id             
   private $trca_id             
   private $prod_id             
   private $trde_cantidad       
   private $trde_precio         
   private $trde_descuento      


/*==============================================================*/
/* usuario                                              */
/*==============================================================*/
//create usuario
   private $usua_id             
   private $usua_login          
   private $usua_clave          
   private $usua_nombre         
   private $usua_direccion      
   private $usua_telefono       
   private $usua_celular        
   private $usua_mail           
