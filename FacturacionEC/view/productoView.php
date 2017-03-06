<!DOCTYPE HTML>
<html lang="es">
    <head>
        <meta charset="utf-8"/>
        <title>Facturación ecuador</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript" src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <style>
            input{
                margin-top:5px;
                margin-bottom:5px;
            }
            .right{
                float:right;
            }
        </style>
    </head>
    <body>
        <form action="<?php echo $helper->url("producto","crear"); ?>" method="post" class="col-lg-5">
            <h3>Añadir producto </h3>
            <hr/>            
                prod_id  	: <input type="text" name="prod_id" class="form-control"/>	
                prod_nombre  	: <input type="text" name="prod_nombre" class="form-control"/>	
                prod_precioc  	: <input type="text" name="prod_precioc" class="form-control"/>	
                prod_stock  	: <input type="text" name="prod_stock" class="form-control"/>	
                prod_stockmin  	: <input type="text" name="prod_stockmin" class="form-control"/>	
                prod_stockmax  	: <input type="text" name="prod_stockmax" class="form-control"/>	
                prod_codigobarras	: <input type="text" name="prod_codigobarras" class="form-control"/>	
                prod_codigoprod	: <input type="text" name="prod_codigoprod" class="form-control"/>	
                prod_foto  	: <input type="text" name="prod_foto" class="form-control"/>	
                prod_costopromedio	: <input type="text" name="prod_costopromedio" class="form-control"/>	
                prod_precio1  	: <input type="text" name="prod_precio1" class="form-control"/>	
                prod_precio2  	: <input type="text" name="prod_precio2" class="form-control"/>	
                prod_precio3  	: <input type="text" name="prod_precio3" class="form-control"/>	
                prod_precio4  	: <input type="text" name="prod_precio4" class="form-control"/>	
                prod_feccreacion 	: <input type="text" name="prod_feccreacion" class="form-control"/>	
                prod_costolifo 	: <input type="text" name="prod_costolifo" class="form-control"/>	
                prod_costofifo 	: <input type="text" name="prod_costofifo" class="form-control"/>
            <input type="submit" value="enviar" class="btn btn-success"/>                
        </form>
        
        <div class="col-lg-7">
            <h3>Productos</h3>
            <hr/>
        </div>
       </div>
        <section class="col-lg-7 producto" style="height:400px;overflow-y:scroll;">
            <?php foreach($allitems as $item) {?>
               <?php echo $item->prod_id; ?> -
                <?php echo $item->prod_nombre; ?> -
                <?php echo $item->prod_precioc; ?> -
                <?php echo $item->prod_stock; ?> -
                <?php echo $item->prod_stockmin; ?> -
                <?php echo $item->prod_stockmax; ?> -
                <?php echo $item->prod_codigobarras; ?> -
                <?php echo $item->prod_codigoprod; ?> -
                <?php echo $item->prod_foto; ?> -
                <?php echo $item->prod_costopromedio; ?> -
                <?php echo $item->prod_precio1; ?> -
                <?php echo $item->prod_precio2; ?> -
                <?php echo $item->prod_precio3; ?> -
                <?php echo $item->prod_precio4; ?> -
                <?php echo $item->prod_feccreacion; ?> -
                <?php echo $item->prod_costolifo; ?> -
                <?php echo $item->prod_costofifo; ?> -
                  <div class="right">
                    <a href="<?php echo $helper->url("producto","borrar"); ?>&prod_id=<?php echo $item->prod_id; ?>" class="btn btn-danger">Borrar</a>
                </div>
                <div class="right">
                    <a href="<?php echo $helper->url("producto","modificar"); ?>&&prod_id=<?php echo $item->prod_id;; ?>" class="btn btn-danger">Edit</a>
                </div>
                <hr/>
            <?php } ?>
        </section>        
        <footer class="col-lg-12">
            <hr/>
           FacturaciónECU - Copyright &copy; <?php echo  date("Y"); ?>
        </footer>
    </body>
</html>

