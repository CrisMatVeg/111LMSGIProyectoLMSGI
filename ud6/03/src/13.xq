(:13. Mostrar los libros ordenador primero por “category” y luego por “title” en una sola consulta.:)

for $book in /bookstore/book
order by $book/@category, $book/title/text()
return $book/title/text()
