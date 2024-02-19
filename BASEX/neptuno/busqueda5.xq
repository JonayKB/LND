<html>
<body>
<table border="2">
<th>
<td>Referencia Arituclo</td>
<td>Nombre Articulo</td>
<td>Referencia Provedor</td>
<td>Nombre Provedor</td>
<td>Referencia Cliente</td>
<td>Nombre Cliente</td>
</th>
{
  
  for $articulo in doc ("neptuno.xml") //articulos
  for $cliente in doc ("neptuno.xml") //clientes
  where $articulo/RefCliente = $cliente/RefCliente
  and $articulo/NombreCategoria = "bebidas"
  return 
    <tr>
    <td>{$articulo/RefArticulo}</td>
    <td>{$articulo/NombreArticulo}</td>
    <td>{$articulo/../proveedores/ReferenciaProveedor}</td>
    <td>{$articulo/../proveedores/NombreProveedor}</td>
    <td>{$cliente/RefCliente}</td>
    <td>{$cliente/NombreCliente}</td>
    </tr>
  
}
</table>

</body>

</html>