<%-- 
    Document   : Nuevo_prod
    Created on : 1/10/2018, 11:00:46 PM
    Author     : Marii
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Bootstrap -->
        <link href="../Recursos/Bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
        <script src="../Recursos/Bootstrap/include/jquery-3.3.1.min.js" type="text/javascript"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed --> 
        <script src="../Recursos/Bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="../Recursos/Bootstrap/include/popper.min.js" type="text/javascript"></script>
        <link href="../Recursos/css/estilos.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Compras</title>
        
    </head>
    
    <body>
        
      <header class="sticky-top">
        <nav class="navbar navbar-expand-lg navbar-light bg-primary">
            <a href="Compras.jsp" class="navbar-brand text-white">Compras</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#compras_navbar" aria-controls="compras_navbar" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="compras_navbar">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a href="Compras.jsp" class="nav-link text-white">Proovedores</a>
                    </li>                                                
                    <li class="nav-item">
                        <a href="Productos.jsp" class="nav-link text-white">Productos</a>
                    </li>                                                
                    <li class="nav-item">
                        <a href="List_com.jsp" class="nav-link text-white">Lista&nbsp;de&nbsp;Compras</a>
                    </li>                     
                </ul>   
               <form class="form-inline my-2 my-lg-0" action="../CerrarSesion">                
                    <button class="btn-outline-primary barra text-white my-2 my-sm-0" id="cerrarSesion" type="submit">Cerrar Sesi&oacute;n</button>
                </form>
            </div>
        </nav>
    </header>
    <br><br>    
        
        <div id="principal">
            <div class="container-fluid">                 
                <div class="row">
                    <div style="background-color:#F5F5F5;" class="col-lg-3 col-md-3 col-sm-3 col-xs-12 form-style-5"> <!-- Seccion izquierda -->
                        <form method="POST" >
                            <center><div id="titulo" class="col-12">
                                <h3>Buscar&nbsp;Proveedor</h3>
                                </div></center>
                           <br>
                           <div class="radio">
                            <label>
                                <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1">
                                    Todos
                            </label>
                           </div>
                           <div class="radio">
                            <label>
                                <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
                                    Por&nbsp;RFC
                            </label>
                           </div><br>
                           <center><input type="text" name="rfcprov" placeholder="RFC" id="codprod" required></center>
                            <div>
                                <br>
                            </div>
                            <center><input type="submit" value="Buscar" style="background-color:#3366FF" name="buscar" class="btn btn-primary"></center>
                            <br>
                        </form>

                        <form method="POST" action="Nuevo_prod.jsp" >
                            <div>
                            <br>
                            </div>
                            <center><div id="titulo" class="col-12">
                                <h3>Proveedor</h3>
                                </div></center><br>
                            <center><input type="submit" value="Agregar"  name="nuevo" class="btn btn-success"></center>      
                            </form><div><br></div>
                            <form method="POST" action="Eli_prod.jsp" >                                
                            <center><input type="submit" value="Eliminar"  name="eliminar" class="btn btn-success"></center>      
                        </form>
                        <br>
                    </div>   
                    
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12"><!-- Seccion central --> 
                        
                            <center><div>
                                    <h3>Nuevo Proveedor</h3>
                            </div></center>                       
                        <br>
                        
                           <div>
                               <center><input type="text" name="rfcprov" placeholder="RFC" id="codprod" required></center>
                               <br>
                          <center><input type="text" name="nomprov" placeholder="Nombre" id="codprod" required></center>
                          <br>
                          <center><input type="text" name="dirprov" placeholder="Dirección" id="codprod" required></center>
                          <br>
                          <center><input type="number" name="numprov" placeholder="Teléfono" id="codprod" required></center>
                          <br>
                          <center><input type="text" name="corprov" placeholder="Correo" id="codprod" required></center>
                          <br>
                                    <div><center><input type="submit" value="Agregar" style="background-color:#3366FF" name="filtro" class="btn btn-primary"></center></div>
                            </div>
                    </div>
                </div>
            </div>            
            
        </div>
         
    </body>
</html>

