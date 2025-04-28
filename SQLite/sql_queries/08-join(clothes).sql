CREATE TABLE Colors (
    Color TEXT PRIMARY KEY
);

INSERT INTO Colors (Color) VALUES 
('Red'),
('Green'),
('Blue');

CREATE TABLE Sizes (
    Size TEXT PRIMARY KEY
);

INSERT INTO Sizes (Size) VALUES 
('S'),
('M'),
('L'),
('XL');

--Вариации цветов и размеров одежды

SELECT Color, Size
FROM Colors
CROSS JOIN Sizes;