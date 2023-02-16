SELECT p.Id, p.FirstName, p.BirthYear, q.Name as PlaceName, q.Country
FROM Person p
FULL JOIN Place q ON p.PlaceId = q.Id

/*


2: relasjoner
   fremmednøkkel
   en-til-mange
   mange-til-mange
   join

   */

--SELECT * FROM Place

--INSERT INTO Place VALUES (2,'New York','USA')