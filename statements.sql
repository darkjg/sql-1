-- Ejercicio 1: Seleccionar todos los usuarios y sus lenguajes asociados.
select usuarios_lenguajes.nombre, usuarios_lenguajes.lenguaje from usuarios_lenguajes
-- Tu respuesta aquí


-- Ejercicio 2: Contar cuántos usuarios hay en total.
 SELECT COunt(*) from usuarios_lenguajes
-- Tu respuesta aquí


-- Ejercicio 3: Seleccionar los usuarios mayores de 30 años.
 SELECT * from usuarios_lenguajes where edad >30

-- Tu respuesta aquí


-- Ejercicio 4: Contar cuántos usuarios saben JavaScript.
 SELECT * from usuarios_lenguajes where lenguaje like "JavaScript"
-- Tu respuesta aquí


-- Ejercicio 5 OPCION 2: Seleccionar los usuarios que tienen 28 años. 
 SELECT * from usuarios_lenguajes where edad like 28
-- Tu respuesta aquí


-- Ejercicio 6: Encontrar el usuario con el email 'juan.gomez@example.com'.
 SELECT * from usuarios_lenguajes where email like "juan.gomez@example.com"

-- Tu respuesta aquí


-- Ejercicio 7: Seleccionar los usuarios que saben Java y tienen menos de 25 años.
 SELECT * from usuarios_lenguajes where lenguaje like "Java" and edad< 25
-- Tu respuesta aquí


-- Ejercicio 8 OPCION 2: Contar cuántos usuarios con edades diferentes saben el lenguaje 'Java'.
 SELECT count(DISTINCT edad) as EdadJava from usuarios_lenguajes where lenguaje like "JavaScript";
-- Tu respuesta aquí


-- Ejercicio 9: Seleccionar los usuarios que no saben ningún lenguaje.
 SELECT * from usuarios_lenguajes where lenguaje is null
-- Tu respuesta aquí


-- Ejercicio 10: Encontrar el nombre y edad del usuario más joven.
 SELECT nombre,edad from usuarios_lenguajes order by edad limit 1
-- Tu respuesta aquí


-- Ejercicio 11: Seleccionar los usuarios y sus edades ordenados por edad de forma descendente.
 SELECT nombre,edad from usuarios_lenguajes order by edad desc
-- Tu respuesta aquí


-- Ejercicio 12: Contar cuántos usuarios tienen más de 28 años.
 SELECT count(*) from usuarios_lenguajes where edad>28
-- Tu respuesta aquí


-- Ejercicio 13: Seleccionar los usuarios cuyo apellido contiene la letra 'a'.
 SELECT * from usuarios_lenguajes where apellido like "%a%"
-- Tu respuesta aquí


-- Ejercicio 14: Encontrar el lenguaje más popular entre los usuarios menores de 30 años.
    SELECT  max(lenguaje) FROM usuarios_lenguajes where edad >30 GROUP BY lenguaje ORDER BY  max(lenguaje)  DESC LIMIT 1  
-- Tu respuesta aquí


-- Ejercicio 15: Seleccionar el usuario  mayor de 25 y que sepa el lenguaje 'TypeScript'.
select * from usuarios_lenguajes where edad>25 and lenguaje like "TypeScript" ORDER BY  edad  DESC LIMIT 1  
-- Tu respuesta aquí


-- Ejercicio 16: Contar cuántos usuarios tienen un lenguaje asociado llamado 'Python'.
 SELECT count(*) from usuarios_lenguajes where lenguaje like "Python"
-- Tu respuesta aquí


-- Ejercicio 17: Seleccionar los usuarios y sus lenguajes asociados, si tienen alguno, ordenados por nombre de usuario.
 SELECT  nombre , lenguaje from usuarios_lenguajes order by nombre
-- Tu respuesta aquí


-- Ejercicio 18: Encontrar los usuario con el email que contiene la palabra 'example'.
 SELECT * from usuarios_lenguajes where email like "%example%"
-- Tu respuesta aquí


-- Ejercicio 19: Seleccionar los usuarios que saben al menos un lenguaje y tienen una edad entre 25 y 35 años.
 SELECT * from usuarios_lenguajes where edad >25 and edad <35 and lenguaje is not null
-- Tu respuesta aquí


-- Ejercicio 20: Contar cuántos usuarios tienen un lenguaje asociado llamado 'CSS' y tienen menos de 30 años.
 SELECT count(*) from usuarios_lenguajes where edad <30 and lenguaje like "CSS"
-- Tu respuesta aquí


-- Ejercicio 21: Seleccionar los usuarios que tienen al menos un lenguaje asociado y mostrar la cantidad de lenguajes que tienen.
 SELECT nombre, count(lenguaje) as NumeroLenguajes from usuarios_lenguajes GROUP BY nombre;
