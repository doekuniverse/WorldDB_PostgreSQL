-- SQL Script to insert a representative sample of significant cities and towns for Djibouti (DJ).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Djibouti (DJ).

-- NOTE: Djibouti is small and largely arid. This list includes the capital, regional capitals,
-- and significant towns. Listing every single minor settlement is IMPOSSIBLE.
-- Postal codes are not used; using '0000' as a placeholder.

-- Inserting cities for Djibouti (DJ) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Regional Capitals / Major Towns
('Djibouti City', (SELECT id FROM world_countries WHERE iso_code_2 = 'DJ'), '0000'), -- National Capital & Djibouti Region
('Ali Sabieh', (SELECT id FROM world_countries WHERE iso_code_2 = 'DJ'), '0000'), -- Ali Sabieh Region Capital
('Tadjoura', (SELECT id FROM world_countries WHERE iso_code_2 = 'DJ'), '0000'), -- Tadjourah Region Capital
('Obock', (SELECT id FROM world_countries WHERE iso_code_2 = 'DJ'), '0000'), -- Obock Region Capital
('Dikhil', (SELECT id FROM world_countries WHERE iso_code_2 = 'DJ'), '0000'), -- Dikhil Region Capital
('Arta', (SELECT id FROM world_countries WHERE iso_code_2 = 'DJ'), '0000'), -- Arta Region Capital

-- Other Significant Towns/Settlements (Sample)
('Loyada', (SELECT id FROM world_countries WHERE iso_code_2 = 'DJ'), '0000'), -- Border town with Somalia/Somaliland
('Balho', (SELECT id FROM world_countries WHERE iso_code_2 = 'DJ'), '0000'), -- Town near Ethiopian border
('Randa', (SELECT id FROM world_countries WHERE iso_code_2 = 'DJ'), '0000'), -- Tadjourah Region
('As Eyla', (SELECT id FROM world_countries WHERE iso_code_2 = 'DJ'), '0000'), -- Dikhil Region
('Yoboki', (SELECT id FROM world_countries WHERE iso_code_2 = 'DJ'), '0000'), -- Dikhil Region
('Galafi', (SELECT id FROM world_countries WHERE iso_code_2 = 'DJ'), '0000'); -- Border crossing with Ethiopia

-- End of Djibouti locality list (Representative Sample)

/*
-- ====================================
-- == Información sobre Djibouti ==
-- ====================================
--
-- Descripción General:
-- Yibuti (Djibouti) es un pequeño país ubicado en el Cuerno de África, en África
-- Oriental. Limita con Eritrea al norte, Etiopía al oeste y sur, y Somalia
-- (específicamente Somalilandia) al sureste. Tiene una costa estratégica en el
-- Mar Rojo y el Golfo de Adén, en el estrecho de Bab-el-Mandeb, una de las rutas
-- marítimas más transitadas del mundo. El paisaje es mayormente árido, con
-- desiertos, matorrales y algunas zonas montañosas.
--
-- Ciudades Principales:
-- * Ciudad de Yibuti (Djibouti City): La capital y ciudad abrumadoramente más
--   grande, donde reside la mayoría de la población del país. Es un puerto
--   estratégico clave para el comercio de Etiopía (que no tiene salida al mar).
-- * Ali Sabieh, Tadjoura, Obock, Dikhil, Arta: Capitales de las cinco regiones
--   administrativas del país, son pueblos considerablemente más pequeños que la capital.
--
-- Un Poco de Historia:
-- Habitada históricamente por los pueblos Afar e Issa (somalí). En el siglo XIX,
-- Francia estableció un protectorado en la región, conocido como la Costa Francesa
-- de los Somalíes (Côte française des Somalis), posteriormente renombrado como
-- Territorio Francés de los Afars y los Issas. El interés principal era el puerto
-- y su ubicación estratégica. Yibuti obtuvo la independencia de Francia en 1977.
-- La política post-independencia ha estado dominada por la figura de Hassan Gouled
-- Aptidon y luego por su sobrino, Ismaïl Omar Guelleh, en un sistema de partido
-- dominante. El país ha mantenido una relativa estabilidad en una región volátil,
-- en parte debido a su importancia estratégica y a la presencia de numerosas bases
-- militares extranjeras (Francia, EE.UU., China, Japón, Italia, etc.).
--
-- Datos Adicionales:
-- Los idiomas oficiales son el francés y el árabe, mientras que el somalí y el afar
-- son las lenguas maternas principales. La economía depende en gran medida de los
-- servicios portuarios, el alquiler de bases militares y la ayuda exterior. El
-- Lago Assal, un lago salino en un cráter volcánico, es el punto más bajo de África.
--
*/
