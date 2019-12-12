/*1.Affichez toutes les colonnes de tous les coureurs de la course (3762 enr) */
/* SELECT * FROM results ; */
/**/
/*2.Affichez le prénom, le nom, la catégorie, le rang, le rang dans la catégorie et le temps de tous les coureurs (3762 enr)*/
/*SELECT firstname,lastname,place,placecategory,totaltime FROM results;*/

/*3.Affichez la liste des catégories de la course (10 enr)*/
/*SELECT DISTINCT category FROM results;/*


/*4.Affichez le prénom, le nom, le rang, la catégorie et le rang dans la catégorie de tous les coureurs classés par rang (3762 enr)*/
SELECT firstname,lastname,place,category,placecategory FROM results
ORDER BY place;
5.
SELECT firstname,lastname,category,placecategory,totaltime FROM results
WHERE placecategory = 1
ORDER BY category;
6.
SELECT firstname,lastname,birthyear,category FROM results
WHERE placecategory = 1
ORDER BY category DESC;
7.
SELECT firstname,lastname,placecategory,city,totaltime FROM results
WHERE category ="20-H45"
ORDER BY placecategory ;
8.


PARTIE 2
1.
SELECT bib,firstname,lastname,totaltime FROM results
WHERE bib < 1000
ORDER BY totaltime;
2.
SELECT firstname,lastname,place,birthyear FROM results
WHERE birthyear  BETWEEN "1960" AND "1965"
ORDER BY place;
4.
SELECT firstname,lastname,place FROM results
WHERE firstname like "%Robert";

3,
SELECT firstname,lastname,city FROM results
WHERE lastname like "%ter%"
5,
SELECT firstname,lastname,place,city FROM results 
WHERE city IN("Aigle","Blonay","Riaz");


PARTIE 3

SELECT firstname,lastname,birthyear,place,city,totaltime,category FROM results
WHERE birthyear> 1946 AND city IN ("Pully")
ORDER BY birthyear DESC ;

2.
SELECT firstname,lastname,city,place,totaltime,averagetime FROM results
WHERE city IN ("Denges") OR firstname like "Julien"
ORDER BY place DESC;

3.SELECT firstname,lastname,city,place,totaltime,averagetime FROM results
WHERE lastname like "Gomez" AND NOT birthyear =1985
ORDER BY place DESC;
4 partie



WHERE name like "Mont%"
ORDER BY department DESC;
































