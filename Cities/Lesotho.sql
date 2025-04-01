-- SQL Script to insert a representative sample of significant cities and towns for Lesotho (LS).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Lesotho (LS).

-- NOTE: Lesotho is mountainous with many small villages. This list includes the capital,
-- district capitals (camptowns), and significant towns. Listing every single village is IMPOSSIBLE.
-- Postal codes are 3 digits; examples or '000' placeholder are provided.

-- Inserting cities for Lesotho (LS) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & District Capitals (Camptowns) / Major Towns
('Maseru', (SELECT id FROM world_countries WHERE iso_code_2 = 'LS'), '100'), -- National Capital (Maseru District)
('Hlotse', (SELECT id FROM world_countries WHERE iso_code_2 = 'LS'), '300'), -- Leribe District Capital
('Mafeteng', (SELECT id FROM world_countries WHERE iso_code_2 = 'LS'), '900'), -- Mafeteng District Capital
('Teyateyaneng', (SELECT id FROM world_countries WHERE iso_code_2 = 'LS'), '200'), -- Berea District Capital
('Mohale''s Hoek', (SELECT id FROM world_countries WHERE iso_code_2 = 'LS'), '800'), -- Mohale's Hoek District Capital
('Quthing', (SELECT id FROM world_countries WHERE iso_code_2 = 'LS'), '700'), -- Quthing District Capital (Moyeni town)
('Qacha''s Nek', (SELECT id FROM world_countries WHERE iso_code_2 = 'LS'), '600'), -- Qacha's Nek District Capital
('Mokhotlong', (SELECT id FROM world_countries WHERE iso_code_2 = 'LS'), '500'), -- Mokhotlong District Capital
('Thaba-Tseka', (SELECT id FROM world_countries WHERE iso_code_2 = 'LS'), '550'), -- Thaba-Tseka District Capital
('Butha-Buthe', (SELECT id FROM world_countries WHERE iso_code_2 = 'LS'), '400'), -- Butha-Buthe District Capital

-- Other Significant Towns/Settlements (Sample)
('Maputsoe', (SELECT id FROM world_countries WHERE iso_code_2 = 'LS'), '350'), -- Leribe District (Border town, industrial)
('Roma', (SELECT id FROM world_countries WHERE iso_code_2 = 'LS'), '180'), -- Maseru District (University town)
('Peka', (SELECT id FROM world_countries WHERE iso_code_2 = 'LS'), '360'), -- Leribe District
('Semonkong', (SELECT id FROM world_countries WHERE iso_code_2 = 'LS'), '150'), -- Maseru District (Known for Maletsunyane Falls)
('Mount Moorosi', (SELECT id FROM world_countries WHERE iso_code_2 = 'LS'), '750'); -- Quthing District

-- End of Lesotho locality list (Representative Sample)

/*
-- ====================================
-- == Información sobre Lesotho ==
-- ====================================
--
-- Descripción General:
-- El Reino de Lesotho es un país sin salida al mar completamente rodeado por
-- Sudáfrica. Es un país muy montañoso, a menudo llamado el "Reino en el Cielo"
-- porque todo su territorio se encuentra por encima de los 1,000 metros de altitud
-- (tiene el punto más bajo más alto de cualquier país del mundo). Las montañas
-- Drakensberg/Maloti cubren gran parte del país.
--
-- Ciudades Principales:
-- * Maseru: La capital y ciudad más grande, ubicada en la frontera occidental con
--   Sudáfrica, a orillas del río Caledon.
-- * Hlotse, Mafeteng, Teyateyaneng ('T.Y.'), Mohale's Hoek: Otras ciudades
--   importantes y capitales de distrito (camptowns), ubicadas principalmente en
--   las tierras bajas occidentales.
-- * Quthing, Qacha's Nek, Mokhotlong, Thaba-Tseka, Butha-Buthe: Capitales de los
--   distritos más montañosos y remotos.
-- * Maputsoe: Importante centro industrial y comercial en la frontera norte.
-- * Roma: Sede de la Universidad Nacional de Lesotho.
--
-- Un Poco de Historia:
-- El país fue unificado en el siglo XIX por el rey Moshoeshoe I, quien reunió a
-- varios clanes Basotho para defenderse de las incursiones Zulúes y Bóers. Para
-- evitar la anexión por parte del Estado Libre de Orange (bóer), Moshoeshoe I
-- solicitó protección británica, estableciéndose el protectorado de Basutolandia
-- en 1868. Obtuvo la independencia del Reino Unido en 1966 como el Reino de Lesotho,
-- bajo el rey Moshoeshoe II. La historia post-independencia ha incluido periodos
-- de gobierno autoritario, golpes de estado e intervenciones militares sudafricanas
-- y de la SADC, aunque ha mantenido su estructura monárquica constitucional.
--
-- Datos Adicionales:
-- Los idiomas oficiales son el sesotho y el inglés. La mayoría de la población
-- pertenece al grupo étnico Basotho. La economía depende en gran medida de la
-- agricultura de subsistencia, la cría de ganado (ovejas, cabras), las remesas de
-- trabajadores emigrantes (principalmente en Sudáfrica), los ingresos aduaneros
-- de la SACU y la exportación de agua y diamantes. Las mantas Basotho son una
-- prenda tradicional distintiva.
--
*/
