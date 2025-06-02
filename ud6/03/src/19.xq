(:19. Mostrar cada uno de los precios de los libros , y al final una etiqueta con la suma de los precios.:)
<precios>
  {
    for $precio in //book/price
    return $precio
  }
  <total>{sum(//book/price/xs:decimal(.))}</total>
</precios>