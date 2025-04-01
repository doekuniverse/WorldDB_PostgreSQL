-- SQL Script to insert a sample of significant cities and towns for Algeria (DZ).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Algeria (DZ).

-- NOTE: This list includes the capital and other major cities/towns.
-- Postal codes in Algeria are 5 digits; examples are provided where known.

-- Inserting cities for Algeria (DZ) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
('Algiers', (SELECT id FROM world_countries WHERE iso_code_2 = 'DZ'), '16000'), -- Capital
('Oran', (SELECT id FROM world_countries WHERE iso_code_2 = 'DZ'), '31000'), -- Major city
('Constantine', (SELECT id FROM world_countries WHERE iso_code_2 = 'DZ'), '25000'), -- Major city
('Annaba', (SELECT id FROM world_countries WHERE iso_code_2 = 'DZ'), '23000'), -- Major city
('Batna', (SELECT id FROM world_countries WHERE iso_code_2 = 'DZ'), '05000'), -- Major city
('Sétif', (SELECT id FROM world_countries WHERE iso_code_2 = 'DZ'), '19000'), -- Major city
('Sidi Bel Abbès', (SELECT id FROM world_countries WHERE iso_code_2 = 'DZ'), '22000'), -- Major city
('Biskra', (SELECT id FROM world_countries WHERE iso_code_2 = 'DZ'), '07000'), -- Major city
('Tébessa', (SELECT id FROM world_countries WHERE iso_code_2 = 'DZ'), '12000'), -- Major city
('El Oued', (SELECT id FROM world_countries WHERE iso_code_2 = 'DZ'), '39000'), -- Major city
('Skikda', (SELECT id FROM world_countries WHERE iso_code_2 = 'DZ'), '21000'), -- Major city
('Tlemcen', (SELECT id FROM world_countries WHERE iso_code_2 = 'DZ'), '13000'), -- Major city
('Béjaïa', (SELECT id FROM world_countries WHERE iso_code_2 = 'DZ'), '06000'), -- Major city
('Tiaret', (SELECT id FROM world_countries WHERE iso_code_2 = 'DZ'), '14000'), -- Major city
('Ouargla', (SELECT id FROM world_countries WHERE iso_code_2 = 'DZ'), '30000'), -- Major city (Saharan)
('Blida', (SELECT id FROM world_countries WHERE iso_code_2 = 'DZ'), '09000'), -- Major city
('Chlef', (SELECT id FROM world_countries WHERE iso_code_2 = 'DZ'), '02000'), -- Major city
('Bordj Bou Arréridj', (SELECT id FROM world_countries WHERE iso_code_2 = 'DZ'), '34000'), -- Major city
('Mostaganem', (SELECT id FROM world_countries WHERE iso_code_2 = 'DZ'), '27000'), -- Major city
('Jijel', (SELECT id FROM world_countries WHERE iso_code_2 = 'DZ'), '18000'), -- Major city
('Souk Ahras', (SELECT id FROM world_countries WHERE iso_code_2 = 'DZ'), '41000'), -- Major city
('Médéa', (SELECT id FROM world_countries WHERE iso_code_2 = 'DZ'), '26000'), -- Regional capital
('Béchar', (SELECT id FROM world_countries WHERE iso_code_2 = 'DZ'), '08000'), -- Regional capital (Saharan)
('Ghardaïa', (SELECT id FROM world_countries WHERE iso_code_2 = 'DZ'), '47000'), -- Regional capital (Saharan)
('Tamanrasset', (SELECT id FROM world_countries WHERE iso_code_2 = 'DZ'), '11000'), -- Regional capital (Saharan)
('Adrar', (SELECT id FROM world_countries WHERE iso_code_2 = 'DZ'), '01000'); -- Regional capital (Saharan)

-- End of Algeria city list (Sample)
