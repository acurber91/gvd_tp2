// Creación de nodos PERSONA.
CREATE 
 (A: Persona { apellido: "Alegre", nombre: "Nicolás", email: "nicolas.alegre@utnfra.com", fechanac: "01/08/1999", rol: "alumno" } ),
 (B: Persona { apellido: "Barrio", nombre: "Manuel", email: "manuel.barrio@utnfra.com", fechanac: "10/12/2000", rol: "alumno" } ),
 (C: Persona { apellido: "Calvo", nombre: "Julio", email: "julio.calvo@utnfra.com", fechanac: "01/01/2000", rol: "alumno" } ),
 (S: Persona { apellido: "Salas", nombre: "Rocío", email: "rocio.salas@utnfra.com", fechanac: "18/04/1998", rol: "alumno" } ),
 (E: Persona { apellido: "Elizalde", nombre: "Alicia", email: "alicia.elizalde@utnfra.com", fechanac: "11/02/2000", rol: "alumno" } ),
 (U: Persona { apellido: "Ubeda", nombre: "Lucía", email: "lucia.ubeda@utnfra.com", fechanac: "24/07/1997", rol: "alumno" } ),

 (Cr: Persona { apellido: "Armas", nombre: "Cristóbal", email: "cristobal.armas@utnfra.com", fechanac: "31/10/1966", rol: "docente" } ),
 (Ca: Persona { apellido: "Campillo", nombre: "Gonzalo", email: "gonzalo.campillo@utnfra.com", fechanac: "12/03/1984", rol: "docente" } ),
 (P: Persona { apellido: "Piñeiro", nombre: "Lorenzo", email: "lorenzo.piñeiro@utnfra.com", fechanac: "29/05/1980", rol: "docente" } ),
 (Ar: Persona { apellido: "Arrieta", nombre: "Mario", email: "mario.arrieta@utnfra.com", fechanac: "06/08/1977", rol: "docente" } ),
 (Z: Persona { apellido: "Zapatero", nombre: "José", email: "jose.zapatero@utnfra.com", fechanac: "11/01/1961", rol: "docente" } ),
 (Co: Persona { apellido: "Corral", nombre: "Antonio", email: "antonio.corral@utnfra.com", fechanac: "10/11/1960", rol: "docente" } ),
 (MT: Persona { apellido: "Sarmiento", nombre: "María Teresa", email: "teresa.sarmiento@utnfra.com", fechanac: "14/03/1964", rol: "docente" } );

 // Creacion de nodos MATERIA.
CREATE 
 (m1: Materia { id: "1", nombre: "Economía", electiva: "No", especialidad: "Ingeniería Electrónica" } ),
 (m2: Materia { id: "2", nombre: "Proyecto Final", electiva: "No", especialidad: "Ingeniería Electrónica" } ),
 (m3: Materia { id: "3", nombre: "Bioelectrónica y Microsistemas", electiva: "Si", especialidad: "Ingeniería Electrónica" } ),
 (m4: Materia { id: "4", nombre: "Redes Móviles Avanzadas", electiva: "Si", especialidad: "Ingeniería Electrónica" } ),
 (m5: Materia { id: "5", nombre: "Electrónica Industrial", electiva: "Si", especialidad: "Ingeniería Electrónica" } ),
 (m6: Materia { id: "6", nombre: "Procesamiento Embebido de Señales", electiva: "Si", especialidad: "Ingeniería Electrónica" } ),
 (m7: Materia { id: "7", nombre: "Instrumentación y Control de Procesos", electiva: "Si", especialidad: "Ingeniería Electrónica" } );

