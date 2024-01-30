<html>
<body>
<table border="1">
<tr>
<th>Referencia Articulo</th>
<th>Nombre Articulo</th>
<th>Referencia Proveedor</th>
<th>Nombre Provedor</th>
</tr>
{
  for $articulo in doc ("neptuno.xml") //articulos
  for $proveedor in doc ("neptuno.xml") //proveedores
  where $articulo/ReferenciaProveedor=$proveedor/ReferenciaProveedor
  and $articulo/NombreCategoria="alimentación"
  return
  <tr>
  <td>{$articulo/RefArticulo}</td>
  <td>{$articulo/NombreArticulo}</td>
  <td>{$articulo/ReferenciaProveedor}</td>
  <td>{$proveedor/NombreProveedor}</td>
  <td>{$proveedor/../clientes/NombreCliente}</td>
  </tr>
}
</table>
</body>
</html>