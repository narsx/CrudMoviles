<%-- 
    Document   : actualizar
    Created on : 22-nov-2021, 17:42:59
    Author     : DAW2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>
    <body>
        <div class="container">
        <h1 align="center">Modificar Terminal</h1> 
        
        <%
           String mensaje = ( String ) request.getAttribute("mensaje");
           String operacion = ( String ) request.getAttribute("operacion");
           if ( mensaje!=null) out.println(mensaje);
         %>
        
         <div class="container"><form action="Servlet">
            <input type="hidden" value="<%=operacion%>" name="op">
            <input type="hidden" value="${producto.id}" name="id" readonly></p></div>
              
            <div class="row">
                
                
                <div class="col-12 col-sm-6 col-lg-3"><p>Nombre:<input class="form-control" type="text" value="${producto.nombre}" name="nombre"></p></div>
                <div class="col-12 col-sm-6 col-lg-3"> <p>Terminal<input class="form-control" type="text" value="${producto.terminal}" name="terminal"></p></div>
                <div class="col-12 col-sm-6 col-lg-3"> <p>Precio:<input class="form-control" type="text" value="${producto.precio}" name="precio"></p></div>
                <div class="col-12 col-sm-6 col-lg-3"> <p>Lanzamiento:<input class="form-control" type="text" value="${producto.fecha}" name="fecha"></p></div>
           
           
                <div class="col-12 col-sm-6 col-lg-3"><input class="btn btn-primary" type="submit" value="Actualizar Producto"></div>
                
             </div>
                <a  href="Servlet?op=listar">Volver</a></div>
           </form>
              
            </div>
        </div>
    </body>
</html>
