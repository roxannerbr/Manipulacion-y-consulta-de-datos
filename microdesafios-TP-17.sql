#Micro desafío - Paso 1: 

Utilizando el ​Insert​, ​Update​, ​Delete​, debemos ejecutar lo siguiente: 

1. Insertar en la tabla genres un nuevo género con los siguientes datos: 
○name: Investigación 
○ranking: 13 
○active: 1 

INSERT INTO genres (name, ranking, active) VALUES ('Investigación', '13', '1');

2. Actualizar el nuevo registro “name: Investigación” por “Investigación Científica”.

UPDATE movies_db.genres SET name = 'Investigación cientifica' WHERE (id = '13');

3. Eliminar el registro cuyo name es:  “Investigación Científica”. Recordemos verificar 
cuál es el​ id ​de dicho registro. 

DELETE FROM movies_db.genres WHERE id = '13';

Haciendo uso del ​Select​, debemos afrontar las siguientes consultas: 
     . Mostrar todos los registros de la tabla “movies”. 

     SELECT * FROM movies;

     . Mostrar el nombre, apellido y rating de todos los actores.

     SELECT first_name, last_name, rating FROM actors;

     . Mostrar el título de todas las series. Tomar en cuenta que tanto el nombre de la 
tabla como el campo estén en español. 

     SELECT title AS titulo FROM movies_db.series;



#Micro desafío - Paso 2: 

Utilizando el ​Where​ y ​Order by​, ejecutemos las siguientes consultas (ten en cuenta el uso 
de los operadores lógicos y relacionales).   

1. Mostrar el nombre y apellido de los actores cuyo rating sea mayor a 7.5. 

SELECT first_name, last_name FROM actors WHERE rating > 7.5;

2. Mostrar el título de las películas, el rating y los premios de las películas con un rating 
mayor a 7.5 y con más de dos premios. 

SELECT title, rating, awards FROM movies WHERE rating > 7.5 AND awards > 2;

3. Mostrar el título de las películas y el rating ordenadas por rating en forma 
ascendente.

SELECT title, rating FROM movies ORDER BY rating;



#Micro desafío - Paso 3:

Vamos muy bien, no nos desanimemos ni por un minuto. Ahora, para la realización de las 
consultas debemos valernos del ​Limit​ y ​Offset​. 

1. Mostrar los títulos de las primeras tres películas en la base de datos. 

SELECT title FROM movies LIMIT 3;

2. Mostrar el top 5 de las películas con mayor rating.

SELECT * FROM movies ORDER BY rating DESC LIMIT 5;

3. Mostrar las top 5 a 10 de las películas con mayor rating. 

SELECT * FROM movies ORDER BY rating DESC LIMIT 5 OFFSET 5;

4. Listar los primeros 10 actores (sería la página 1).  
a. Luego, usar offset para traer la página 3. 

SELECT * FROM actors LIMIT 10;
SELECT * FROM actors LIMIT 10 OFFSET 20;



#Micro desafío - Paso 4: 

Ya casi culminamos todos los desafíos. Utilizando el ​Between​ y ​Like​, hagamos las 
siguientes consultas: 

1. Mostrar el título y rating de todas las películas cuyo título sea Harry Potter.

SELECT title, rating FROM MOVIES WHERE title LIKE "%Harry Potter%";

2. Mostrar a todos los actores cuyos nombres empiecen con Sam. 

SELECT * FROM actors WHERE first_name LIKE '%Sam';

3. Mostrar el título de las películas que salieron entre el 2004 y 2008.

SELECT * FROM movies WHERE release_date BETWEEN "2004-01-01" AND "2008-12-31";