(:6. Insertar un nuevo nodo estado con valor pagada dentro de en la factura F001:)
for $x in collection(facturas)
where $x//@id="F001"
return insert node <estado>Pagada</estado> into $x//factura