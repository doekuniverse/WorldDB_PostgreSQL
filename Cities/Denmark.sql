-- SQL Script to insert a representative sample of significant cities and towns for Denmark (DK).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Denmark (DK).
-- NOTE: This list focuses on metropolitan Denmark, excluding Greenland and the Faroe Islands.

-- NOTE: This list includes the capital, major cities, regional centers, and significant towns.
-- Listing every single village is IMPOSSIBLE.
-- Postal codes are 4 digits; examples or '0000' placeholder are provided.

-- Inserting cities for Denmark (DK) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Major Cities / Regional Centers
('Copenhagen (København)', (SELECT id FROM world_countries WHERE iso_code_2 = 'DK'), '1000'), -- National Capital
('Aarhus', (SELECT id FROM world_countries WHERE iso_code_2 = 'DK'), '8000'), -- Second largest city
('Odense', (SELECT id FROM world_countries WHERE iso_code_2 = 'DK'), '5000'), -- Third largest city (on Funen)
('Aalborg', (SELECT id FROM world_countries WHERE iso_code_2 = 'DK'), '9000'), -- Fourth largest city (North Jutland)
('Esbjerg', (SELECT id FROM world_countries WHERE iso_code_2 = 'DK'), '6700'), -- Major port city (West Jutland)
('Randers', (SELECT id FROM world_countries WHERE iso_code_2 = 'DK'), '8900'), -- East Jutland
('Kolding', (SELECT id FROM world_countries WHERE iso_code_2 = 'DK'), '6000'), -- South Jutland
('Horsens', (SELECT id FROM world_countries WHERE iso_code_2 = 'DK'), '8700'), -- East Jutland
('Vejle', (SELECT id FROM world_countries WHERE iso_code_2 = 'DK'), '7100'), -- South Jutland
('Roskilde', (SELECT id FROM world_countries WHERE iso_code_2 = 'DK'), '4000'), -- Zealand (Historic city, festival)
('Herning', (SELECT id FROM world_countries WHERE iso_code_2 = 'DK'), '7400'), -- Central Jutland
('Helsingør (Elsinore)', (SELECT id FROM world_countries WHERE iso_code_2 = 'DK'), '3000'), -- Zealand (Kronborg Castle)
('Silkeborg', (SELECT id FROM world_countries WHERE iso_code_2 = 'DK'), '8600'), -- Central Jutland
('Næstved', (SELECT id FROM world_countries WHERE iso_code_2 = 'DK'), '4700'), -- Zealand
('Fredericia', (SELECT id FROM world_countries WHERE iso_code_2 = 'DK'), '7000'), -- South Jutland
('Viborg', (SELECT id FROM world_countries WHERE iso_code_2 = 'DK'), '8800'), -- Central Jutland (Historic city)
('Køge', (SELECT id FROM world_countries WHERE iso_code_2 = 'DK'), '4600'), -- Zealand
('Holstebro', (SELECT id FROM world_countries WHERE iso_code_2 = 'DK'), '7500'), -- West Jutland
('Slagelse', (SELECT id FROM world_countries WHERE iso_code_2 = 'DK'), '4200'), -- Zealand
('Taastrup', (SELECT id FROM world_countries WHERE iso_code_2 = 'DK'), '2630'), -- Høje-Taastrup Municipality (Copenhagen Area)
('Hillerød', (SELECT id FROM world_countries WHERE iso_code_2 = 'DK'), '3400'), -- Zealand (Frederiksborg Castle)
('Sønderborg', (SELECT id FROM world_countries WHERE iso_code_2 = 'DK'), '6400'), -- South Jutland (Near German border)
('Svendborg', (SELECT id FROM world_countries WHERE iso_code_2 = 'DK'), '5700'), -- Funen (South Funen Archipelago)
('Hjørring', (SELECT id FROM world_countries WHERE iso_code_2 = 'DK'), '9800'), -- North Jutland
('Holbæk', (SELECT id FROM world_countries WHERE iso_code_2 = 'DK'), '4300'), -- Zealand
('Frederikshavn', (SELECT id FROM world_countries WHERE iso_code_2 = 'DK'), '9900'), -- North Jutland (Port)
('Gladsaxe', (SELECT id FROM world_countries WHERE iso_code_2 = 'DK'), '2860'), -- Copenhagen Suburb/Municipality
('Hørsholm', (SELECT id FROM world_countries WHERE iso_code_2 = 'DK'), '2970'), -- Zealand (North of Copenhagen)
('Skive', (SELECT id FROM world_countries WHERE iso_code_2 = 'DK'), '7800'), -- Central Jutland
('Ringsted', (SELECT id FROM world_countries WHERE iso_code_2 = 'DK'), '4100'), -- Zealand
('Aabenraa', (SELECT id FROM world_countries WHERE iso_code_2 = 'DK'), '6200'), -- South Jutland
('Nyborg', (SELECT id FROM world_countries WHERE iso_code_2 = 'DK'), '5800'), -- Funen (Historic city, Great Belt Bridge)
('Kalundborg', (SELECT id FROM world_countries WHERE iso_code_2 = 'DK'), '4400'), -- Zealand
('Ikast', (SELECT id FROM world_countries WHERE iso_code_2 = 'DK'), '7430'), -- Central Jutland
('Skanderborg', (SELECT id FROM world_countries WHERE iso_code_2 = 'DK'), '8660'); -- East Jutland