// Creación de relaciones CURSAR.
MATCH (Alegre: Persona { apellido: "Alegre"}), (m1: Materia { id: "1"} ) CREATE (Alegre)-[:CURSAR {curso: "6-11-R", año: "2020", grupo: "1", cuatrimestre: "1", estado: "Aprobado", calificación: 9 } ]->(m1);
MATCH (Alegre: Persona { apellido: "Alegre"}), (m2: Materia { id: "2"} ) CREATE (Alegre)-[:CURSAR {curso: "6-11-R", año: "2020", grupo: "1", cuatrimestre: "1", estado: "Aprobado", calificación: 7 } ]->(m2);
MATCH (Alegre: Persona { apellido: "Alegre"}), (m3: Materia { id: "3"} ) CREATE (Alegre)-[:CURSAR {curso: "6-11-R", año: "2020", grupo: "1", cuatrimestre: "1", estado: "Aprobado", calificación: 8 } ]->(m3);
MATCH (Alegre: Persona { apellido: "Alegre"}), (m4: Materia { id: "4"} ) CREATE (Alegre)-[:CURSAR {curso: "6-11-R", año: "2020", grupo: "1", cuatrimestre: "1", estado: "Aprobado", calificación: 8 } ]->(m4);
MATCH (Barrio: Persona { apellido: "Barrio"}), (m1: Materia { id: "1"} ) CREATE (Barrio)-[:CURSAR {curso: "6-11-R", año: "2020", grupo: "2", cuatrimestre: "1", estado: "Aprobado", calificación: 6 } ]->(m1);
MATCH (Barrio: Persona { apellido: "Barrio"}), (m2: Materia { id: "2"} ) CREATE (Barrio)-[:CURSAR {curso: "6-11-R", año: "2020", grupo: "2", cuatrimestre: "1", estado: "Aprobado", calificación: 8 } ]->(m2);
MATCH (Barrio: Persona { apellido: "Barrio"}), (m3: Materia { id: "3"} ) CREATE (Barrio)-[:CURSAR {curso: "6-11-R", año: "2020", grupo: "2", cuatrimestre: "1", estado: "Aprobado", calificación: 5 } ]->(m3);
MATCH (Barrio: Persona { apellido: "Barrio"}), (m4: Materia { id: "4"} ) CREATE (Barrio)-[:CURSAR {curso: "6-11-R", año: "2020", grupo: "2", cuatrimestre: "1", estado: "Aprobado", calificación: 7 } ]->(m4);
MATCH (Calvo: Persona { apellido: "Calvo"}), (m1: Materia { id: "1"} ) CREATE (Calvo)-[:CURSAR {curso: "6-11-R", año: "2020", grupo: "2", cuatrimestre: "1", estado: "Aprobado", calificación: 7 } ]->(m1);
MATCH (Calvo: Persona { apellido: "Calvo"}), (m2: Materia { id: "2"} ) CREATE (Calvo)-[:CURSAR {curso: "6-11-R", año: "2020", grupo: "2", cuatrimestre: "1", estado: "Aprobado", calificación: 10 } ]->(m2);
MATCH (Calvo: Persona { apellido: "Calvo"}), (m6: Materia { id: "6"} ) CREATE (Calvo)-[:CURSAR {curso: "6-11-R", año: "2020", grupo: "1", cuatrimestre: "1", estado: "Aprobado", calificación: 7 } ]->(m6);
MATCH (Calvo: Persona { apellido: "Calvo"}), (m7: Materia { id: "7"} ) CREATE (Calvo)-[:CURSAR {curso: "6-11-R", año: "2020", grupo: "1", cuatrimestre: "1", estado: "Aprobado", calificación: 8 } ]->(m7);
MATCH (Salas: Persona { apellido: "Salas"}), (m1: Materia { id: "1"} ) CREATE (Salas)-[:CURSAR {curso: "6-11-R", año: "2020", grupo: "1", cuatrimestre: "1", estado: "Aprobado", calificación: 10 } ]->(m1);
MATCH (Salas: Persona { apellido: "Salas"}), (m2: Materia { id: "2"} ) CREATE (Salas)-[:CURSAR {curso: "6-11-R", año: "2020", grupo: "1", cuatrimestre: "1", estado: "Aprobado", calificación: 10 } ]->(m2);
MATCH (Salas: Persona { apellido: "Salas"}), (m6: Materia { id: "6"} ) CREATE (Salas)-[:CURSAR {curso: "6-11-R", año: "2020", grupo: "2", cuatrimestre: "1", estado: "Aprobado", calificación: 9 } ]->(m6);
MATCH (Salas: Persona { apellido: "Salas"}), (m7: Materia { id: "7"} ) CREATE (Salas)-[:CURSAR {curso: "6-11-R", año: "2020", grupo: "2", cuatrimestre: "1", estado: "Aprobado", calificación: 9 } ]->(m7);
MATCH (Elizalde: Persona { apellido: "Elizalde"}), (m1: Materia { id: "1"} ) CREATE (Elizalde)-[:CURSAR {curso: "6-11-R", año: "2020", grupo: "2", cuatrimestre: "1", estado: "Aprobado", calificación: 8 } ]->(m1);
MATCH (Elizalde: Persona { apellido: "Elizalde"}), (m2: Materia { id: "2"} ) CREATE (Elizalde)-[:CURSAR {curso: "6-11-R", año: "2020", grupo: "1", cuatrimestre: "1", estado: "Aprobado", calificación: 9 } ]->(m2);
MATCH (Elizalde: Persona { apellido: "Elizalde"}), (m4: Materia { id: "4"} ) CREATE (Elizalde)-[:CURSAR {curso: "6-11-R", año: "2020", grupo: "2", cuatrimestre: "1", estado: "Aprobado", calificación: 7 } ]->(m4);
MATCH (Elizalde: Persona { apellido: "Elizalde"}), (m5: Materia { id: "5"} ) CREATE (Elizalde)-[:CURSAR {curso: "6-11-R", año: "2020", grupo: "2", cuatrimestre: "1", estado: "Aprobado", calificación: 9 } ]->(m5);
MATCH (Ubeda: Persona { apellido: "Ubeda"}), (m1: Materia { id: "1"} ) CREATE (Ubeda)-[:CURSAR {curso: "6-11-R", año: "2020", grupo: "2", cuatrimestre: "1", estado: "Aprobado", calificación: 7 } ]->(m1);
MATCH (Ubeda: Persona { apellido: "Ubeda"}), (m2: Materia { id: "2"} ) CREATE (Ubeda)-[:CURSAR {curso: "6-11-R", año: "2020", grupo: "2", cuatrimestre: "1", estado: "Aprobado", calificación: 6 } ]->(m2);
MATCH (Ubeda: Persona { apellido: "Ubeda"}), (m3: Materia { id: "3"} ) CREATE (Ubeda)-[:CURSAR {curso: "6-11-R", año: "2020", grupo: "1", cuatrimestre: "1", estado: "Aprobado", calificación: 6 } ]->(m3);
MATCH (Ubeda: Persona { apellido: "Ubeda"}), (m7: Materia { id: "7"} ) CREATE (Ubeda)-[:CURSAR {curso: "6-11-R", año: "2020", grupo: "1", cuatrimestre: "1", estado: "Aprobado", calificación: 7 } ]->(m7);
MATCH (Campillo: Persona { apellido: "Campillo"}), (m3: Materia { id: "3"} ) CREATE (Campillo)-[:CURSAR {curso: "6-11-R", año: "2020", grupo: "1", cuatrimestre: "1", estado: "Aprobado", calificación: 9 } ]->(m3);
MATCH (Piñeiro: Persona { apellido: "Piñeiro"}), (m7: Materia { id: "7"} ) CREATE (Piñeiro)-[:CURSAR {curso: "6-11-R", año: "2020", grupo: "2", cuatrimestre: "1", estado: "Aprobado", calificación: 9 } ]->(m7);

