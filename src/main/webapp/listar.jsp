<%-- 
    Document   : listar.jsp
    Created on : 15-nov-2021, 17:36:18
    Author     : DAW2
--%>

<%@page import="java.util.List"%>
<%@page import="modelo.Productos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Montserrat+Alternates:wght@100;600;900&display=swap" rel="stylesheet">
    </head>
    <body style="background-image: url('./imagenes/background.jfif'); background-size: cover; background-repeat: no-repeat;">
        <nav class="navbar navbar-expand-lg navbar-light bg-light" style=' background-color: hsl(0, 100%, 70%, 0.8);'>
            <a class="navbar-brand" href="#" style="font-family: 'Montserrat Alternates', sans-serif;"><b>Terminales Moviles</b></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                 
                </ul>
            </div>
        </nav>
        <div class="container" style="background-color: white; opacity:0.95; position: relative; top: 80px; border-radius: 15px  ">
            <div class="container"> <br>  
        <h1 align="center" >Listado de terminales</h1>
        <br>
        </div>
    
        <%
            List<Productos> listaProductos = ( List<Productos> )request.getAttribute("listado");
            String mensaje = ( String ) request.getAttribute("mensaje");
            String num_paginasStr = (String) request.getAttribute("num_paginas");
            int num_paginas = Integer.parseInt(num_paginasStr);
         %>
         
         <h2 class="alert alert-success" style="padding-bottom: 20px; "><%=mensaje%></h2>
         
         <div class="container">
         <table class="table">
             <thead class="table-info">
             <th>Precio</th>
             <th>Nombre</th>
             <th colspan="1">Terminal</th>
             <th colspan="1">Fecha de lanzamiento</th>
             <th></th>
             <th></th>
             </thead>
         <% for ( Productos p: listaProductos ) { %>
         <tbody>
         <tr>
             <td><%=p.getNombre() %></td>
             <td><%=p.getPrecio() %></td>
             <td><%=p.getTerminal() %> </td>
             <td><%=p.getFecha()%> </td>
             <td><a href="Servlet?op=borrar&id=<%=p.getId() %>" onclick="return Confirmation() ">Borrar</a></td>
             <td><a href="Servlet?op=actualizar&id=<%=p.getId() %>">Actualizar</a></td>
         </tr>
         </tbody>
         <%}%>
         </table>
         <a class="btn btn-primary" href="Servlet?op=insertar">Nuevo Producto</a>
         
         <p align="center">Mostrando pagina ${pagina} de ${num_paginas}</p>
         </div>
         <% for (int p=1;p<=num_paginas;p++){
             out.println("<a class='col-2' href='Servlet?op=listar&pagina="+p+"'>"+" "+p+" "+"</a>");
            } 
         %>
    </div>
         <script>
             function Confirmation(){
                 if (confirm("¿Está seguro/a de que quiere eliminar el producto?")  ) {
                    alert("El registro de eliminará");
                    return true;
                } else {
                    return false;
                }
                 
         }
             
             
             
         </script>
    </body>
</html>
