<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Subastas</title>
<!--Enlace a estilos personalizados de COntabilidad-->
<link href="../Recursos/css/contabilidad.css" rel="stylesheet" type="text/css"/>
<!--Validacion de campos-->
<script src="../Recursos/js/Contabilidad.js" type="text/javascript"></script>
<!-- Bootstrap -->
<link href="../Recursos/Bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
<script src="../Recursos/Bootstrap/include/jquery-3.3.1.min.js" type="text/javascript"></script>
<!-- Include all compiled plugins (below), or include individual files as needed --> 
<script src="../Recursos/Bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="../Recursos/Bootstrap/include/popper.min.js" type="text/javascript"></script>
</head>
<body>    
    <header class="sticky-top">
        <nav class="navbar navbar-expand-lg navbar-light bg-primary">
            <a href="Contabilidad.jsp" class="navbar-brand text-white">Ventas</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#conta_navbar" aria-controls="conta_navbar" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="conta_navbar">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a href="Clientes.jsp" class="nav-link text-white">Clientes</a>
                    </li>                            
                    <li class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle text-white" id="cuentas" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Atencion</a>
                        <div class="dropdown-menu bg-primary" aria-labelledby="cuentas">
                            <a class="nav-link text-white" href="Pedido.jsp">&nbsp;Pedido</a>
                            <a class="nav-link text-white" href="Orden de Venta.jsp">&nbsp;Orden de Venta</a>
                                                             
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle text-white" id="cuentas" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Salida Ventas</a>
                        <div class="dropdown-menu bg-primary" aria-labelledby="cuentas">
                            <a class="nav-link text-white" href="Factura.jsp">&nbsp;Factura</a>
                        </div>
                    </li> 
                    <li class="nav-item">
                        <a href="Estadisticas.jsp" class="nav-link text-white">Estadisticas</a>
                    </li>  
                                       
                </ul>   
               <form class="form-inline my-2 my-lg-0" action="../index.jsp">                
                    <button class="btn-outline-primary barra text-white my-2 my-sm-0" id="cerrarSesion" type="submit">Cerrar Sesi&oacute;n</button>
                </form>
            </div>
        </nav>
    </header>
    <center>
<form>
    <br>
    <br>
    <br>
    <br>
    <label for="Codigo">Cliente:</label>
    
    <input type="text" placeholder="Escribe aqui" maxlength="30"ame="nombre" id="nombre"></form>
   <br>
    <form>
        <label for="Codigo">Tipo :</label>
        <input type="text" placeholder="Escribe aqui" maxlength="30"ame="nombre" id="nombre"></form>
   <br>
    <form>
        <label for="Codigo">Numero:</label>
    <input type="text" placeholder="Escribe aqui" maxlength="30"ame="nombre" id="nombre"></form>
   <br>
    <form>
        <label for="Codigo">Fecha:</label>
    <input type="text" placeholder="Escribe aqui" maxlength="30"ame="nombre" id="nombre"></form>
    <br>
    <form>
        <label for="Codigo">Codigo:</label>
    <input type="text" placeholder="Escribe aqui" maxlength="30"ame="nombre" id="nombre"></form>
    <br>
    <form>
        <label for="Codigo">Razon Social:</label>
        <input type="text" placeholder="Escribe aqui" maxlength="30"ame="nombre" id="nombre"></form>
        
    <br>
         <form>
        <label for="Codigo">Direccion:</label>
        <input type="text" placeholder="Escribe aqui" maxlength="30"ame="nombre" id="nombre"></form>
        
    <br>
         <form>
        <label for="Codigo">No.Pedido:</label>
        <input type="text" placeholder="Escribe aqui" maxlength="30"ame="nombre" id="nombre"></form>
    <br>
         <form>
        <label for="Codigo">Forma de Pago:</label>
        <input type="text" placeholder="Escribe aqui" maxlength="30"ame="nombre" id="nombre"></form>
    <br>
         <form>
        <label for="Codigo">Banco:</label>
        <input type="text" placeholder="Escribe aqui" maxlength="30"ame="nombre" id="nombre"></form>
    
    
    <br>
    
    <left>
    <input type="submit" value="Actualizar">
    <input type="submit" value="Salir">
    </left>
    </center>
    </body>
</html>
