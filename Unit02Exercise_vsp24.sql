CREATE TABLE golfers
(golferid int primary key,
name varchar(100),
address varchar(200),
phone varchar(20));
Query OK, 0 rows affected (0.28 sec)

INSERT INTO golfers VALUES
(100, 'Rich', '123 Main St.', '555-1234');

Query OK, 1 row affected (0.08 sec)

INSERT INTO golfers VALUES
(101, 'Barbara', '123 Main St.', '555-5678');
Query OK, 1 row affected (0.10 sec)

INSERT INTO golfers VALUES
(102, 'Jack', '457 Main St.', '555-1278');

INSERT INTO golfers VALUES
(103, 'James', '35 Main St.', '555-1217');

SELECT * FROM golfers;

CREATE TABLE games
(gameid int auto_increment primary key,
golferid int,
score int);

INSERT INTO games (golferid, score) VALUES (100, 110);
INSERT INTO games (golferid, score) VALUES (100, 115);
INSERT INTO games (golferid, score) VALUES (100, 105);
INSERT INTO games (golferid, score) VALUES (101, 110);
INSERT INTO games (golferid, score) VALUES (101, 112);
INSERT INTO games (golferid, score) VALUES (101, 130);
INSERT INTO games (golferid, score) VALUES (102, 112);
INSERT INTO games (golferid, score) VALUES (102, 115);
INSERT INTO games (golferid, score) VALUES (102, 102);
INSERT INTO games (golferid, score) VALUES (103, 112);
INSERT INTO games (golferid, score) VALUES (103, 112);
INSERT INTO games (golferid, score) VALUES (103, 110);

SELECT * FROM games

SELECT golferid, name FROM golfers ORDER BY name

SELECT COUNT(score) AS games, AVG(score) AS average FROM games WHERE golferid = 103