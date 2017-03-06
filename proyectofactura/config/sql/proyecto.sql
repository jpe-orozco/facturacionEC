/*=======================================================*/
/* dbms name:      mysql 5.0                             */
/* created on:     24/02/2017 16:40:57                   */
/*=======================================================*/

/* Tablas de parametria y generales*/
drop table if exists almacen;
drop table if exists banco;
drop table if exists catalogo;
drop table if exists parametro;
drop table if exists cliente_proveedor;

/* Registro de mov. monetario   */
drop table if exists cobranza;



drop table if exists movimiento_caja;
drop table if exists cheque;
drop table if exists registro_gain;

/* Productos de stock   */
drop table if exists producto;
drop table if exists atributo_valor;
drop table if exists promocion;
drop table if exists ajuste_stock;

/* Registro de movimiento de stock */
drop table if exists salida_mercaderia;
drop table if exists transaccion_cabecera;
drop table if exists transaccion_detalle;

/* Tablas de administracion*/
drop table if exists rol;
drop table if exists usuario;
drop table if exists permiso;
DROP TABLE IF EXISTS log;


/*==============================================================*/
/* table: ajuste_stock  Ajuste manual a stock                   */
/*==============================================================*/
create table ajuste_stock
(
   ajst_id              int not null auto_increment,
   prod_id              int not null,
   ajst_stock           int not null,
   ajst_stockanterior   int not null,
   ajst_motivo          char(3) DEFAULT NULL,
   ajst_usuario         char(10) COLLATE utf8_bin not null,
   ajst_fecha           datetime not null,
   primary key (ajst_id)
);

alter table ajuste_stock comment 'la tabla tbsotck';

/*==============================================================*/
/* table: almacen Descripcion de sucursal/matriz                */
/*==============================================================*/
create table almacen
(
   alma_id              int not null auto_increment,
   para_id              int not null, /* ciudad ubicacion*/
   alma_nombre          char(50) COLLATE utf8_bin not null,
   alma_ruc             char(14) COLLATE utf8_bin not null,
   alma_codsri          char(3) COLLATE utf8_bin not null,
   alma_telefono        char(10) COLLATE utf8_bin ,
   alma_direccion       char(50) COLLATE utf8_bin ,
   alma_mail            char(10) COLLATE utf8_bin ,
   alma_porpvp          double DEFAULT NULL,
   alma_tvaloracion     varchar(10) COLLATE utf8_bin DEFAULT NULL,
   primary key (alma_id)
);

/*==============================================================*/
/* table: banco  cta bancaria con la que se maneja la empresa   */
/*==============================================================*/
create table banco
(
   banc_id              int not null auto_increment,
   banc_descripcion     char(50) COLLATE utf8_bin not null,
   banc_numerocuenta    char(10) COLLATE utf8_bin ,
   banc_oficial         char(10) COLLATE utf8_bin ,
   banc_titular         char(10) COLLATE utf8_bin ,
   banc_fec_apertura    char(10) COLLATE utf8_bin ,
   banc_observaciones   text COLLATE utf8_bin,
   primary key (banc_id)
);

/*==============================================================*/
/* table: cheques emitidos en compras/ recibidos en ventas      */
/*==============================================================*/
create table cheque
(
   cheq_id              int not null auto_increment,
   clpr_id              int not null,  /* Codigo cliente*/
   trca_id              int not null,  /* #Transaccion */
   cheq_numero          int not null,
   cheq_fechaentrega    date not null,
   cheq_fecharecepcion  date not null,
   cheq_fechavencimiento date not null,
   cheq_depositado      int,
   cheq_monto           double not null,
   cheq_propietario     char(1) not null,
   cheq_rechazado       char(10),
   cheq_fcehadeposito   date not null,
   primary key (cheq_id)
);

