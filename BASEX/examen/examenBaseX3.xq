<html>
  <body>
  <table border="2">
   <tr>
   <th>Referencia Cliente</th>
   <th>Nombre Cliente</th>
   <th>Direccion</th>
   <th>Ciudad</th>
   </tr>
  {
    for $cliente in doc ("neptunoExamen.xml") //cliente
    where $cliente/CiudadCliente="Madrid"
    return 
      <tr>
      <td>{$cliente/RefCliente}</td>
      <td>{$cliente/NombreCliente}</td>
      <td>{$cliente/DireccionCliente}</td>
      <td>{$cliente/CiudadCliente}</td>
      </tr>
    
  }
  
 </table> 
  
  
  </body>


</html>