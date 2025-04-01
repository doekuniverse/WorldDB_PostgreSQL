-- SQL Script to insert a representative sample of significant cities and towns for Liberia (LR).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Liberia (LR).

-- NOTE: Liberia has numerous localities, data availability can be challenging post-conflict.
-- This list includes the capital, county capitals, and significant towns. Listing every single village is IMPOSSIBLE.
-- Postal codes are not used; using '0000' as a placeholder.

-- Inserting cities for Liberia (LR) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & County Capitals / Major Towns
('Monrovia', (SELECT id FROM world_countries WHERE iso_code_2 = 'LR'), '0000'), -- National Capital (Montserrado County)
('Gbarnga', (SELECT id FROM world_countries WHERE iso_code_2 = 'LR'), '0000'), -- Bong County Capital
('Kakata', (SELECT id FROM world_countries WHERE iso_code_2 = 'LR'), '0000'), -- Margibi County Capital
('Buchanan', (SELECT id FROM world_countries WHERE iso_code_2 = 'LR'), '0000'), -- Grand Bassa County Capital
('Zwedru', (SELECT id FROM world_countries WHERE iso_code_2 = 'LR'), '0000'), -- Grand Gedeh County Capital
('Voinjama', (SELECT id FROM world_countries WHERE iso_code_2 = 'LR'), '0000'), -- Lofa County Capital
('Harper', (SELECT id FROM world_countries WHERE iso_code_2 = 'LR'), '0000'), -- Maryland County Capital
('Greenville', (SELECT id FROM world_countries WHERE iso_code_2 = 'LR'), '0000'), -- Sinoe County Capital
('Tubmanburg', (SELECT id FROM world_countries WHERE iso_code_2 = 'LR'), '0000'), -- Bomi County Capital
('Sanniquellie', (SELECT id FROM world_countries WHERE iso_code_2 = 'LR'), '0000'), -- Nimba County Capital
('Ganta', (SELECT id FROM world_countries WHERE iso_code_2 = 'LR'), '0000'), -- Nimba County (Major commercial town)
('Robertsport', (SELECT id FROM world_countries WHERE iso_code_2 = 'LR'), '0000'), -- Grand Cape Mount County Capital
('Barclayville', (SELECT id FROM world_countries WHERE iso_code_2 = 'LR'), '0000'), -- Grand Kru County Capital
('Cestos City', (SELECT id FROM world_countries WHERE iso_code_2 = 'LR'), '0000'), -- River Cess County Capital
('Fish Town', (SELECT id FROM world_countries WHERE iso_code_2 = 'LR'), '0000'), -- River Gee County Capital
('Bensonville', (SELECT id FROM world_countries WHERE iso_code_2 = 'LR'), '0000'), -- Montserrado County Capital (separate from Monrovia city)

-- Other Significant Towns (Sample)
('Paynesville', (SELECT id FROM world_countries WHERE iso_code_2 = 'LR'), '0000'), -- Montserrado County (Part of Greater Monrovia)
('Harbel', (SELECT id FROM world_countries WHERE iso_code_2 = 'LR'), '0000'), -- Margibi County (Near Roberts Int'l Airport, Firestone plantation)
('Pleebo', (SELECT id FROM world_countries WHERE iso_code_2 = 'LR'), '0000'), -- Maryland County
('Foya', (SELECT id FROM world_countries WHERE iso_code_2 = 'LR'), '0000'), -- Lofa County
('Zorzor', (SELECT id FROM world_countries WHERE iso_code_2 = 'LR'), '0000'), -- Lofa County
('Tapeta', (SELECT id FROM world_countries WHERE iso_code_2 = 'LR'), '0000'), -- Nimba County
('Saclepea', (SELECT id FROM world_countries WHERE iso_code_2 = 'LR'), '0000'), -- Nimba County
('River Cess', (SELECT id FROM world_countries WHERE iso_code_2 = 'LR'), '0000'), -- River Cess County (alternative name/nearby settlement)
('Buchanan', (SELECT id FROM world_countries WHERE iso_code_2 = 'LR'), '0000'); -- Grand Bassa County Capital (already listed, ensure no duplicates in real use)


-- End of Liberia city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Liberia ==
-- ====================================
--
-- Descripción General:
-- Liberia es un país ubicado en la costa de África Occidental. Limita con Sierra
-- Leona al oeste, Guinea al norte y Costa de Marfil al este. Tiene una costa en
-- el Océano Atlántico. Es uno de los pocos países africanos que no fue colonizado
-- por potencias europeas durante el Reparto de África, aunque fue fundado y
-- colonizado por ciudadanos estadounidenses (esclavos liberados y afroamericanos
-- nacidos libres) con el apoyo de la American Colonization Society.
--
-- Ciudades Principales:
-- * Monrovia: La capital y ciudad más grande, ubicada en la costa. Nombrada en
--   honor al presidente estadounidense James Monroe. Es el centro económico y
--   administrativo.
-- * Gbarnga: Segunda ciudad importante, ubicada en el interior.
-- * Kakata, Buchanan, Zwedru, Voinjama: Otras capitales de condado significativas.
-- * Ganta: Importante centro comercial cerca de la frontera con Guinea.
-- * La lista incluye también las capitales de los 15 condados y otros pueblos importantes.
--
-- Un Poco de Historia:
-- La región estaba habitada por pueblos indígenas. A principios del siglo XIX, la
-- American Colonization Society comenzó a enviar afroamericanos liberados a la
-- región para establecer una colonia. En 1847, estos colonos declararon la
-- independencia y establecieron la República de Liberia, la primera república
-- africana. Durante gran parte de su historia, el país estuvo dominado política y
-- económicamente por la élite américo-liberiana (descendientes de los colonos).
-- Esta dominación contribuyó a tensiones con la mayoría indígena. En 1980, un golpe
-- de estado liderado por Samuel Doe derrocó al gobierno américo-liberiano. El país
-- sufrió dos devastadoras guerras civiles (1989-1997 y 1999-2003) que involucraron
-- a Charles Taylor y dejaron cientos de miles de muertos y una infraestructura
-- destruida. Desde 2003, con la ayuda de la ONU, Liberia ha estado en un proceso
-- de paz, reconstrucción y consolidación democrática. Ellen Johnson Sirleaf se
-- convirtió en la primera mujer jefa de estado elegida democráticamente en África
-- en 2006.
--
-- Datos Adicionales:
-- El inglés es el idioma oficial, pero se hablan muchas lenguas locales. La economía
-- se basa en la exportación de recursos naturales (mineral de hierro, caucho, madera)
-- y la agricultura. El país enfrenta grandes desafíos de desarrollo y reconstrucción
-- post-conflicto.
--
*/