/*==============================================================*/
/* table: cliente_proveedor                                     */
/*==============================================================*/
create table cliente_proveedor
(
   clpr_id              int not null auto_increment,
   para_id              int not null, /* codigo de ciudad*/
   clpr_tipoiden        char(1) not null,
   clpr_identificacion  char(14) not null,
   clpr_nombre          char(50)  COLLATE utf8_bin not null,
   clpr_nombrecomercial char(20) COLLATE utf8_bin ,
   clpr_direccion       CHAR(50) NOT NULL,
   clpr_telefono1       char(10) not null,
   clpr_telefono2       char(10),
   clpr_mail            char(50) not null,
   clpr_contacto        TEXT COLLATE utf8_bin,
   clpr_fechanacimiento date not null,
   clpr_saldo_cta       double not null,
   clpr_web             char(10) COLLATE utf8_bin ,
   clpr_fechacreacion   datetime not null,
   clpr_fechamodificacion datetime not null,
   clpr_observaciones     text COLLATE utf8_bin,
   clpr_estado            char(1) not null,
   primary key (clpr_id)
);

/*==============================================================*/
/* table: cobranza                                              */
/*==============================================================*/
create table cobranza
(
   cobr_id              int not null auto_increment,
   clpr_id              int not null,
   para_id              int not null,
   cobr_numfactura      char(10),
   cobr_fechareg        date not null,
   cobr_totalfactura    double not null,
   cobr_pago            double not null,
   cobr_saldo           double not null,
   cobr_numrecibo       char(10),
   cobr_estado          char(1),
   primary key (cobr_id)
);

/*==============================================================*/
/* table: log                                                   */
/*==============================================================*/
create table log
(
   log_id               int not null auto_increment,
   usua_id              int not null,
   para_id              int not null,
   log_timestamp        timestamp not null,
   log_proceso          char(10) COLLATE utf8_bin ,
   log_descripcion      char(10) COLLATE utf8_bin ,
   log_modulo           char(10) COLLATE utf8_bin ,
   log_pc               char(10) COLLATE utf8_bin ,
   log_usuario          char(10) not null,
   log_accion           char(10) COLLATE utf8_bin ,
   primary key (log_id)
);

/*==============================================================*/
/* table: movimiento_caja                                       */
/*==============================================================*/
create table movimiento_caja
(
   moca_id              int not null auto_increment,
   usua_id              int not null,
   para_id              int not null,
   moca_fecha           datetime not null,
   moca_nombre          char(50)  COLLATE utf8_bin not null,
   moca_observacion     char(50)  COLLATE utf8_bin not null,
   moca_valor           double not null,
   moca_cobranzas       double not null,
   moca_nd              double not null,
   moca_ingresos        double not null,
   moca_compras         double not null,
   moca_pagos           double not null,
   moca_nc              double not null,
   moca_egresos         double not null,
   moca_inicial         double not null,
   moca_retiros         double not null,
   moca_ctactec         double not null,
   moca_ctactep         double not null,
   moca_venta_efectivo  double not null,
   moca_venta_tarjeta   double not null,
   moca_venta_cheque    double not null,
   moca_ndc             double not null,
   primary key (moca_id)
);

alter table movimiento_caja comment 'este el movimiento resumen de 

la caja x dia';

/*==============================================================*/
/* table: catalogo  Tabla de catalogos a usar en el sistema     */
/*==============================================================*/
create table catalogo
(
   cata_id              int not null auto_increment,
   cata_tipo            char(10) COLLATE utf8_bin ,
   primary key (cata_id)
);

/*==============================================================*/
/* table: parametro                                             */
/*==============================================================*/
create table parametro
(
   para_id              int not null auto_increment,
   cata_id              int not null,
   para_descripcion     char(10) COLLATE utf8_bin ,
   para_tipo		char(1),
   para_valor           char(50),
   primary key (para_id)
);

/*==============================================================*/
/* table: permiso                                              */
/*==============================================================*/
create table permiso
(
   perm_id              int not null auto_increment,
   perm_nombre          char(50)  COLLATE utf8_bin not null,
   primary key (perm_id)
);

