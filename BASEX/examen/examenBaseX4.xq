<html>
  <body>
  <table border="2">
   <tr>
   <th>Referencia Pedido</th>
   <th>Referencia Cliente</th>
   <th>Referencia Articulo</th>
   <th>Fecha</th>
   </tr>
  {
    for $cliente in doc ("neptunoExamen.xml") //cliente
    for $articulo in doc ("neptunoExamen.xml") //articulo
    where $cliente/RefCliente="PICCO"
    return 
      <tr>
      <td>{$cliente/RefPedido}</td>
      <td>{$cliente/RefCliente}</td>
      
      <td>{$articulo/RefArticulo}</td>
      <td>{$cliente/FechaPedido}</td>
      </tr>
    
  }
  
 </table> 
  
  
  </body>


</html>