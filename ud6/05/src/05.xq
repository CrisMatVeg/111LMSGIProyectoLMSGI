(:5. Nombre de los cursos que no han finalizado:)

(:for $x in collection("academia")/curso
where $x/@id="1"
return replace value of node $x/fin with "1/12/2025"
:)

for $x in collection("academia")/curso
where $x/fin > format-date(xs:date (current-date()),"[D]/[M]/[Y]")
return $x/nombre/text()