<%-- 
    Document   : inicio
    Created on : 11-may-2015, 1:44:17
    Author     : edisonarango
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="vista/css/estilos.css"/>
        <link rel="stylesheet" href="vista/lib/bootstrap/css/bootstrap.min.css"/>
        <!--<link rel="stylesheet" href="vista/lib/bootstrap-datepicker/css/bootstrap-datepicker.min.css"/>-->
        <!--<link rel="stylesheet" href="lib/bootstrap/css/bootstrap-theme.min.css"/>-->
        <script src="vista/lib/jquery1.11.2.js"></script>
        <script src="vista/lib/bootstrap/js/bootstrap.min.js"></script>
        <!--<script src="vista/lib/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>-->
        <script type="text/javascript" src="vista/js/funciones.js"></script>
        <title>Sistema de Reserva de Horas Médicas</title>
    </head>
    <body>
        <div class="navbar navbar-default navbar-fixed-top">
          <div class="navbar-inner">
            <div class="container-fluid">
              <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </a>
              <a class="brand" href="#">SISREHMED</a>
              <div class="nav-collapse collapse">
                <ul class="nav nav pills">
                          <li class="active"><a href="#">Inicio</a></li>
                        </ul>
                <ul class="nav nav-pills pull-right">
                          <li><a href="#">Ingreso al sistema</a></li>
                        </ul>
              </div>
            </div>
          </div>
        </div>
        <div class="container-fluid">
                <div class="row-fluid">
                        <div class="span2">
                  <!--sidebar-->
                  <div class="sidebar-nav-fixed" data-spy="affix" data-offset-top="140">
                  <ul class="nav nav-list">
                    <li><h4>Busqueda</h4></li>
                    <form>
                    <li>
                      <select name="tipo" style="width:80%;">
                        <option value="medico">Búsqueda por médico</option>
                        <option value="especialidad">Búsqueda por especialidad</option>
                      </select>
                    </li>
                      <li><label for="medico"><b><small>Médico:</small></b></label></li>
                    <li><input type="text" name="medico" class="input-medium"></li>
                    <li><label for="desde"><b><small>Desde:</small></b></label></li>
                    <li>
                        <div class="input-group date">
                            <input type="text" name="desde" class="form-control input-medium">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-th"></i>
                            </span>
                        </div>
                      </li>
                    <li class="divider"></li>
                     </form>
                    <li><a href="#">Carousel</a></li>
                  </ul>
                  </div>
                </div>
                <div class="span10">
                        <table class="table">
                                        <thead><tr><th>#</th></tr></thead>
                                        <tbody><tr><td>#</td></tr></tbody>
                                </table>
                </div>
                </div>
        </div>
    </body>
</html>