/*==============================================================*/
/* table: producto                                             */
/*==============================================================*/
create table producto
(
   prod_id              int not null auto_increment,
   prod_nombre          char(50)  COLLATE utf8_bin not null,
   prod_precioc         double not null,
   prod_stock           int not null,
   prod_stockmin        int not null,
   prod_stockmax        int not null,
   prod_codigobarras    char(10),
   prod_codigoprod      char(10),
   prod_foto            char(10),
   prod_costopromedio   double not null,
   prod_precio1         double not null,
   prod_precio2         double not null,
   prod_precio3         double not null,
   prod_precio4         double not null,
   prod_feccreacion     date not null,
   prod_costolifo       double not null,
   prod_costofifo       double not null,
   primary key (prod_id)
);

/*==============================================================*/
/* table: atributo_valor Descripcion ampliada de los productos  */
/*==============================================================*/
create table atributo_valor
(
   atva_id              int not null auto_increment,
   para_id              int not null,
   prod_id              int not null,
   atva_descripcion     char(20) COLLATE utf8_bin ,
   primary key (atva_id)
);

/*==============================================================*/
/* table: promocion                                             */
/*==============================================================*/
create table promocion
(
   prom_id              int not null auto_increment,
   prod_id              int not null,
   prom_fechai          date not null,
   prom_fechaf          date not null,
   prom_porcentaje      double not null,
   prom_precio          double not null,
   prom_fechar          datetime not null,
   primary key (prom_id)   
);

/*==============================================================*/
/* table: registro_gain                                         */
/*==============================================================*/
create table registro_gain
(
   regi_id              int not null auto_increment,
   para_id              int not null,
   regi_fecha           date not null,
   regi_descripcion     char(10)  COLLATE utf8_bin ,
   regi_valor           double not null,
   primary key (regi_id)
);

/*==============================================================*/
/* table: rol                                                 */
/*==============================================================*/
create table rol
(
   role_id              int not null auto_increment,
   usua_id              int not null,
   perm_id              int not null,
   role_descripcion     char(10) COLLATE utf8_bin ,
   primary key (role_id)
);

/*==============================================================*/
/* table: salida_mercaderia                                     */
/*==============================================================*/
create table salida_mercaderia
(
   same_id              int not null auto_increment,
   prod_id              int not null,
   para_id              int not null,
   same_descipcion      char(10) COLLATE utf8_bin ,
   same_costo           double not null,
   same_precio          double not null,
   same_cantidad        int not null,
   primary key (same_id)
);

alter table salida_mercaderia comment 'se relaciona con la tabla 

parametro por el motivo de baja y ';

/*==============================================================*/
/* table: transaccion_cabecera                                  */
/*==============================================================*/
create table transaccion_cabecera
(
   trca_id              int not null auto_increment,
   clpr_id              int not null,
   para_id              int not null,
   trca_numreg          int not null,
   trca_numfactura      int,
   trca_fecha           timestamp not null,
   trca_saldo           double not null,
   trca_formapago       char(1),
   trca_descuento       double not null,
   trca_total           double not null,
   trca_subtotal        double not null,
   trca_iva             double not null,
   trca_recargo         double not null,
   trca_numerocheque    int,
   trca_proforma        boolean,
   trca_anulado         boolean,
   primary key (trca_id)
);

alter table transaccion_cabecera comment 'se relaciona con 
parametro por la forma de pago';

/*==============================================================*/
/* table: transaccion_detalle                                   */
/*==============================================================*/
create table transaccion_detalle
(
   trde_id              int not null auto_increment,
   trca_id              INT NOT NULL,
   prod_id              int not null,
   trde_cantidad        int not null,
   trde_precio          double not null,
   trde_descuento       double,
   primary key (trde_id)
);

/*==============================================================*/
/* table: usuario                                              */
/*==============================================================*/
create table usuario
(
   usua_id              int not null auto_increment,
   usua_login           char(10)  COLLATE utf8_bin not null,
   usua_clave           char(10)  COLLATE utf8_bin not null,
   usua_nombre          char(20)  COLLATE utf8_bin not null,
   usua_direccion       char(20) COLLATE utf8_bin ,
   usua_telefono        char(10),
   usua_celular         char(10),
   usua_mail            char(10) COLLATE utf8_bin ,
   primary key (usua_id)
);