-- Tu respuesta aquí


-- Ejercicio 22: Encontrar el lenguaje con más caracteres.
 SELECT lenguaje from usuarios_lenguajes order by length(lenguaje)  desc limit 1
-- Tu respuesta aquí


-- Ejercicio 23: Seleccionar los usuarios y mostrar la concatenación de su nombre y apellido.
 SELECT nombre, CONCAT(nombre,apellido) from usuarios_lenguajes 
-- Tu respuesta aquí


-- Ejercicio 24: Contar cuántos lenguajes diferentes conocen los usuarios mayores de 25 años. 
 SELECT count(lenguaje) as NumeroLenguajes from usuarios_lenguajes where edad>25 GROUP BY nombre;
-- Tu respuesta aquí


-- Ejercicio 25: Seleccionar los usuarios que tienen exactamente la misma edad.
SELECT COUNT(*) as Repetidos, edad FROM usuarios_lenguajes  GROUP BY edad
-- Tu respuesta aquí


-- Ejercicio 26: Encontrar el usuario con el lenguaje con mayor número de carácteres y que tenga una edad menor de 30 años. 
 SELECT lenguaje from usuarios_lenguajes where edad<30 order by length(lenguaje)  desc limit 1

-- Tu respuesta aquí


-- Ejercicio 27: Seleccionar los usuarios que tienen al menos un lenguaje asociado y mostrar sus emails.
 SELECT email from usuarios_lenguajes where lenguaje is not null 
-- Tu respuesta aquí


-- Ejercicio 28: Contar cuántos usuarios tienen un apellido que comienza con la letra 'G'.
 SELECT count(*) from usuarios_lenguajes where apellido like "g%"
-- Tu respuesta aquí


-- Ejercicio 29: Seleccionar los usuarios que tienen lenguajes que empiecen por 'J' y mostrar solo el que tiene menos caracteres. 
 SELECT * from usuarios_lenguajes where apellido like "J%" order  by length(lenguaje)  desc limit 1
-- Tu respuesta aquí


-- Ejercicio 30: Encontrar el usuario con edad mayor a 30 y que sabe el lenguaje con menos caracteres.
 SELECT lenguaje from usuarios_lenguajes where edad>30 order by length(lenguaje)   limit 1
-- Tu respuesta aquí


-- Ejercicio 31: Seleccionar los usuarios que saben al menos un lenguaje y ordenarlos por nombre de lenguaje. 
 SELECT * from usuarios_lenguajes where lenguaje is not null order by lenguaje
-- Tu respuesta aquí


-- Ejercicio 32: Contar cuántos usuarios tienen una edad entre 20 y 25 años y saben al menos un lenguaje. 
 SELECT * from usuarios_lenguajes where lenguaje is not null and edad>25 and edad <35
-- Tu respuesta aquí


-- Ejercicio 33: Seleccionar los usuarios que no tienen un lenguaje asociado llamado 'SQL'.
 SELECT * from usuarios_lenguajes where lenguaje not like "SQL"
-- Tu respuesta aquí


-- Ejercicio 34: Encontrar el lenguaje con más caracteres entre los usuarios que tienen al menos 30 años.
 SELECT lenguaje from usuarios_lenguajes where edad>30 order by length(lenguaje) desc  limit 1
-- Tu respuesta aquí


-- Ejercicio 35: Seleccionar los usuarios y mostrar la diferencia entre su edad y la edad promedio de todos los usuarios
 SELECT nombre, (select sum((select avg(edad)from usuarios_lenguajes)-edad )from usuarios_lenguajes) as media from usuarios_lenguajes 
-- Tu respuesta aquí


-- Ejercicio 36: Contar cuántos usuarios tienen un lenguaje asociado que contiene la palabra 'Script'.
 SELECT count(*) from usuarios_lenguajes where lenguaje like "%Script%"
-- Tu respuesta aquí


-- Ejercicio 37: Seleccionar los usuarios que tienen al menos un lenguaje asociado y mostrar la longitud de su nombre. 
 SELECT length(nombre) from usuarios_lenguajes where lenguaje is not null 
-- Tu respuesta aquí


-- Ejercicio 38: Encontrar el lenguaje del usuario creado más tarde. 
 SELECT lenguaje from usuarios_lenguajes order by edad desc limit 1
-- Tu respuesta aquí


-- Ejercicio 39: Seleccionar los usuarios y mostrar la suma de sus edades. 
 SELECT  sum(edad) from usuarios_lenguajes
-- Tu respuesta aquí


-- Ejercicio 40: Contar cuántos usuarios tienen un lenguaje asociado que comienza con la letra 'P' y tienen menos de 28 años.

 SELECT lenguaje from usuarios_lenguajes where edad>28 and lenguaje is not null and lenguaje like "p%"
-- Tu respuesta aquí

