<%-- 
    Document   : alumnos
    Created on : 23 nov. 2021, 10:56:57 a. m.
    Author     : Diego
--%>

<%@page import="modelo.AlumnosDAD"%>
<%@page import="modelo.Alumnos"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listado de alumnos</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    </head>
    <body>
        <h1>Listado de alumnos</h1>
        <div class="container">
            <div class="row">
                <a class="btn btn-primary col-md-4 m-4" href="AlumnosControler?accion=nuevo">Agregar Alumno</a>
                <table class="table table-primary">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Nombre</th>
                            <th>Apellido</th>
                            <th>Email</th>
                            <th>Telefono</th>
                            <th>Modificar</th>
                            <th>Eliminar</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                           List<Alumnos> resultado = null;
                           AlumnosDAD alumno = new AlumnosDAD();
                           resultado = alumno.listarAlumnos();
                           for(int i=0; i<resultado.size(); i++){
                           String ruta ="AlumnosControler?accion=modificar&id="+resultado.get(i).getId();
                           String rutaE ="AlumnosControler?accion=eliminar&id="+resultado.get(i).getId();
                           %>
                           <tr>
                               <td> <%=resultado.get(i).getId() %></td>
                               <td> <%=resultado.get(i).getNombre() %></td>
                               <td> <%=resultado.get(i).getApellido() %></td>
                               <td> <%=resultado.get(i).getEmail() %></td>
                               <td> <%=resultado.get(i).getTelefono() %></td>
                               <td><a class=text-succes" href=<%= ruta %>>X</a></td>
                               <td><a class=text-danger" href=<%= rutaE %>>X</a></td>
                           </tr>
                           <%
                            }
                         %>
                    </tbody>
                </table>
            </div>
            
        </div>
    </body>
</html>
