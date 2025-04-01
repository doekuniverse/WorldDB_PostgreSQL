-- SQL Script to insert a sample of significant towns and villages for Antigua and Barbuda (AG).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Antigua and Barbuda (AG).

-- NOTE: This list includes the capital and other main towns/villages.
-- Postal codes are not generally used for addressing, using '0000' as a placeholder.

-- Inserting cities/villages for Antigua and Barbuda (AG) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
('Saint John''s', (SELECT id FROM world_countries WHERE iso_code_2 = 'AG'), '0000'), -- Capital (on Antigua)
('All Saints', (SELECT id FROM world_countries WHERE iso_code_2 = 'AG'), '0000'), -- Town on Antigua
('Liberta', (SELECT id FROM world_countries WHERE iso_code_2 = 'AG'), '0000'), -- Town on Antigua
('Potter''s Village', (SELECT id FROM world_countries WHERE iso_code_2 = 'AG'), '0000'), -- Village on Antigua
('Bolans', (SELECT id FROM world_countries WHERE iso_code_2 = 'AG'), '0000'), -- Village on Antigua
('Swetes', (SELECT id FROM world_countries WHERE iso_code_2 = 'AG'), '0000'), -- Village on Antigua
('Parham', (SELECT id FROM world_countries WHERE iso_code_2 = 'AG'), '0000'), -- Town on Antigua
('Cedar Grove', (SELECT id FROM world_countries WHERE iso_code_2 = 'AG'), '0000'), -- Village on Antigua
('Piggotts', (SELECT id FROM world_countries WHERE iso_code_2 = 'AG'), '0000'), -- Village on Antigua
('Codrington', (SELECT id FROM world_countries WHERE iso_code_2 = 'AG'), '0000'); -- Main settlement on Barbuda

-- End of Antigua and Barbuda village list (Sample)

/*
-- ============================================
-- == Información sobre Antigua y Barbuda ==
-- ============================================
--
-- Descripción General:
-- Antigua y Barbuda es una nación insular soberana ubicada en el Mar Caribe oriental,
-- en el límite con el Océano Atlántico. Pertenece a las Antillas Menores y consta
-- de dos islas principales, Antigua y Barbuda, además de varias islas más pequeñas
-- (como Redonda). Es conocida por sus numerosas playas, arrecifes de coral y
-- complejos turísticos.
--
-- Ciudades Principales:
-- * Saint John's: La capital y ciudad más grande, ubicada en Antigua. Es el
--   principal puerto y centro económico.
-- * Codrington: El principal y prácticamente único asentamiento en la isla de Barbuda,
--   que fue severamente afectado por el huracán Irma en 2017.
-- * Otras localidades importantes en Antigua incluyen All Saints, Liberta y Parham.
--
-- Un Poco de Historia:
-- Habitada originalmente por pueblos indígenas, fue colonizada por los británicos
-- en el siglo XVII. La economía se basó en la caña de azúcar cultivada con mano
-- de obra esclava africana. Antigua y Barbuda obtuvo la independencia del Reino
-- Unido en 1981, aunque sigue siendo parte de la Commonwealth con el monarca
-- británico como jefe de estado. El turismo se convirtió en la principal industria
-- tras el declive del azúcar.
--
-- Datos Adicionales:
-- Se dice que Antigua tiene 365 playas, una para cada día del año. El inglés es
-- el idioma oficial. El cricket es el deporte nacional. Barbuda es conocida por
-- su gran santuario de aves fragata.
--
*/
