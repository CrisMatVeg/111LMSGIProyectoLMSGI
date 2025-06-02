(:Lista el titulo de los libros ordenados por titulo:)
for $x in /bookstore/book
order by $x/title/text()
return $x/title/text()