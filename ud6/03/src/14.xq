(:14. Mostrar cuántos libros hay, y etiquetarlo con “total”:)
let $book:=count(/bookstore/book)
return <total>{$book}</total>