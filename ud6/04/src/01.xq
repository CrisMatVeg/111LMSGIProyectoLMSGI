(:1. Listar el nombre de todos los clientes:)
for $x in collection(facturas)
return $x//cliente/nombre/text()