alter table ajuste_stock add constraint fk_ajuste_stock_prod 

foreign key (prod_id)
      references producto (prod_id) on delete restrict on update 

restrict;

alter table almacen add constraint fk_almacen_ciudad foreign key 

(para_id)
      references parametro (para_id) on delete restrict on update 

restrict;

ALTER TABLE atributo_valor ADD CONSTRAINT fk_atributo_param 

foreign key (para_id)
      references parametro (para_id) on delete restrict on update 

restrict;

ALTER TABLE atributo_valor ADD CONSTRAINT fk_atributo_prod 

foreign key (prod_id)
      REFERENCES producto (prod_id) ON DELETE RESTRICT ON UPDATE 

RESTRICT;

ALTER TABLE cheque ADD CONSTRAINT fk_chq_cliente FOREIGN KEY 

(clpr_id)
      references cliente_proveedor (clpr_id) on delete restrict on 

update restrict;

alter table cheque add constraint fk_cheque_trn foreign key 

(trca_id)
      references transaccion_cabecera (trca_id) on delete restrict 

on update restrict;

alter table cobranza add constraint fk_cli_deb_cred foreign key 

(clpr_id)
      references cliente_proveedor (clpr_id) on delete restrict on 

update restrict;

alter table cobranza add constraint fk_cobranza_tipo foreign key 

(para_id)
      references parametro (para_id) on delete restrict on update 

restrict;

alter table log add constraint fk_log_param foreign key (para_id)
      references parametro (para_id) on delete restrict on update 

restrict;

alter table log add constraint fk_log_usuario foreign key 

(usua_id)
      references usuario (usua_id) on delete restrict on update 

restrict;

alter table movimiento_caja add constraint fk_caja_usuario foreign 

key (usua_id)
      references usuario (usua_id) on delete restrict on update 

restrict;

alter table movimiento_caja add constraint fk_caja_tipmov foreign 

key (para_id)
      references parametro (para_id) on delete restrict on update 

restrict;

alter table promocion add constraint fk_promo_prod foreign key 

(prod_id)
      references producto (prod_id) on delete restrict on update 

restrict;

ALTER TABLE registro_gain ADD CONSTRAINT fk_ing_gasto_tipo FOREIGN 

key (para_id)
      references parametro (para_id) on delete restrict on update 

restrict;

ALTER TABLE rol ADD CONSTRAINT fk_rol_usuario FOREIGN KEY 

(usua_id)
      references usuario (usua_id) on delete restrict on update 

restrict;

alter table rol add constraint fk_rol_permiso foreign key 

(perm_id)
      references permiso (perm_id) on delete restrict on update 

restrict;

ALTER TABLE salida_mercaderia ADD CONSTRAINT fk_salida_prod 

foreign key (prod_id)
      references producto (prod_id) on delete restrict on update 

restrict;

ALTER TABLE salida_mercaderia ADD CONSTRAINT fk_salida_motivo 

foreign key (para_id)
      references parametro (para_id) on delete restrict on update 

restrict;

ALTER TABLE transaccion_cabecera ADD CONSTRAINT fk_trn_cliente 

foreign key (clpr_id)
      references cliente_proveedor (clpr_id) on delete restrict on 

update restrict;

alter table transaccion_cabecera add constraint fk_trn_tipo 

foreign key (para_id)
      references parametro (para_id) on delete restrict on update 

restrict;

alter table transaccion_detalle add constraint fk_detalle_trn 

FOREIGN KEY (trca_id)
      references transaccion_cabecera (trca_id) on delete restrict 

on update restrict;

alter table transaccion_detalle add constraint fk_trn_prod foreign 

key (prod_id)
      references producto (prod_id) on delete restrict on update 

restrict;

alter table parametro add constraint fk_cata_param foreign key 

(cata_id)
      references catalogo (cata_id) on delete restrict on update 

restrict;

ALTER TABLE cliente_proveedor ADD CONSTRAINT fk_tip_client FOREIGN 

KEY (para_id)
      references parametro (para_id) on delete restrict on update 

restrict;