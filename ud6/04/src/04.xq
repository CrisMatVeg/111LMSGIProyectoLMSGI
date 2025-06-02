(:4. Mostrar el total de la factura 2:)
for $x in collection(facturas)
where $x/factura/@id="F002"
return $x//total/text()

(:doc("facturas/factura2.xml")//total/text():)