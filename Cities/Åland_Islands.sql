-- SQL Script to insert the main municipalities/towns for Åland Islands (AX).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Åland Islands (AX).

-- NOTE: This list includes the capital and the main municipalities.
-- Postal codes are generally well-defined for Åland.

-- Inserting cities/municipalities for Åland Islands (AX) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
('Mariehamn', (SELECT id FROM world_countries WHERE iso_code_2 = 'AX'), '22100'), -- Capital
('Jomala', (SELECT id FROM world_countries WHERE iso_code_2 = 'AX'), '22150'),
('Finström', (SELECT id FROM world_countries WHERE iso_code_2 = 'AX'), '22410'),
('Lemland', (SELECT id FROM world_countries WHERE iso_code_2 = 'AX'), '22610'),
('Saltvik', (SELECT id FROM world_countries WHERE iso_code_2 = 'AX'), '22320'),
('Hammarland', (SELECT id FROM world_countries WHERE iso_code_2 = 'AX'), '22710'),
('Sund', (SELECT id FROM world_countries WHERE iso_code_2 = 'AX'), '22520'),
('Eckerö', (SELECT id FROM world_countries WHERE iso_code_2 = 'AX'), '22270'),
('Föglö', (SELECT id FROM world_countries WHERE iso_code_2 = 'AX'), '22720'),
('Brändö', (SELECT id FROM world_countries WHERE iso_code_2 = 'AX'), '22920'),
('Geta', (SELECT id FROM world_countries WHERE iso_code_2 = 'AX'), '22340'),
('Kumlinge', (SELECT id FROM world_countries WHERE iso_code_2 = 'AX'), '22820'),
('Kökar', (SELECT id FROM world_countries WHERE iso_code_2 = 'AX'), '22730'),
('Lumparland', (SELECT id FROM world_countries WHERE iso_code_2 = 'AX'), '22630'),
('Sottunga', (SELECT id FROM world_countries WHERE iso_code_2 = 'AX'), '22740'), -- Smallest municipality
('Vårdö', (SELECT id FROM world_countries WHERE iso_code_2 = 'AX'), '22550');

-- End of Åland Islands municipality list
