<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Subastas</title>
<!--Enlace a estilos personalizados de COntabilidad-->
<link href="../Recursos/css/contabilidad.css" rel="stylesheet" type="text/css"/>
<!-- Bootstrap -->
<link href="../Recursos/Bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
<script src="../Recursos/Bootstrap/include/jquery-3.3.1.min.js" type="text/javascript"></script>
<!-- Include all compiled plugins (below), or include individual files as needed --> 
<script src="../Recursos/Bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="../Recursos/Bootstrap/include/popper.min.js" type="text/javascript"></script>
<!--Validacion de campos-->
<script src="../Recursos/js/Contabilidad.js" type="text/javascript"></script>
</head>

<body>    
    <header class="sticky-top">
        <nav class="navbar navbar-expand-lg navbar-light bg-primary">
            <a href="Contabilidad.jsp" class="navbar-brand text-white">Subastas</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#conta_navbar" aria-controls="conta_navbar" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="conta_navbar">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a href="index.jsp" class="nav-link text-white">Inicio</a>
                    </li> 
                    <li class="nav-item">
                        <a href="producto.jsp" class="nav-link text-white">Productos&nbsp;en&nbsp;subasta</a>
                    </li>  
                    <li class="nav-item">
                        <a href="venta.jsp" class="nav-link text-white">Acerca&nbsp;de</a>
                    </li> 
                </ul>   
               <form class="form-inline my-2 my-lg-0" action="../index.jsp">                
                    <button class="btn-outline-primary barra text-white my-2 my-sm-0" id="cerrarSesion" type="submit">Cerrar Sesi&oacute;n</button>
                </form>
            </div>
        </nav>
    </header>
    <br><br>
<!--Contenedor principal de la pagina-->
<div class="container-fluid">
    <!--HAciendo una fila para dividir el contenedor en columnas-->
    <div class="row">
        <!--Columna de la izquierda-->
        <div class="col-xs-3 col-md-3 izquierda">
        
        </div>
        <!--Columna Central-->
        <div class="col-xs-6 col-md-6 central" id="tabla">
            <div class="jumbotron">
                <div class="container">
                    <center><h4 class="titulo">Datos para transacción</h4></center>
                    <div class="container">
                        <form role="form" action="martillo.jsp" method="post">                                                                                              
                            <div class="form-group">
                                <label for="tarjeta">Número de tarjeta: </label>                                                        
                                <input id="tarjeta" name="tarjeta" class="form-control" type="number" required="required"/>
                            </div>                                                        
                            <div class="form-group">
                                <label for="vencimiento">Fecha de vencimiento :</label>                                                        
                                <input id="vencimiento" type="date" name="vencimiento" class="form-control">                                    
                            </div> 
                            <table>
                                <tbody>
                                    <tr>
                                     <td><div class="form-group">
                                <label for="seguridad">Código de seguridad:</label>                                                                
                                <input id="seguridad" name="seguridad" class="form-control" type="number" required="required"/>                                    
                            </div></td>
                            <td>
                            </td>
                            <td>                             
                            </td>
                             <td><div class="form-group">
                                <label for="nip">NIP:</label>                            	                                
                                <input id="nip" name="nip" class="form-control" type="number" required="required"/>                                    
                            </div>  </td>
                                    </tr>    
                                </tbody>
                            </table>
                                <button type="submit" class="btn btn-success" style="margin-top:15px;padding-right: 30px ">Finalizar</button>                               
                                </form>
                        
                          <form action="producto.jsp" method="post">
                              <center> <input type="submit" value="Regresar" class="btn btn-default"/></center>
                        </form>  
                    </div>
                </div>
            </div>
        </div>
        <!--columna de la derecha-->
        <div class="col-xs-3 col-md-3 derecha">
        </div>
    </div>
</div>
</body>
</html>

