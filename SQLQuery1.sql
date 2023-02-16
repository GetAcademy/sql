--SELECT CONCAT(FirstName, Id) IdNavn, FirstName, Id, Case BirthYear When 1975 Then 'A' Else 'B' End
--FROM Person 
--WHERE Id = 2

SELECT * 
FROM Person 

INSERT INTO Person 
VALUES (5, 'Kåre', 2000)

INSERT INTO Person 
(Id, FirstName) 
VALUES (6, 'Knut')

DELETE FROM Person 
WHERE Id = 1

UPDATE Person
SET FirstName = 'Lise'
WHERE Id = 6

/*


1: verktøy
   enkle tabeller
   CRUD - Create Read Update Delete
   primærnøkkel
   projeksjon SELECT
   seleksjon WHERE

2: relasjoner
   fremmednøkkel
   en-til-mange
   mange-til-mange
   join

3: ideene bak
   relasjonsalgebra
   pluss, minus, gange med mengder
   video scott w
   funksjoner   
   aggregeringer 

oppgaver
sqlbolt
hackerrank

(4: SQL fra C#)
*/