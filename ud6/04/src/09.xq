(:9. Actualizar todas las facturas con importe inferior a 200 con el valor 100:)
for $x in collection(facturas)
where $x//importeTotal<200
return replace value of node $x//importeTotal  with 200