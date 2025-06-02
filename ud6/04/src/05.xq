(:5. Remplazar el nombre del cliente en la factura F001 por "tu nombre y Apellidos":)
for $x in collection(facturas)
where $x//@id="F001"
return replace value of node $x//cliente/nombre/text() with "Cristian Mateos"