/* 1.  */
/* SELECT * FROM Invoice
JOIN InvoiceLine il ON il.InvoiceId =Invoice.InvoiceId  
WHERE il.UnitPrice > 0.99; */

/* 2. */
/* SELECT Invoice.InvoiceDate, customer.FirstName, customer.LastName
FROM Invoice 
JOIN Customer ON Invoice.CustomerId = Customer.
CustomerId */

/* 3 */
/* SELECT c.FirstName,c.LastName, e.FirstName, e.LastName
FROM
Customer as c
JOIN Employee as e
ON c.SupportRepId = e.
EmployeeId

4 */
/* SELECT a.Title, ar.Name
FROM Album as a
JOIN Artist as ar
ON a.ArtistId = ar.ArtistId */

/* 5 */
/* SELECT PlaylistTrack.TrackId 
FROM PlaylistTrack
JOIN PlayList on PlayList.PlaylistId = PlayListTrack.PlaylistId
WHERE PlayList.Name ="Music"; */


/* /* 6 */
/* SELECT Track.Name, PlayListTrack.PlayListId
FROM Track
JOIN PlayListTrack on PlayListTrack.TrackId = Track.TrackId
WHERE PlayListTrack.PlayListId=5  */

/* SELECT * FROM PlayList; */


/* 7 */
/* SELECT t.name, p.Name
FROM Track t
JOIN PlaylistTrack pt ON t.TrackId = pt.TrackId
JOIN Playlist p ON pt.PlaylistId = p.PlaylistId; */

/* 8 */
/* SELECT Track.Name, Album.Title, Genre.Name 
FROM Track 
join Album on Track.AlbumId = Album.AlbumId
join Genre on Genre.GenreId = Track.GenreId
where Genre.Name = "Alternative" */


/* Get all invoices where the UnitPrice on the InvoiceLine is greater than $0.99. */

/* SELECT * from Invoice
where InvoiceId IN(select InvoiceId FROM InvoiceLine where UnitPrice >0.99); */


/* /* Get all Playlist Tracks where the playlist name is Music. */
/* select * from 
PlaylistTrack
where PlayListId = (select PlayListId from PlayList where name ="Music");  */


/* Get all Track names for PlaylistId 5. */
/* select Name
from Track
where TrackId in (select TrackId from PlaylistTrack where PlaylistId =5); */


/* Get all tracks where the Genre is Comedy. */
/* select * from Track
where GenreId in (select GenreId from Genre where Genre.Name = "Comedy");
 */
 
 

/* Get all tracks where the Album is Fireball. */
/* 
select * from Track
where AlbumId in(select AlbumId from Album where Title = "Fireball"); */


/* Get all tracks for the artist Queen ( 2 nested subqueries ). */
/* 
select * from Track
where AlbumId in (
  select AlbumId from Album  where ArtistId in(select ArtistId from Artist
where Name ="Queen"))
/*  

/* Find all customers with fax numbers and set those numbers to null. */
/* UPDATE Customer
SET Fax = null
WHERE Fax IS NOT null; */

/* Find all customers with no company (null) and set their company to "Self". */



/* UPDATE Customer
SET Company = "Self"
WHERE Company IS null; */

/* Find the customer Julia Barnett and change her last name to Thompson. */

/* UPDATE customer
set LastName = "Thompson"
where FirstName = "Julia" AND LastName ="Barnett" */

/* Find the customer with this email luisrojas@yahoo.cl and change his support rep to 4. */
/* 
update customer 
set SupportRepId = 5
where Email="luisrojas@yahoo.cl"; */

/* Find all tracks that are the genre Metal and have no composer.
Set the composer to "The darkness around us". */
/* update Track
set Composer ="The darkness around us"
where GenreId = (select GenreId from Genre where name = "Metal" )AND
                 composer IS NULL; */


                 /* Group by

SELECT [Column1], [Column2]
FROM [Table] [abbr]
GROUP BY [Column]; */

/* Find a count of how many tracks there are per genre. Display the genre name with the count. */
/* select count(*), Genre.name
from track
join Genre on Genre.GenreId = Track.GenreId
GROUP BY Genre.name; */

/* Find a count of how many tracks are the "Pop" genre and how many tracks are the "Rock" genre. */


/* select count(*), Genre.name
from track
join Genre on Genre.GenreId = Track.GenreId
WHERE Genre.name = "Pop" OR Genre.name = "Rock"
GROUP BY Genre.name;
 */


/* Find a list of all artists and how many albums they have. */
/* SELECT ar.Name, Count(*)
FROM Artist ar
JOIN Album al ON ar.ArtistId = al.ArtistId
GROUP BY al.ArtistId; */


/* Use Distinct
 Syntax Hint
SELECT DISTINCT [Column]
FROM [Table];
 */
/* /* /* From the Track table find a unique list of all Composers. */
/* select DISTINCT Composer
from Track;  */


/* From the Invoice table find a unique list of all BillingPostalCodes. */

/* select DISTINCT BillingPostalCode
from Invoice; */

/* From the Customer table find a unique list of all Companys. */

/* select DISTINCT Company 
from customer */