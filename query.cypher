// 1. Listado de alumnos que cursaron materias juntos, pero en esta materia son de distintos grupos.
MATCH (a:Persona)-[r1:CURSAR]->(m:Materia)<-[r2:CURSAR]-(b:Persona)
WHERE r1.curso = r2.curso AND r1.grupo <> r2.grupo
RETURN DISTINCT a, b;

// 2. Listado de docentes que dictaron más de una materia.
MATCH (a:Persona)-[r:DICTAR]->(m:Materia)
WITH a, count(r) as cantidad
WHERE cantidad >= 2
RETURN a;

// 3. Tu propio promedio de calificaciones.
MATCH (a:Persona {apellido: "Alegre"})-[r:CURSAR {estado: "Aprobado"}]->(m:Materia)
RETURN a, avg(r.calificación)

// 4. Listado para recomendación de alumnos que cursaron en el mismo curso y cuatrimestre pero que no se conocen entre sí.
MATCH (a:Persona)-[r1:CURSAR]->(m:Materia)<-[r2:CURSAR]-(b:Persona)
WHERE r1.curso = r2.curso AND r1.cuatrimestre = r2.cuatrimestre
WITH a, b
WHERE NOT (a)-[:CONOCER]-(b)
RETURN DISTINCT a, b

// 5. Listado de los conocidos de tus conocidos, hasta longitud 2, e indefinida.
MATCH (a:Persona {apellido: "Alegre"})-[r:CONOCER*..2]->(b:Persona)
RETURN DISTINCT a, b

// 6. Apellido y nombre de alumnos que también son docentes (ver pedido adicional para esta consulta).
MATCH (a:Persona)-[r:CURSAR]->(m:Materia)
WHERE a.rol = "docente"
RETURN a.nombre, a.apellido;

// 7. Dado un alumno en particular, se quiere obtener el listado de materias electivas que no haya cursado, 
// en base al criterio de haber sido cursadas por otros alumnos que cursaron por lo menos una en común con él.
MATCH (a:Persona {apellido: "Barrio"})-[r1:CURSAR]->(ma:Materia), (b:Persona)-[r2:CURSAR]->(mb:Materia)
WHERE NOT EXISTS ((a:Persona)-[:CURSAR]-(mb:Materia)) AND r1.curso = r2.curso 
AND r1.cuatrimestre = r2.cuatrimestre AND mb.electiva = "Si"
RETURN DISTINCT mb;

// 8. Hacer una variante del ítem anterior, recomendando sólo si el otro alumno es un contacto (directo o indirecto).
MATCH (a:Persona {apellido: "Barrio"})-[r1:CURSAR]->(ma:Materia), (b:Persona)-[r2:CURSAR]->(mb:Materia)
WHERE NOT EXISTS ((a:Persona)-[:CURSAR]-(mb:Materia)) AND r1.curso = r2.curso
AND r1.cuatrimestre = r2.cuatrimestre AND mb.electiva = "Si"
AND EXISTS ((a:Persona)-[:CONOCER]-(b:Persona))
RETURN DISTINCT mb;

// 9. Obtener el nombre, apellido del alumno con mejor promedio.
MATCH (a:Persona)-[r:CURSAR {estado: "Aprobado"}]->(m:Materia)
WITH a, avg(r.calificación) as promedio
ORDER BY promedio DESC
RETURN a.nombre, a.apellido, promedio
LIMIT 1;