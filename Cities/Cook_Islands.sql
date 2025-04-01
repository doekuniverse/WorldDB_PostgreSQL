-- SQL Script to insert a representative sample of significant towns and villages for the Cook Islands (CK).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Cook Islands (CK).

-- NOTE: Cook Islands is an archipelago of 15 islands. This list includes the capital,
-- main villages on Rarotonga, and primary settlements on other inhabited islands.
-- Listing every single minor settlement is IMPOSSIBLE.
-- Postal codes are not used; using '0000' as a placeholder.

-- Inserting cities/villages for Cook Islands (CK) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Rarotonga (Main Island)
('Avarua', (SELECT id FROM world_countries WHERE iso_code_2 = 'CK'), '0000'), -- Capital (located within Te Au O Tonga district)
('Arorangi', (SELECT id FROM world_countries WHERE iso_code_2 = 'CK'), '0000'), -- District/Village
('Matavera', (SELECT id FROM world_countries WHERE iso_code_2 = 'CK'), '0000'), -- District/Village
('Ngatangiia', (SELECT id FROM world_countries WHERE iso_code_2 = 'CK'), '0000'), -- District/Village
('Titikaveka', (SELECT id FROM world_countries WHERE iso_code_2 = 'CK'), '0000'), -- District/Village

-- Outer Islands (Pa Enua) - Main Settlements
('Arutanga', (SELECT id FROM world_countries WHERE iso_code_2 = 'CK'), '0000'), -- Main settlement on Aitutaki
('Amuri', (SELECT id FROM world_countries WHERE iso_code_2 = 'CK'), '0000'), -- Village on Aitutaki
('Vaipae', (SELECT id FROM world_countries WHERE iso_code_2 = 'CK'), '0000'), -- Village on Aitutaki
('Areora', (SELECT id FROM world_countries WHERE iso_code_2 = 'CK'), '0000'), -- Main settlement area on Atiu (cluster of villages)
('Oneroa', (SELECT id FROM world_countries WHERE iso_code_2 = 'CK'), '0000'), -- Main settlement on Mangaia
('Kimiangatau', (SELECT id FROM world_countries WHERE iso_code_2 = 'CK'), '0000'), -- Main settlement on Mauke
('Atai/Auta/Mangarei', (SELECT id FROM world_countries WHERE iso_code_2 = 'CK'), '0000'), -- Main settlement cluster on Mitiaro
('Omoka', (SELECT id FROM world_countries WHERE iso_code_2 = 'CK'), '0000'), -- Main settlement on Penrhyn (Tongareva)
('Tauhunu', (SELECT id FROM world_countries WHERE iso_code_2 = 'CK'), '0000'), -- Main settlement on Manihiki
('Rakahanga Village', (SELECT id FROM world_countries WHERE iso_code_2 = 'CK'), '0000'), -- Main settlement on Rakahanga
('Yato/Loto/Ngake', (SELECT id FROM world_countries WHERE iso_code_2 = 'CK'), '0000'); -- Main settlement cluster on Pukapuka

-- Palmerston Atoll is inhabited by descendants of one family.
-- Nassau, Suwarrow, Takutea, Manuae are effectively uninhabited or have temporary caretakers.

-- End of Cook Islands locality list (Representative Sample)

/*
-- ========================================
-- == Información sobre Cook Islands ==
-- ========================================
--
-- Descripción General:
-- Las Islas Cook son un país insular autónomo en libre asociación con Nueva Zelanda,
-- ubicado en el Océano Pacífico Sur, en Polinesia. Consiste en 15 islas dispersas
-- sobre una vasta área oceánica, divididas en el Grupo Sur (más poblado, incluyendo
-- la capital Rarotonga y Aitutaki) y el Grupo Norte (atolones de coral más remotos).
--
-- Ciudades Principales (Asentamientos):
-- * Avarua: La capital y principal centro comercial, ubicada en la costa norte de
--   la isla principal, Rarotonga.
-- * Arutanga: El principal asentamiento en la isla de Aitutaki, famosa por su laguna.
-- * Oneroa: Principal asentamiento en la isla de Mangaia.
-- * Las demás islas habitadas tienen pequeños pueblos o asentamientos principales,
--   como los listados para Atiu, Mauke, Mitiaro, Penrhyn, Manihiki, Rakahanga y Pukapuka.
--
-- Un Poco de Historia:
-- Las islas fueron pobladas por polinesios que migraron desde Tahití alrededor del
-- siglo VI d.C. El primer contacto europeo registrado fue con exploradores españoles
-- en el siglo XVI, seguido por el capitán James Cook en el siglo XVIII, de quien
-- toman su nombre moderno. Se convirtieron en un protectorado británico en 1888 y
-- fueron transferidas a la administración de Nueva Zelanda en 1901. En 1965, las
-- Islas Cook optaron por el autogobierno en libre asociación con Nueva Zelanda, lo
-- que significa que son responsables de sus asuntos internos, mientras que Nueva
-- Zelanda retiene (con el consentimiento de las Islas Cook) la responsabilidad
-- principal de la defensa y las relaciones exteriores. Los habitantes son ciudadanos
-- neozelandeses.
--
-- Datos Adicionales:
-- Los idiomas oficiales son el inglés y el maorí de las Islas Cook (Rarotongan).
-- La economía depende en gran medida del turismo (especialmente en Rarotonga y
-- Aitutaki), la ayuda de Nueva Zelanda, las finanzas offshore y la exportación
-- de perlas negras y productos agrícolas. La cultura polinesia, la música y la
-- danza son vibrantes.
--
*/
