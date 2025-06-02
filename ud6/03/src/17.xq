(:17. Mostrar el título del libro, su precio y su precio con el IVA incluido, cada uno con su propia etiqueta.
Ordenado de precio con IVA (4% en España):)
for $libro in //book
let $precio := xs:decimal($libro/price)
let $iva := $precio * 1.04
order by $iva
return
<libro>
<titulo>{$libro/title/text()}</titulo>
<precio>{$precio}</precio>
<precioIVA>{format-number($iva, '0.00')}</precioIVA>
</libro>