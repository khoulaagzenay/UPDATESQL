CREATE TABLE categories(
    id INTEGER PRIMARY KEY IDENTITY(1,1),
    name_category VARCHAR(150)
);

CREATE TABLE product(
    id INTEGER PRIMARY KEY IDENTITY(1,1),
    name_product VARCHAR(150),
    price DECIMAL,
    category_id INTEGER,
    FOREIGN KEY (category_id) REFERENCES categories (id)
);

CREATE TABLE Buy(
    id INTEGER PRIMARY KEY IDENTITY(1,1),
    product_id INTEGER,
    date_buying DATE,
    FOREIGN KEY (product_id) REFERENCES product (id)
);


INSERT into categories(name_category) VALUES('Category N°1'), ('Category N°2'), ('Category N°3');

INSERT into product(name_product,price, category_id) 
VALUES('Product N°1', 50000, 2),('Product N°2', 80.69, 1), ('Product N°3', 100, 2), ('Product N°4', 50000, 2), ('Product N°5', 96.36, 3),('Product N°6', 30.2, 1),
('Product N°7', 20000, 1), ('Product N°8', 1000, 3), ('Product N°9', 50, 1);

INSERT INTO buy(product_id, date_buying) VALUES(1, '2019-01-15'),
(2, '2019-02-20'),
(3, '2019-03-10'),
(1, '2019-04-05'),
(2, '2019-05-22'),
(3, '2019-06-14'),
(4, '2019-07-18'),
(5, '2019-08-23'),
(6, '2019-09-09'),
(4, '2019-10-30'),
(5, '2019-11-19'),
(6, '2019-12-24'),
(7, '2020-01-05'),
(8, '2020-02-15'),
(9, '2020-03-25'),
(7, '2020-04-12'),
(8, '2020-05-22'),
(9, '2020-06-30');

--La somme du nombre d'achats de chaque catégorie
SELECT c.name_category, count(b.id) AS nombre_achats
FROM buy b
JOIN product p ON b.product_id = p.id
JOIN categories c ON p.category_id = c.id
GROUP BY c.name_category;


--La somme des prix des produits achetés de chaque catégorie
SELECT c.name_category, sum(p.price) AS somme_produits_achetés
FROM buy b
JOIN product p ON b.product_id = p.id
JOIN categories c ON p.category_id = c.id
GROUP BY c.name_category;


--requête qui renvoie la somme du nombre d'achats entre 2019 et 2020
SELECT COUNT(id) AS nombre_achats_2019_2020
FROM buy 
WHERE date_buying BETWEEN '2019-01-01' AND '2020-12-31';