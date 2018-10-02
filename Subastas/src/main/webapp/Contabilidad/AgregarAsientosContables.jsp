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
        <nav class="navbar navbar-expand-lg navbar-light">
            <a href="Contabilidad.jsp" class="navbar-brand">Contabilidad</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#conta_navbar" aria-controls="conta_navbar" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="conta_navbar">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a href="CalendarioContable.jsp" class="nav-link">Calendario&nbsp;Contable</a>
                    </li>                            
                    <li class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" id="cuentas" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Cuentas Contables</a>
                        <div class="dropdown-menu" aria-labelledby="cuentas">
                            <a class="nav-link" href="CuentasCliente.jsp">Cuentas&nbsp;Clientes</a>
                            <a class="nav-link" href="CuentasProveedor.jsp">Cuentas&nbsp;Proveedores</a>
                            <a class="nav-link" href="CuentasEmpresa.jsp">Cuentas&nbsp;Empresa</a>
                            <a class="nav-link" href="CuentasSat.jsp">Cuentas&nbsp;SAT</a>                                    
                        </div>
                    </li>
                    <li class="nav-item">
                        <a href="AsientosContables.jsp" class="nav-link">Asientos&nbsp;Contables</a>
                    </li> 
                    <li class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" id="libros" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Libros</a>
                        <div class="dropdown-menu" aria-labelledby="libros">
                            <a class="nav-link" href="LibroDiario.jsp">Libro&nbsp;Diario</a>
                            <a class="nav-link" href="LibroMayor.jsp">Libro&nbsp;Mayor</a>                                    
                        </div>
                    </li>                            
                </ul>   
               <form class="form-inline my-2 my-lg-0" action="../index.jsp">                
                    <button class="btn barra text-black my-2 my-sm-0" id="cerrarSesion" type="submit">Cerrar Sesi&oacute;n</button>
                </form>
            </div>
        </nav>
    </header>           
<!--Contenedor principal de la pagina-->
<div class="container-fluid">
    <!--HAciendo una fila para dividir el contenedor en columnas-->
    <div class="row">
        <!--Columna de la izquierda-->
        <div class="col-xs-3 col-md-3 izquierda">            
            <div class="panel panel-default">
              <div class="panel-body">
                <div class="container">
                    <form action="" method="post">
                        <div class="row">                        
                            <div class="col-xs-2">
                                <input id="clave" name="clave" class="form-control" type="text" placeholder="ingresa clave a buscar"/>
                            </div>
                        </div>
                        <div class="row">                        
                            <div class="col-xs-2">
                              <input type="submit" value="buscar"/>       
                            </div>
                        </div>                    
                    </form>
                </div>
                <hr/>
                <table class="tabla">
                	<tr>
                    	<td>
                    		<a href="AgregarAsientosContables.jsp">Agregar Asiento Contable</a>
                        </td>
                    </tr>
                	<tr>
                    	<td>
                    		<a href="AgregarAsientosDetalles.jsp">Agregar Asientos Detalles</a>
                        </td>
                    </tr>
                </table>
              </div>
            </div>            
        </div>
        <!--Columna Central-->
        <div class="col-xs-6 col-md-6 central">
            <div class="jumbotron">
                <div class="container">
                    <h4 class="titulo">Agregar Asiento Contable</h4>
                    <br>
                    <div class="container">
                        <form action="" method="post">                
                            <div class="row">                        
                                <div class="col-xs-8">
                                    <label for="tipoa">Tipo de Asiento:</label>
                                </div>	
                                <div class="col-xs-4">      
                                    <select name="tipoa" id="tipoa" class="form-control">
                                        <option>Asientos operativos</option>
                                        <option>Asientos entradas</option>
                                        <option>Asientos salidas</option>
                                    </select>
                                </div>
                            </div>
                            <div class="row">                        
                                <div class="col-xs-8">
                                    <label for="numasiento">N&uacute;mero de asiento:</label>
                                </div>	
                                <div class="col-xs-4">      
                                    <input id="numasiento" name="numasiento" type="text" class="form-control"/>
                                </div>
                            </div>         
                            <div class="row">                        
                                <div class="col-xs-8">
                                    <label for="monto">Monto de Verificaci&oacute;n:</label>
                                </div>	
                                <div class="col-xs-4">      
                                    <input id="monto" name="monto" class="form-control" type="text"/>                                    
                                </div>
                            </div>
                            <div class="row">                        
                                <div class="col-xs-8">
                                    <label for="concepto">Concepto:</label>
                                </div>	
                                <div class="col-xs-4">      
                                    <input id="concepto" name="concepto" class="form-control" type="text"/>                                    
                                </div>
                            </div>
                            <div class="row">                        
                                <div class="col-xs-8">
                                    <label for="fecha">Fecha:</label>
                                </div>	
                                <div class="col-xs-4">      
                                    <input id="fecha" name="fecha" class="form-control" type="date"/>
                                </div>
                            </div>
                            <div class="row">                        
                                <div class="col-xs-8">
                                    <label for="movimiento">Tipo de Movimiento:</label>
                                </div>	
                                <div class="col-xs-4">      
                                    <input name="movimiento" type="radio" value=""/>Cargo
                                    <input name="movimiento" type="radio" value=""/>Abono
                                </div>
                            </div>
                             <div class="row">       
                                <br/>
                                <div class="col-xs-6">
                                    <input type="submit" value="Cancelar" class="btn-lg"/>
                                </div>	
                                <div class="col-xs-6">      
                                    <input type="submit" value="Agregar" class="btn-lg"/>
                                </div>
                            </div>                                                  
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!--columna de la derecha-->
        <div class="col-xs-3 col-md-3 derecha table-responsive">
        </div>
    </div>
</div>
</body>
</html>