-- End of Denmark city list (Representative Sample of Metropolitan Denmark)

/*
-- ====================================
-- == Información sobre Denmark ==
-- ====================================
--
-- Descripción General:
-- Dinamarca (Denmark) es un país nórdico ubicado en el norte de Europa. Forma parte
-- de Escandinavia culturalmente. Consiste en la península de Jutlandia (Jylland) y
-- un extenso archipiélago de más de 400 islas, de las cuales las más grandes y
-- pobladas son Selandia (Sjælland, donde está Copenhague), Fionia (Fyn), Lolland,
-- Falster y Bornholm. El Reino de Dinamarca también incluye dos territorios autónomos
-- en el Atlántico Norte: Groenlandia y las Islas Feroe (que no están incluidas en
-- esta entrada 'DK'). Dinamarca metropolitana es mayormente plana con costas
-- extensas y un clima templado.
--
-- Ciudades Principales:
-- * Copenhague (København): La capital y ciudad más grande, ubicada en la isla de
--   Selandia. Es un importante centro cultural, económico y de diseño, famosa por
--   la Sirenita, los Jardines de Tívoli y su alta calidad de vida.
-- * Aarhus: La segunda ciudad más grande, principal centro urbano en Jutlandia.
-- * Odense: La tercera ciudad más grande, en la isla de Fionia, lugar de nacimiento
--   de Hans Christian Andersen.
-- * Aalborg: Principal ciudad en el norte de Jutlandia.
-- * Esbjerg: Importante puerto en la costa oeste de Jutlandia.
-- * La lista incluye también otras ciudades importantes y centros regionales.
--
-- Un Poco de Historia:
-- Dinamarca tiene una historia rica que se remonta a la Edad de Piedra y la Edad
-- del Hierro. Fue unificada alrededor del siglo X y fue el centro de la Era Vikinga,
-- con exploradores y conquistadores daneses llegando a gran parte de Europa. La
-- monarquía danesa es una de las más antiguas del mundo. Formó parte de la Unión
-- de Kalmar (con Noruega y Suecia) en la Baja Edad Media. Fue una potencia europea
-- significativa, aunque perdió territorios (especialmente Suecia y Noruega) en
-- siglos posteriores. Se convirtió en una monarquía constitucional en 1849. Fue
-- neutral en la Primera Guerra Mundial pero ocupada por Alemania en la Segunda.
-- Es conocida por su modelo de estado de bienestar y su diseño moderno. Es miembro
-- fundador de la OTAN y miembro de la Unión Europea.
--
-- Datos Adicionales:
-- El danés es el idioma oficial. Dinamarca es consistentemente clasificada entre
-- los países más felices del mundo. Es famosa por la marca de juguetes LEGO, el
-- escritor Hans Christian Andersen, el diseño danés (muebles, arquitectura) y su
-- cultura ciclista.
--
*/