// Creación de relaciones DICTAR.
MATCH (Sarmiento: Persona { apellido: "Sarmiento"}), (m1: Materia { id: "1"} ) CREATE (Sarmiento)-[:DICTAR {curso: "6-11-R", año: "2020", cuatrimestre: "1" } ]->(m1);
MATCH (Armas: Persona { apellido: "Armas"}), (m2: Materia { id: "2"} ) CREATE (Armas)-[:DICTAR {curso: "6-11-R", año: "2020", cuatrimestre: "1" } ]->(m2);
MATCH (Campillo: Persona { apellido: "Campillo"}), (m3: Materia { id: "3"} ) CREATE (Campillo)-[:DICTAR {curso: "6-11-R", año: "2020", cuatrimestre: "1" } ]->(m3);
MATCH (Campillo: Persona { apellido: "Campillo"}), (m2: Materia { id: "2"} ) CREATE (Campillo)-[:DICTAR {curso: "6-11-R", año: "2020", cuatrimestre: "1" } ]->(m2);
MATCH (Corral: Persona { apellido: "Corral"}), (m4: Materia { id: "4"} ) CREATE (Corral)-[:DICTAR {curso: "6-11-R", año: "2020", cuatrimestre: "1" } ]->(m4);
MATCH (Arrieta: Persona { apellido: "Arrieta"}), (m5: Materia { id: "5"} ) CREATE (Arrieta)-[:DICTAR {curso: "6-11-R", año: "2020", cuatrimestre: "1" } ]->(m5);
MATCH (Piñeiro: Persona { apellido: "Piñeiro"}), (m6: Materia { id: "6"} ) CREATE (Piñeiro)-[:DICTAR {curso: "6-11-R", año: "2020", cuatrimestre: "1" } ]->(m6);
MATCH (Piñeiro: Persona { apellido: "Piñeiro"}), (m4: Materia { id: "4"} ) CREATE (Piñeiro)-[:DICTAR {curso: "6-11-R", año: "2020", cuatrimestre: "1" } ]->(m4);
MATCH (Zapatero: Persona { apellido: "Zapatero"}), (m7: Materia { id: "7"} ) CREATE (Zapatero)-[:DICTAR {curso: "6-11-R", año: "2020", cuatrimestre: "1" } ]->(m7);

