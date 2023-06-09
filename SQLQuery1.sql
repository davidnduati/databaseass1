CREATE TABLE Authors(
AuthorsId int(10) PRIMARY KEY NOT NULL,
FirstName varchar(20) NOT NULL,
LastName varchar (20) NOT NULL
);

CREATE TABLE BOOKS(
BookId int (10) PRIMARY KEY NOT NULL,
Title varchar(39),
AuthorId int (40) FOREIGN KEY REFERENCES Authors(AuthorsId)
);

INSERT INTO BOOKS(Title,AuthorId)
values
("Book1",1),
("Book2",2),
("Book3",3);

INSERT INTO BOOKS(Title,AuthorId)
values
("Book1",1),
("Book2",2),
("Book3",3);

select * from BOOKS where Title = 'Book2';

UPDATE Authors
SET LastName ="Smithson"
where FirstName ="John";

DROP TABLE Authors WHERE AuthorsId = 3;

SELECT [BOOKS].Title,Authors.FirstName,LastName
FROM [BOOKS]
JOIN Authors ON [BOOKS].AuthorId = Authors.AuthorsId;