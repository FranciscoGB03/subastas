<%-- 
    Document   : Nuevo_producto
    Created on : 2/10/2018, 08:26:13 AM
    Author     : Marii
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" 
        integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <link href="../Recursos/css/estilos.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Compras</title>
        
    </head>
    
    <body>
        
        <header class="sticky-top">
            
            <nav class="navbar navbar-expand-lg navbar-light barra">
                <div>
                    <a class="navbar-brand" style="color: white" >Compras</a>              
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="nav navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" href="Compras.jsp" style="color: white">Proveedores</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Productos.jsp" style="color: white">Productos</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="List_com.jsp" style="color: white">Lista&nbsp;de&nbsp;Compras</a>
                        </li>                        
                    </ul>
                     <ul class="nav navbar-nav navbar-right">
                        <li class="nav-item">
                            <a class="nav-link" href="" style="color: white">Salir</a>
                        </li>                                              
                    </ul>
                    </div> 
                </div>
            </nav>           

        </header>
        
        <div id="principal">
            <div class="container-fluid">
                 <div class="row">
                    <br>
                    <br>
                    <br>
                    <br>
                </div>
                <div class="row">
                    <div style="background-color:#F5F5F5;" class="col-lg-3 col-md-3 col-sm-3 col-xs-12 form-style-5"> <!-- Seccion izquierda -->
                        <form method="POST" >
                            <center><div id="titulo" class="col-12">
                                <h3>Buscar&nbsp;Producto</h3>
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
                                    Por&nbsp;ID
                            </label>
                           </div><br>
                           <center><input type="number" name="idprod" placeholder="ID" id="codprod" required></center>
                            <div>
                                <br>
                            </div>
                            <center><input type="submit" value="Buscar" style="background-color:#3366FF" name="buscar" class="btn btn-primary"></center>
                            <br>
                        </form>

                        <form method="POST" action="Nuevo_producto.jsp" >
                            <div>
                            <br>
                            </div>
                            <center><div id="titulo" class="col-12">
                                <h3>Producto</h3>
                                </div></center><br>
                            <center><input type="submit" value="Agregar"  name="nuevo" class="btn btn-success"></center>      
                            </form><div><br></div>
                            <form method="POST" action="Eli_producto.jsp" >                                
                            <center><input type="submit" value="Eliminar"  name="eliminar" class="btn btn-success"></center>      
                        </form>
                        <br>
                    </div>   
                    
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12"><!-- Seccion central --> 
                        
                            <center><div>
                                    <h3>Nuevo Producto</h3>
                            </div></center>                       
                        <br>
                        
                           <div>
                               <center><input type="number" name="idprod" placeholder="ID" id="codprod" required></center>
                               <br>
                          <center><input type="text" name="nomprod" placeholder="Nombre" id="codprod" required></center>
                          <br>
                          <center><input type="number" name="com" placeholder="Precio Compra" id="codprod" required></center>
                          <br>
                          <center><input type="number" name="ven" placeholder="Precio venta" id="codprod" required></center>
                          <br>
                          <center><input type="text" name="corprov" placeholder="Proveedor" id="codprod" required></center>
                          <br>
                                    <div><center><input type="submit" value="Agregar" style="background-color:#3366FF" name="filtro" class="btn btn-primary"></center></div>
                            </div>
                    </div>
                </div>
            </div>            
            
        </div>
         
    </body>
</html>
