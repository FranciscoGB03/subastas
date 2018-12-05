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
                        <a href="acercade.jsp" class="nav-link text-white">Acerca&nbsp;de</a>
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
        <!--Columna izquierda-->
        <div class="col-xs-3 col-md-3 izquierda">
        	<div class="panel panel-default">
              <div class="panel-body">
          <img src="Recursos/imagenes/martillo.jpg" height="400" width="400"/>
              </div>
            </div>
        </div>
        <!--Columna Central-->
        <div class="col-xs-6 col-md-6 central" id="tabla">
             
              <center><h4 class="titulo">Martillo</h4></center>
              <br>
                   <center><table  style="margin-top:40px; ">
   <tbody>
    <tr>
        <td>Martillo de acero inoxidable<br>Marca: truper
            <br> Modelo: XC45 <br>
        Precio:$50.00</td>   
     
    </tr>  
    <tr>
        <td></td>
     <td><form action="venta.jsp"><button type="submit" class="btn btn-success" style="margin-top:15px;margin-left:100px;padding-right: 30px ">Pujar</button></form></td>                   
     
    </tr> 
  </tbody>
     </table></center>       
            
        </div>
        <!--columna de la derecha-->
        <div class="col-xs-3 col-md-3 derecha">
             <div class="jumbotron">
                 <center><h4>Participantes</h4></center>
                    <table class="table table-bordered" style="margin-top:40px; ">
                   <thead>
    <tr >
        <th scope="col"><center>Usuario</center></th>
      <th scope="col"><center>Monto</center></th>
       
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">Pedro Ramírez</th>
      <td>$100.00</td>     
    </tr>
    <tr>
      <th scope="row">Sebastián Lara</th>
      <td>$95.00</td>     
    </tr> 
    <tr>
      <th scope="row">Fabiola Romero</th>
      <td>$90.00</td>     
    </tr> 
  </tbody>
     </table>
                </div>
        </div>
    </div>
</div>
</body>
</html>
