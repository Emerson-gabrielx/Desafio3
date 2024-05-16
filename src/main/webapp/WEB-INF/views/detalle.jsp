<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Detalle de Producto</title>
</head>
<body>
<h1>Detalle del producto</h1>
<div>
    <p><strong>Código:</strong> ${producto.codigoProducto}</p>
    <p><strong>Nombre:</strong> ${producto.nombre}</p>
    <p><strong>Descripción:</strong> ${producto.descripcion}</p>
    <p><strong>Imagen:</strong> <img src="${pageContext.request.contextPath}/img/${producto.imagen}" alt="Imagen del producto" style="width:300px; height:300px;"></p>
    <p><strong>Categoría:</strong> ${producto.categoria.nombre}</p>
    <p><strong>Precio:</strong> ${producto.precio}</p>
    <p><strong>Existencias:</strong> ${producto.existencias}</p>
</div>
</body>
</html>
