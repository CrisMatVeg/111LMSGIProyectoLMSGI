(:Mostrar el título del libro cuando tenga más de dos autores:)
for $book in /bookstore/book
where count($book/author)>2
return $book/title/text()