USE myjoinsdb;

-- UNIQUE-- щоб імена були унікальні і INDEX --пришвидшити пошук по імені
CREATE UNIQUE INDEX idx_name 
ON phones (name);

-- INDEX --пришвидшити виборку по місцю проживання
CREATE INDEX idx_city 
ON info (PlaceOfLive);

-- INDEX --пришвидшити виборку по посаді
CREATE INDEX idx_position 
ON salaryandposition (position);

