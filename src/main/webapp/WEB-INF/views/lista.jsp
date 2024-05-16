<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>Lista de productos</title>
</head>
<body>
<h1>Lista de productos</h1>
<table border="1">
  <tr>
    <th>Código</th>
    <th>Nombre</th>
    <th>Descripción</th>
    <th>Imagen</th>
    <th>Categoría</th>
    <th>Precio</th>
    <th>Existencias</th>
    <th>Detalle</th>
  </tr>
  <c:forEach items="${productos}" var="producto">
    <tr>
      <td>${producto.codigoProducto}</td>
      <td>${producto.nombre}</td>
      <td>${producto.descripcion}</td>
      <td><img src="${pageContext.request.contextPath}/img/${producto.imagen}" alt="Imagen del producto" style="width:100px; height:100px;"></td>
      <td>${producto.categoria.nombre}</td>
      <td>${producto.precio}</td>
      <td>${producto.existencias}</td>
      <td><a href="<c:url value='/productos/${producto.id}'/>">Ver detalle</a></td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
