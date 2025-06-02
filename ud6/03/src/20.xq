(:20. Mostrar el título y el número de autores que tiene cada título en etiquetas diferentes.:)
<libros>
{
for $libro in //book
return
<libro>
  <titulo>{$libro/title/text()}</titulo>
  <numAutores>{count($libro/author)}</numAutores>
</libro>
}
</libros>

