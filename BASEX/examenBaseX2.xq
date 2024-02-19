<html>
  <body>
  <table border="2">
   <tr>
   <th>RefProveedor</th>
   <th>Nombre Proveedor</th>
   <th>Direccion</th>
   <th>Codigo Postal</th>
   <th>Pais</th>
   <th>Telefono</th>
   </tr>
  {
    for $proveedor in doc ("neptunoExamen.xml") //proveedor
    where $proveedor/PaisProveedor="Francia"
    return 
      <tr>
      <td>{$proveedor/ReferenciaProveedor}</td>
      <td>{$proveedor/NombreProveedor}</td>
      <td>{$proveedor/DireccionProveedor}</td>
      <td>{$proveedor/CodigoPostal}</td>
      <td>{$proveedor/PaisProveedor}</td>
      <td>{$proveedor/TelefonoProveedor}</td>
      </tr>
    
  }
  
 </table> 
  
  
  </body>


</html>