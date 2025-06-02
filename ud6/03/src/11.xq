(:11. Mostrar el título y el autor de los libros del año 2005, y etiquetar cada uno de ellos con “lib2005”.:)
<libros>
{
 for $book in /bookstore/book
 where $book/year=2005
 return <lib2005>{$book/title/text()}, {$book/author/text()}</lib2005>
}
</libros>