![header](doc/header.png)

# Trabajo Práctico Nº2

Autor:

* Yoel Yamil López

### Neo4j - Modelado e implementación

Se desea modelar la información de alumnos de la facultad en Neo4j, de modo tal que se puedan resolver las siguientes consultas:

1.  Listado de alumnos que cursaron materias juntos, pero en esta materia son de distintos grupos.

2. Listado de docentes que dictaron más de una materia.

3. Tu propio promedio de calificaciones.

4. Listado para recomendación de alumnos que cursaron en el mismo curso y cuatrimestre pero que no se conocen entre sí.

5. Listado de los conocidos de tus conocidos, hasta longitud 2, e indefinida.

6. Apellido y nombre de alumnos que también son docentes (ver pedido adicional para esta consulta).

7. Dado un alumno en particular, se quiere obtener el listado de materias electivas que no haya cursado, en base al criterio de haber sido cursadas por otros alumnos que cursaron por lo menos una en común con él.

8. Hacer una variante del ítem anterior, recomendando sólo si el otro alumno es un contacto (directo o indirecto).

9. Consulta adicional, decidida por el alumno.

---

#### Tareas

- Diseñar el modelo para soportar las consultas.

- Armar el gráfico de dominio, indicando las propiedades contempladas para nodos y relaciones.

- Justificar las decisiones tomadas para armar el modelo (sobre tipos de nodos, relaciones, etc.).

- Cargar los datos correspondientes al dominio.

- Resolver las consultas solicitadas en Cypher.

---

#### Entregables

- Gráfico de dominio reflejando el modelo armado, con sus justificaciones correspondientes.

- Código Cypher de las cargas de datos.

- Enunciado de última consulta.

- Para cada consulta, código Cypher correspondiente y screenshots de las pantallas, una con el grafo y otra con la lista de valores obtenidos.

- Para la consulta del ítem nro. 6, además de su resolución, indicar una variante en el modelado (puntualmente pensando en esta consulta) que también permita obtener el resultado, cómo sería la estrategia y el código de la variante.

- Impresión de pantalla del grafo completo correspondiente a la base de datos generada.

![footer](doc/footer.png)