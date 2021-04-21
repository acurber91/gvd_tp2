![header](doc/header.png)

# Trabajo Práctico Nº2

Autor:

* Agustín Curcio Berardi

Docente:

* Yoel Yamil López

### Neo4j - Modelado e implementación

---

**1. Listado de alumnos que cursaron materias juntos, pero en esta materia son de distintos grupos.**

Query:

    MATCH (a:Persona)-[r1:CURSAR]->(m:Materia)<-[r2:CURSAR]-(b:Persona)
    WHERE r1.curso = r2.curso AND r1.grupo <> r2.grupo
    RETURN DISTINCT a, b;

Resultados:

<p align="center">
    <img src="doc/graph_punto_1.png"><br>
    <b>Figura 1</b>. Grafo del punto 1.
</p>

    ╒══════════════════════════════════════════════════════════════════╤══════════════════════════════════════════════════════════════════╕
    │"a"                                                               │"b"                                                               │
    ╞══════════════════════════════════════════════════════════════════╪══════════════════════════════════════════════════════════════════╡
    │{"nombre":"Rocío","email":"rocio.salas@utnfra.com","rol":"alumno",│{"nombre":"Lucía","email":"lucia.ubeda@utnfra.com","rol":"alumno",│
    │"fechanac":"18/04/1998","apellido":"Salas"}                       │"fechanac":"24/07/1997","apellido":"Ubeda"}                       │
    ├──────────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────────┤
    │{"nombre":"Nicolás","email":"nicolas.alegre@utnfra.com","rol":"alu│{"nombre":"Lucía","email":"lucia.ubeda@utnfra.com","rol":"alumno",│
    │mno","fechanac":"01/08/1999","apellido":"Alegre"}                 │"fechanac":"24/07/1997","apellido":"Ubeda"}                       │
    ├──────────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────────┤
    │{"nombre":"Rocío","email":"rocio.salas@utnfra.com","rol":"alumno",│{"nombre":"Alicia","email":"alicia.elizalde@utnfra.com","rol":"alu│
    │"fechanac":"18/04/1998","apellido":"Salas"}                       │mno","fechanac":"11/02/2000","apellido":"Elizalde"}               │
    ├──────────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────────┤
    │{"nombre":"Nicolás","email":"nicolas.alegre@utnfra.com","rol":"alu│{"nombre":"Alicia","email":"alicia.elizalde@utnfra.com","rol":"alu│
    │mno","fechanac":"01/08/1999","apellido":"Alegre"}                 │mno","fechanac":"11/02/2000","apellido":"Elizalde"}               │
    ├──────────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────────┤
    │{"nombre":"Lucía","email":"lucia.ubeda@utnfra.com","rol":"alumno",│{"nombre":"Rocío","email":"rocio.salas@utnfra.com","rol":"alumno",│
    │"fechanac":"24/07/1997","apellido":"Ubeda"}                       │"fechanac":"18/04/1998","apellido":"Salas"}                       │
    ├──────────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────────┤
    │{"nombre":"Alicia","email":"alicia.elizalde@utnfra.com","rol":"alu│{"nombre":"Rocío","email":"rocio.salas@utnfra.com","rol":"alumno",│
    │mno","fechanac":"11/02/2000","apellido":"Elizalde"}               │"fechanac":"18/04/1998","apellido":"Salas"}                       │
    ├──────────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────────┤
    │{"nombre":"Julio","email":"julio.calvo@utnfra.com","rol":"alumno",│{"nombre":"Rocío","email":"rocio.salas@utnfra.com","rol":"alumno",│
    │"fechanac":"01/01/2000","apellido":"Calvo"}                       │"fechanac":"18/04/1998","apellido":"Salas"}                       │
    ├──────────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────────┤
    │{"nombre":"Manuel","email":"manuel.barrio@utnfra.com","rol":"alumn│{"nombre":"Rocío","email":"rocio.salas@utnfra.com","rol":"alumno",│
    │o","fechanac":"10/12/2000","apellido":"Barrio"}                   │"fechanac":"18/04/1998","apellido":"Salas"}                       │
    ├──────────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────────┤
    │{"nombre":"Rocío","email":"rocio.salas@utnfra.com","rol":"alumno",│{"nombre":"Julio","email":"julio.calvo@utnfra.com","rol":"alumno",│
    │"fechanac":"18/04/1998","apellido":"Salas"}                       │"fechanac":"01/01/2000","apellido":"Calvo"}                       │
    ├──────────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────────┤
    │{"nombre":"Nicolás","email":"nicolas.alegre@utnfra.com","rol":"alu│{"nombre":"Julio","email":"julio.calvo@utnfra.com","rol":"alumno",│
    │mno","fechanac":"01/08/1999","apellido":"Alegre"}                 │"fechanac":"01/01/2000","apellido":"Calvo"}                       │
    ├──────────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────────┤
    │{"nombre":"Rocío","email":"rocio.salas@utnfra.com","rol":"alumno",│{"nombre":"Manuel","email":"manuel.barrio@utnfra.com","rol":"alumn│
    │"fechanac":"18/04/1998","apellido":"Salas"}                       │o","fechanac":"10/12/2000","apellido":"Barrio"}                   │
    ├──────────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────────┤
    │{"nombre":"Nicolás","email":"nicolas.alegre@utnfra.com","rol":"alu│{"nombre":"Manuel","email":"manuel.barrio@utnfra.com","rol":"alumn│
    │mno","fechanac":"01/08/1999","apellido":"Alegre"}                 │o","fechanac":"10/12/2000","apellido":"Barrio"}                   │
    ├──────────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────────┤
    │{"nombre":"Lucía","email":"lucia.ubeda@utnfra.com","rol":"alumno",│{"nombre":"Nicolás","email":"nicolas.alegre@utnfra.com","rol":"alu│
    │"fechanac":"24/07/1997","apellido":"Ubeda"}                       │mno","fechanac":"01/08/1999","apellido":"Alegre"}                 │
    ├──────────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────────┤
    │{"nombre":"Alicia","email":"alicia.elizalde@utnfra.com","rol":"alu│{"nombre":"Nicolás","email":"nicolas.alegre@utnfra.com","rol":"alu│
    │mno","fechanac":"11/02/2000","apellido":"Elizalde"}               │mno","fechanac":"01/08/1999","apellido":"Alegre"}                 │
    ├──────────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────────┤
    │{"nombre":"Julio","email":"julio.calvo@utnfra.com","rol":"alumno",│{"nombre":"Nicolás","email":"nicolas.alegre@utnfra.com","rol":"alu│
    │"fechanac":"01/01/2000","apellido":"Calvo"}                       │mno","fechanac":"01/08/1999","apellido":"Alegre"}                 │
    ├──────────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────────┤
    │{"nombre":"Manuel","email":"manuel.barrio@utnfra.com","rol":"alumn│{"nombre":"Nicolás","email":"nicolas.alegre@utnfra.com","rol":"alu│
    │o","fechanac":"10/12/2000","apellido":"Barrio"}                   │mno","fechanac":"01/08/1999","apellido":"Alegre"}                 │
    ├──────────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────────┤
    │{"nombre":"Alicia","email":"alicia.elizalde@utnfra.com","rol":"alu│{"nombre":"Lucía","email":"lucia.ubeda@utnfra.com","rol":"alumno",│
    │mno","fechanac":"11/02/2000","apellido":"Elizalde"}               │"fechanac":"24/07/1997","apellido":"Ubeda"}                       │
    ├──────────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────────┤
    │{"nombre":"Lucía","email":"lucia.ubeda@utnfra.com","rol":"alumno",│{"nombre":"Alicia","email":"alicia.elizalde@utnfra.com","rol":"alu│
    │"fechanac":"24/07/1997","apellido":"Ubeda"}                       │mno","fechanac":"11/02/2000","apellido":"Elizalde"}               │
    ├──────────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────────┤
    │{"nombre":"Julio","email":"julio.calvo@utnfra.com","rol":"alumno",│{"nombre":"Alicia","email":"alicia.elizalde@utnfra.com","rol":"alu│
    │"fechanac":"01/01/2000","apellido":"Calvo"}                       │mno","fechanac":"11/02/2000","apellido":"Elizalde"}               │
    ├──────────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────────┤
    │{"nombre":"Manuel","email":"manuel.barrio@utnfra.com","rol":"alumn│{"nombre":"Alicia","email":"alicia.elizalde@utnfra.com","rol":"alu│
    │o","fechanac":"10/12/2000","apellido":"Barrio"}                   │mno","fechanac":"11/02/2000","apellido":"Elizalde"}               │
    ├──────────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────────┤
    │{"nombre":"Alicia","email":"alicia.elizalde@utnfra.com","rol":"alu│{"nombre":"Julio","email":"julio.calvo@utnfra.com","rol":"alumno",│
    │mno","fechanac":"11/02/2000","apellido":"Elizalde"}               │"fechanac":"01/01/2000","apellido":"Calvo"}                       │
    ├──────────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────────┤
    │{"nombre":"Alicia","email":"alicia.elizalde@utnfra.com","rol":"alu│{"nombre":"Manuel","email":"manuel.barrio@utnfra.com","rol":"alumn│
    │mno","fechanac":"11/02/2000","apellido":"Elizalde"}               │o","fechanac":"10/12/2000","apellido":"Barrio"}                   │
    ├──────────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────────┤
    │{"nombre":"Manuel","email":"manuel.barrio@utnfra.com","rol":"alumn│{"nombre":"Gonzalo","email":"gonzalo.campillo@utnfra.com","rol":"d│
    │o","fechanac":"10/12/2000","apellido":"Barrio"}                   │ocente","fechanac":"12/03/1984","apellido":"Campillo"}            │
    ├──────────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────────┤
    │{"nombre":"Manuel","email":"manuel.barrio@utnfra.com","rol":"alumn│{"nombre":"Lucía","email":"lucia.ubeda@utnfra.com","rol":"alumno",│
    │o","fechanac":"10/12/2000","apellido":"Barrio"}                   │"fechanac":"24/07/1997","apellido":"Ubeda"}                       │
    ├──────────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────────┤
    │{"nombre":"Gonzalo","email":"gonzalo.campillo@utnfra.com","rol":"d│{"nombre":"Manuel","email":"manuel.barrio@utnfra.com","rol":"alumn│
    │ocente","fechanac":"12/03/1984","apellido":"Campillo"}            │o","fechanac":"10/12/2000","apellido":"Barrio"}                   │
    ├──────────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────────┤
    │{"nombre":"Lucía","email":"lucia.ubeda@utnfra.com","rol":"alumno",│{"nombre":"Manuel","email":"manuel.barrio@utnfra.com","rol":"alumn│
    │"fechanac":"24/07/1997","apellido":"Ubeda"}                       │o","fechanac":"10/12/2000","apellido":"Barrio"}                   │
    ├──────────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────────┤
    │{"nombre":"Lucía","email":"lucia.ubeda@utnfra.com","rol":"alumno",│{"nombre":"Lorenzo","email":"lorenzo.piñeiro@utnfra.com","rol":"do│
    │"fechanac":"24/07/1997","apellido":"Ubeda"}                       │cente","fechanac":"29/05/1980","apellido":"Piñeiro"}              │
    ├──────────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────────┤
    │{"nombre":"Julio","email":"julio.calvo@utnfra.com","rol":"alumno",│{"nombre":"Lorenzo","email":"lorenzo.piñeiro@utnfra.com","rol":"do│
    │"fechanac":"01/01/2000","apellido":"Calvo"}                       │cente","fechanac":"29/05/1980","apellido":"Piñeiro"}              │
    ├──────────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────────┤
    │{"nombre":"Lorenzo","email":"lorenzo.piñeiro@utnfra.com","rol":"do│{"nombre":"Lucía","email":"lucia.ubeda@utnfra.com","rol":"alumno",│
    │cente","fechanac":"29/05/1980","apellido":"Piñeiro"}              │"fechanac":"24/07/1997","apellido":"Ubeda"}                       │
    ├──────────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────────┤
    │{"nombre":"Lorenzo","email":"lorenzo.piñeiro@utnfra.com","rol":"do│{"nombre":"Julio","email":"julio.calvo@utnfra.com","rol":"alumno",│
    │cente","fechanac":"29/05/1980","apellido":"Piñeiro"}              │"fechanac":"01/01/2000","apellido":"Calvo"}                       │
    └──────────────────────────────────────────────────────────────────┴──────────────────────────────────────────────────────────────────┘


---

![footer](doc/footer.png)