<%-- 
    Document   : inicio
    Created on : 11-may-2015, 1:44:17
    Author     : edisonarango
--%>

<%@page import="modelo.hospital.HoraMedica"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="vista/lib/bootstrap-datepicker/css/bootstrap-datepicker3.min.css"/>
        <link rel="stylesheet" href="vista/lib/bootstrap/css/bootstrap.min.css"/>       
        <link rel="stylesheet" href="vista/css/estilos.css"/>
        <!--<link rel="stylesheet" href="lib/bootstrap/css/bootstrap-theme.min.css"/>-->
        
        <script src="vista/lib/jquery1.11.2.js"></script>
        <script src="vista/lib/bootstrap/js/bootstrap.min.js"></script>
        <script src="vista/lib/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script> 
        <script src="vista/lib/bootstrap-datepicker/locales/bootstrap-datepicker.es.min.js"></script> 
        <script type="text/javascript" src="vista/js/funciones.js"></script>
        
        <title>Sistema de Reserva de Horas Médicas</title>
    </head>
    <body>
        <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">SISREHMED</a>
        </div>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right" style="padding-right: 15px">
            <li><a href="#">Ingresar al sistema</a></li>
          </ul>
        </div>
      </div>
    </div>

    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
            <form method="get" action="Busqueda">
            <ul class="nav nav-sidebar">
              <li><h4 style="color: #555">BUSQUEDA</h4></li>
              <li>
                <select class="input-sidebar form-control" name="tipo" style="width:80%;">
                  <option value="medico">Búsqueda por médico</option>
                  <option value="especialidad">Búsqueda por especialidad</option>
                </select>
  <!--              <div class="btn-group">
                  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                    Buqueda <span class="caret"></span>
                  </button>
                  <ul class="dropdown-menu" role="menu">
                    <li><a href="#">Busqueda por médico</a></li>
                    <li><a href="#">Busqueda por especialidad</a></li>
                  <li class="divider"></li>
                      <li><a href="#">Separated link</a></li>
                  </ul>
                </div>-->
              </li>
              <li>
                  <label for="inputmedico">Médico</label>
                  <input type="text" name="medico" class="form-control input-sidebar" id="inputmedico" placeholder="Ingrese nombre de médico">
              </li>
              <li>
                  <label for="fechaIn">Desde:</label>
                  <div class="input-group date input-sidebar">
                      <input type="text" name="fechaIn" class="form-control input-medium" placeholder="DD/MM/AAAA">
                      <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i>
                      </span>
                  </div>
              </li>
              <li>
                  <label for="fechaFin">Hasta:</label>
                  <div class="input-group date input-sidebar">
                      <input type="text" name="fechaFin" class="form-control input-medium" placeholder="DD/MM/AAAA">
                      <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i>
                      </span>
                  </div>
              </li>
              <li><button type="submit" class="btn btn-inverse btn-sm btn-block input-sidebar"><b>Buscar</b></button></li>

            </ul>
          </form> 
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
            <h2 class="sub-header" style="padding-top: -13px;margin-top: -13px;">Resultados de la busqueda</h2>
          <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>#</th>
                  <%
                      ArrayList<String> fechasRango = (ArrayList<String>)request.getAttribute("fechasRango");
                      if (fechasRango!=null) {  
                      for(int i=0; i<fechasRango.size(); i++){
                          out.print("<th>"+fechasRango.get(i)+"</th>");
                      }
                      }
                  %>
<!--                  <th>11/05/2015</th>
                  <th>12/05/2015</th>
                  <th>13/05/2015</th>
                  <th>14/05/2015</th>
                  <th>15/05/2015</th>-->
                </tr>
              </thead>
              <tbody>
                  <%
                      ArrayList<HoraMedica> horasLibres = (ArrayList<HoraMedica>)request.getAttribute("horasLibres");
                      if (horasLibres!=null) {
                              
                      for(int i=0;i<24;i++){
                          out.print("<tr>");
                          out.print("<td>"+i+":00</td>");
                          for(int j=0; j<fechasRango.size(); j++){
                              HoraMedica horaEncontrada = null;
                              for (int k=0;k<horasLibres.size();k++){
                                  if (horasLibres.get(k).getFecha().equals(fechasRango.get(j))&&horasLibres.get(k).getHora().equals(i+"")) {
                                     horaEncontrada = horasLibres.get(k);
                                  }
                              }
                              if (horaEncontrada != null) {
                                   out.print("<td><button class='btn'>Reservar</button></td>");   
                               }
                              else{
                                  out.print("<td><p style='padding-left:20px;'>----</p></td>");
                              }
                               
                            }
                          out.print("</tr>");
                      }
                      }
                   %>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
        
<!--     <div class="navbar navbar-default navbar-fixed-top">
            <div class="container-fluid">
              <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
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
        </div>-->
<!--        <div class="container-fluid">
                <div class="row-fluid">
                        <div class="span2">
                  sidebar
                  <div class="sidebar-nav-fixed" data-spy="affix" data-offset-top="140">
                    <form>
                        <ul class="nav nav-list">
                          <li><h4>Busqueda</h4></li>
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
                          <li><a href="#">Carousel</a></li>
                        </ul>
                    </form>
                  </div>
                </div>
                <div class="span10">
                    <table class="table">
                        <thead><tr><th>#</th></tr></thead>
                        <tbody><tr><td>#</td></tr></tbody>
                    </table>
                </div>
                </div>
        </div>-->
    </body>
</html>
