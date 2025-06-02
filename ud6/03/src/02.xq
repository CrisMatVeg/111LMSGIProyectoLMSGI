(:2. Listar titulos ordenador por titulo y con precio > 30:)
for $x in /bookstore/book
where $x/price>30
order by $x/title/text()
return $x/title/text()