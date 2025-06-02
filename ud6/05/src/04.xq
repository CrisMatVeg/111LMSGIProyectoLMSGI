(:4. Listado de los cursos que imparte el profesor con el siguiente DNI: 33856315:)
for $x in collection("academia")/curso/profesor/dni["33856315"]
for $profesor in collection("academia")/profesor
where $x/profesor/@id=$x/profesor/@idref
return /curso/nombre/text()