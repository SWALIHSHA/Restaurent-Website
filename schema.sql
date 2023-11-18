DROP TABLE IF EXISTS dishes;

CREATE TABLE dishes (
    id INTEGER,
    Name TEXT NOT NULL,
    Price INTEGER NOT NULL
);

INSERT INTO dishes (id, Name, Price) VALUES
(1,"Chicken Biriyani",120.00),
(2,"Chicken Curry",100.00),
(3,"Chicken Kondattam",130.00),
(4,"Mandi",150.00),
(5,"Al Faham(2 pieces)",130.00),
(6,"Pasta",100.00),
(7,"s",10.00),
(8,"Al Faham",200.00),
(9,"Vegetable Biriyani",100.00),
(10,"Shawaya",120.00),
(11,"Crab Curry",150.00),
(12,"Fish Curry",90.00),
(13,"Duck Curry",150.00),
(14,"Mutton Biriyani",200.00),
(15,"Prawns Curry",150.00);
