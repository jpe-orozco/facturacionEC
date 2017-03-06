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
        <form action="<?php echo $helper->url("usuario","crear"); ?>" method="post" class="col-lg-5">
            <h3>Añadir usuario </h3>
            <hr/>
            Usuario: <input type="text" name="usua_login" class="form-control"/>
            Nombre: <input type="text" name="usua_nombre" class="form-control"/>
            Direccion: <input type="text" name="usua_direccion" class="form-control"/>
            Email: <input type="mail" name="usua_email" class="form-control"/>
            Contraseña: <input type="password" name="usua_clave" class="form-control"/>
            <input type="submit" value="enviar" class="btn btn-success"/>
        </form>
        
        <div class="col-lg-7">
            <h3>Usuarios</h3>
            <hr/>
        </div>
        <section class="col-lg-7 usuario" style="height:400px;overflow-y:scroll;">
            <?php foreach($allusers as $user) {?>
                <?php echo $user->usua_id; ?> -
                <?php echo $user->usua_login; ?> -
                <?php echo $user->usua_nombre; ?> -
                <?php echo $user->usua_direccion; ?> -
                <?php echo $user->usua_email; ?>
                <div class="right">
                    <a href="<?php echo $helper->url("usuario","borrar");?>&usua_id=<?php echo $user->usua_id; ?>" class="btn btn-danger">Borrar</a>
                </div>
                <div class="right">
                    <a href="<?php echo $helper->url("usuario","modif");?>&usua_id=<?php echo $user->usua_id; ?>" class="btn btn-danger">Edit</a>
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