-- SQL Script to insert a sample of significant villages and areas for American Samoa (AS).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains American Samoa (AS).

-- NOTE: This list includes the capital area and other main villages.
-- American Samoa uses a single US ZIP Code (96799) for the entire territory.

-- Inserting cities/villages for American Samoa (AS) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
('Pago Pago', (SELECT id FROM world_countries WHERE iso_code_2 = 'AS'), '96799'), -- Main harbor area/unofficial capital
('Fagatogo', (SELECT id FROM world_countries WHERE iso_code_2 = 'AS'), '96799'), -- Official capital village
('Utulei', (SELECT id FROM world_countries WHERE iso_code_2 = 'AS'), '96799'), -- Village near Fagatogo
('Tafuna', (SELECT id FROM world_countries WHERE iso_code_2 = 'AS'), '96799'), -- Largest village by population
('Nu''uuli', (SELECT id FROM world_countries WHERE iso_code_2 = 'AS'), '96799'), -- Significant village
('Leone', (SELECT id FROM world_countries WHERE iso_code_2 = 'AS'), '96799'), -- Significant village (Western District)
('Vaitogi', (SELECT id FROM world_countries WHERE iso_code_2 = 'AS'), '96799'), -- Village
('Faleniu', (SELECT id FROM world_countries WHERE iso_code_2 = 'AS'), '96799'), -- Village
('Pava''ia''i', (SELECT id FROM world_countries WHERE iso_code_2 = 'AS'), '96799'), -- Village
('Mapusagafou', (SELECT id FROM world_countries WHERE iso_code_2 = 'AS'), '96799'), -- Village
('Ta''ū', (SELECT id FROM world_countries WHERE iso_code_2 = 'AS'), '96799'), -- Main village on Ta'ū Island (Manu'a)
('Ofu', (SELECT id FROM world_countries WHERE iso_code_2 = 'AS'), '96799'); -- Main village on Ofu Island (Manu'a)
-- ('Taulaga', (SELECT id FROM world_countries WHERE iso_code_2 = 'AS'), '96799'); -- Only village on Swains Island (very small pop.)

-- End of American Samoa village list (Sample)
