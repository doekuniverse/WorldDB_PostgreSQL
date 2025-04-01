-- SQL Script to insert a sample of significant cities and towns for Albania (AL).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Albania (AL).

-- NOTE: This list includes the capital and other major cities/towns.
-- It represents a comprehensive sample based on available geographic data,
-- but cannot be exhaustive of every single settlement.
-- Postal codes in Albania are 4 digits; examples are provided where known.

-- Inserting cities for Albania (AL) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
('Tirana', (SELECT id FROM world_countries WHERE iso_code_2 = 'AL'), '1001'), -- Capital (Example PC for central area)
('Durrës', (SELECT id FROM world_countries WHERE iso_code_2 = 'AL'), '2001'), -- Major port city
('Vlorë', (SELECT id FROM world_countries WHERE iso_code_2 = 'AL'), '9401'), -- Major city
('Shkodër', (SELECT id FROM world_countries WHERE iso_code_2 = 'AL'), '4001'), -- Major city
('Elbasan', (SELECT id FROM world_countries WHERE iso_code_2 = 'AL'), '3001'), -- Major city
('Korçë', (SELECT id FROM world_countries WHERE iso_code_2 = 'AL'), '7001'), -- Major city
('Fier', (SELECT id FROM world_countries WHERE iso_code_2 = 'AL'), '9301'), -- Major city
('Berat', (SELECT id FROM world_countries WHERE iso_code_2 = 'AL'), '5001'), -- UNESCO site
('Lushnjë', (SELECT id FROM world_countries WHERE iso_code_2 = 'AL'), '9001'), -- Significant town
('Pogradec', (SELECT id FROM world_countries WHERE iso_code_2 = 'AL'), '7301'), -- Town on Lake Ohrid
('Kavajë', (SELECT id FROM world_countries WHERE iso_code_2 = 'AL'), '2501'), -- Town
('Gjirokastër', (SELECT id FROM world_countries WHERE iso_code_2 = 'AL'), '6001'), -- UNESCO site
('Sarandë', (SELECT id FROM world_countries WHERE iso_code_2 = 'AL'), '9701'), -- Coastal city
('Patos', (SELECT id FROM world_countries WHERE iso_code_2 = 'AL'), '9306'), -- Town
('Kukës', (SELECT id FROM world_countries WHERE iso_code_2 = 'AL'), '8501'), -- Regional center
('Lezhë', (SELECT id FROM world_countries WHERE iso_code_2 = 'AL'), '4501'), -- Regional center
('Peshkopi', (SELECT id FROM world_countries WHERE iso_code_2 = 'AL'), '8301'), -- Regional center (Dibër)
('Burrel', (SELECT id FROM world_countries WHERE iso_code_2 = 'AL'), '8001'), -- Town (Mat)
('Krujë', (SELECT id FROM world_countries WHERE iso_code_2 = 'AL'), '1501'), -- Historic town
('Laç', (SELECT id FROM world_countries WHERE iso_code_2 = 'AL'), '4701'); -- Town (Kurbin)

-- End of Albania city list (Comprehensive Sample)

