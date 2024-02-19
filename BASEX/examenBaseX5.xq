<html>
  <body>
  <table border="2">
   <tr>
   <th>Referencia Articulo</th>
   <th>Nombre Articulo</th>
   <th>Referencia Proveedor</th>
   <th>Nombre Proveedor</th>
   </tr>
  {
    for $proveedor in doc ("neptunoExamen.xml") //proveedor
    for $articulo in doc ("neptunoExamen.xml") //articulo
    where $articulo/NombreCategoria="Bebidas"
    return 
      <tr>
      
      <td>{$articulo/RefArticulo}</td>
      <td>{$articulo/NombreArticulo}</td>
      <td>{$proveedor/ReferenciaProveedor}</td>
      <td>{$proveedor/NombreProveedor}</td>
      </tr>
    
  }
  
 </table> 
  
  
  </body>


</html>