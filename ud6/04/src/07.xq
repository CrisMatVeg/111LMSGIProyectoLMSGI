(:7. Eliminar el nodo estado en la factura F001:)
for $x in collection(facturas)
where $x//@id="F001"
return delete node $x/factura/estado