// Creación de relaciones CONOCER.
MATCH (Alegre: Persona { apellido: "Alegre"}), (Barrio: Persona { apellido: "Barrio"}) CREATE (Alegre)-[:CONOCER]->(Barrio);
MATCH (Alegre: Persona { apellido: "Alegre"}), (Salas: Persona { apellido: "Salas"}) CREATE (Alegre)-[:CONOCER]->(Salas);
MATCH (Alegre: Persona { apellido: "Alegre"}), (Elizalde: Persona { apellido: "Elizalde"}) CREATE (Alegre)-[:CONOCER]->(Elizalde);
MATCH (Barrio: Persona { apellido: "Barrio"}), (Salas: Persona { apellido: "Salas"}) CREATE (Barrio)-[:CONOCER]->(Salas);
MATCH (Barrio: Persona { apellido: "Barrio"}), (Calvo: Persona { apellido: "Calvo"}) CREATE (Barrio)-[:CONOCER]->(Calvo);
MATCH (Barrio: Persona { apellido: "Barrio"}), (Ubeda: Persona { apellido: "Ubeda"}) CREATE (Barrio)-[:CONOCER]->(Ubeda);
MATCH (Barrio: Persona { apellido: "Barrio"}), (Alegre: Persona { apellido: "Alegre"}) CREATE (Barrio)-[:CONOCER]->(Alegre);
MATCH (Calvo: Persona { apellido: "Calvo"}), (Barrio: Persona { apellido: "Barrio"}) CREATE (Calvo)-[:CONOCER]->(Barrio);
MATCH (Salas: Persona { apellido: "Salas"}), (Alegre: Persona { apellido: "Alegre"}) CREATE (Salas)-[:CONOCER]->(Alegre);
MATCH (Salas: Persona { apellido: "Salas"}), (Barrio: Persona { apellido: "Barrio"}) CREATE (Salas)-[:CONOCER]->(Barrio);
MATCH (Salas: Persona { apellido: "Salas"}), (Ubeda: Persona { apellido: "Ubeda"}) CREATE (Salas)-[:CONOCER]->(Ubeda);
MATCH (Elizalde: Persona { apellido: "Elizalde"}), (Alegre: Persona { apellido: "Alegre"}) CREATE (Elizalde)-[:CONOCER]->(Alegre);
MATCH (Elizalde: Persona { apellido: "Elizalde"}), (Ubeda: Persona { apellido: "Ubeda"}) CREATE (Elizalde)-[:CONOCER]->(Ubeda);
MATCH (Ubeda: Persona { apellido: "Ubeda"}), (Elizalde: Persona { apellido: "Elizalde"}) CREATE (Ubeda)-[:CONOCER]->(Elizalde);
MATCH (Ubeda: Persona { apellido: "Ubeda"}), (Barrio: Persona { apellido: "Barrio"}) CREATE (Ubeda)-[:CONOCER]->(Barrio);