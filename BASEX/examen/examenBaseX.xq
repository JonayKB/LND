<html>
  <body>
  <table border="2">
   <tr>
   <th>RefArticulo</th>
   <th>RefProveedor</th>
   <th>Nombre</th>
   <th>Categoria</th>
   <th>Precio Unidad</th>
   <th>Unidades</th>
   </tr>
  {
    for $articulo in doc ("neptunoExamen.xml") //articulo
    for $proveedor in doc ("neptunoExamen.xml") //proveedor
    where $articulo/NombreCategoria="Bebidas"
    return 
      <tr>
      <td>{$articulo/RefArticulo}</td>
      <td>{$proveedor/ReferenciaProveedor}</td>
      <td>{$articulo/NombreArticulo}</td>
      <td>{$articulo/NombreCategoria}</td>
      <td>{$articulo/PrecioUnidad}</td>
      <td>{$articulo/UnidadesExistencia}</td>
      </tr>
    
  }
  
 </table> 
  
  
  </body>


</html>