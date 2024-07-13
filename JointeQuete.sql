/*CREATE TABLE Continent (
    id INT PRIMARY KEY IDENTITY(1,1),
    nom VARCHAR(150)
);

CREATE TABLE Earthling (
    id INT PRIMARY KEY IDENTITY(1,1),
    nom VARCHAR(150) NOT NULL,
    id_continent INTEGER,
    FOREIGN KEY (id_continent) REFERENCES Continent (id) ON DELETE SET NULL
); 

INSERT INTO Continent(nom) VALUES ('Asie'), ('Afrique'), ('Amérique du Nord'), ('Amérique du Sud'), ('Antarctique'), ('Europe'), ('Océanie');

INSERT INTO Earthling(nom, id_continent) VALUES ('Paul', 7), ('Div', 6), ('Clara', 5), ('Mis', 4), ('Pierre',3), ('gaya', 2), ('yelle',1 );

CREATE TABLE Base(
    id INT PRIMARY KEY IDENTITY(1,1),
    nom VARCHAR(150) NOT NULL,
);

CREATE TABLE Role(
    id INT PRIMARY KEY IDENTITY(1,1),
    nom VARCHAR(150) NOT NULL,
    mission VARCHAR(150) NOT NULL UNIQUE,
);

CREATE TABLE Martian(
    id INT PRIMARY KEY IDENTITY(1,1),
    nom VARCHAR(150) NOT NULL,
    id_Earthling INTEGER UNIQUE,
    id_base INTEGER,
    id_superieur INTEGER,
    FOREIGN KEY (id_Earthling) REFERENCES Earthling (id),
    FOREIGN KEY (id_base) REFERENCES Base (id),
    FOREIGN KEY (id_superieur) REFERENCES Martian (id)
);

INSERT INTO Base(nom) VALUES('Base N°1'), ('Base N°2'), ('Base N°3');

INSERT INTO Martian(nom,id_Earthling, id_base, id_superieur) VALUES('Empereur',1, 2, 1), ('MartienA',3 ,1, 2), ('MartienB', 6, 3, 3),('MartienC', 5, 2, 4);*/

SELECT 
m.nom AS nom_martien,
e.nom AS nom_Terrien,
c.nom AS continent_referent_terrien,
b.nom As base_martien

FROM Martian m

JOIN Earthling e ON m.id_Earthling = e.id
JOIN Continent c ON e.id_continent = c.id
JOIN Base b ON m.id_base = b.id;