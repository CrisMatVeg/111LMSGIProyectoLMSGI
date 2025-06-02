(:12. Mostrar los años de publicación, primero con for y luego con let. Etiquetar la salida con publicación:)

(:
<publicacion>
{
 for $book in /bookstore/book
 return $book/year
}
</publicacion>
:)

<publicacion>
{
 let $book:=/bookstore/book/year
 return $book
}
</publicacion>
