-- SQL Script to insert a sample of significant cities and towns for Angola (AO).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Angola (AO).

-- NOTE: This list includes the capital and other major cities/provincial capitals.
-- Using '0000' as a placeholder for postal code as requested, since standardized codes are not widely used.

-- Inserting cities for Angola (AO) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
('Luanda', (SELECT id FROM world_countries WHERE iso_code_2 = 'AO'), '0000'), -- Capital
('Huambo', (SELECT id FROM world_countries WHERE iso_code_2 = 'AO'), '0000'), -- Major city, provincial capital
('Lobito', (SELECT id FROM world_countries WHERE iso_code_2 = 'AO'), '0000'), -- Major port city (Benguela Province)
('Benguela', (SELECT id FROM world_countries WHERE iso_code_2 = 'AO'), '0000'), -- Provincial capital
('Lubango', (SELECT id FROM world_countries WHERE iso_code_2 = 'AO'), '0000'), -- Provincial capital (Huíla)
('Kuito', (SELECT id FROM world_countries WHERE iso_code_2 = 'AO'), '0000'), -- Provincial capital (Bié)
('Malanje', (SELECT id FROM world_countries WHERE iso_code_2 = 'AO'), '0000'), -- Provincial capital
('Cabinda', (SELECT id FROM world_countries WHERE iso_code_2 = 'AO'), '0000'), -- Provincial capital (exclave)
('Uíge', (SELECT id FROM world_countries WHERE iso_code_2 = 'AO'), '0000'), -- Provincial capital
('Ndalatando', (SELECT id FROM world_countries WHERE iso_code_2 = 'AO'), '0000'), -- Provincial capital (Cuanza Norte)
('Saurimo', (SELECT id FROM world_countries WHERE iso_code_2 = 'AO'), '0000'), -- Provincial capital (Lunda Sul)
('Menongue', (SELECT id FROM world_countries WHERE iso_code_2 = 'AO'), '0000'), -- Provincial capital (Cuando Cubango)
('Sumbe', (SELECT id FROM world_countries WHERE iso_code_2 = 'AO'), '0000'), -- Provincial capital (Cuanza Sul)
('Dundo', (SELECT id FROM world_countries WHERE iso_code_2 = 'AO'), '0000'), -- Provincial capital (Lunda Norte)
('Mbanza Kongo', (SELECT id FROM world_countries WHERE iso_code_2 = 'AO'), '0000'), -- Provincial capital (Zaire), UNESCO site
('Ondjiva', (SELECT id FROM world_countries WHERE iso_code_2 = 'AO'), '0000'), -- Provincial capital (Cunene)
('Caxito', (SELECT id FROM world_countries WHERE iso_code_2 = 'AO'), '0000'), -- Provincial capital (Bengo)
('Soyo', (SELECT id FROM world_countries WHERE iso_code_2 = 'AO'), '0000'), -- Important oil city (Zaire Province)
('Namibe', (SELECT id FROM world_countries WHERE iso_code_2 = 'AO'), '0000'), -- Provincial capital (formerly Moçâmedes)
('Gabela', (SELECT id FROM world_countries WHERE iso_code_2 = 'AO'), '0000'); -- Town in Cuanza Sul

-- End of Angola city list (Sample)

/*
-- ====================================
-- == Información sobre Angola ==
-- ====================================
--
-- Descripción General:
-- Angola es un país grande situado en la costa suroeste de África. Posee vastos
-- recursos naturales, especialmente petróleo y diamantes, que dominan su economía.
-- Tiene una geografía diversa, desde una costa árida hasta mesetas interiores
-- y selvas tropicales en el norte, incluyendo el exclave de Cabinda.
--
-- Ciudades Principales:
-- * Luanda: La capital y ciudad más grande, centro económico y político.
-- * Huambo: Segunda ciudad más grande, ubicada en la meseta central.
-- * Lobito y Benguela: Importantes ciudades costeras y portuarias.
-- * Lubango: Ciudad principal en el sur montañoso.
--
-- Un Poco de Historia:
-- Fue una colonia portuguesa durante siglos, alcanzando la independencia en 1975.
-- Tras la independencia, el país se sumió en una larga y devastadora guerra civil
-- (1975-2002) entre el MPLA (apoyado por Cuba y la URSS) y UNITA (apoyada por
-- Sudáfrica y EE.UU.). Desde el fin de la guerra, Angola ha experimentado un
-- rápido crecimiento económico impulsado por el petróleo, aunque enfrenta
-- desafíos significativos en cuanto a desigualdad y desarrollo social.
--
-- Datos Adicionales:
-- El portugués es el idioma oficial. La música y la danza, como el Semba y la
-- Kizomba, son partes importantes de la cultura angoleña. A pesar de su riqueza
-- petrolera, gran parte de la población vive en la pobreza.
--
*/
