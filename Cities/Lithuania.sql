-- SQL Script to insert a representative sample of significant cities and towns for Lithuania (LT).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Lithuania (LT).

-- NOTE: Lithuania has 60 municipalities and many smaller villages (kaimai). This list includes the capital,
-- county seats, major cities, and significant towns/municipality centers. Listing every single locality is IMPOSSIBLE.
-- Postal codes are LT-#####; examples or 'LT-00000' placeholder are provided.

-- Inserting cities for Lithuania (LT) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & County Seats (Apskrities centras) / Major Cities
('Vilnius', (SELECT id FROM world_countries WHERE iso_code_2 = 'LT'), 'LT-01000'), -- National Capital & Vilnius County Capital
('Kaunas', (SELECT id FROM world_countries WHERE iso_code_2 = 'LT'), 'LT-44000'), -- Kaunas County Capital, Second largest city
('Klaipėda', (SELECT id FROM world_countries WHERE iso_code_2 = 'LT'), 'LT-91000'), -- Klaipėda County Capital (Major port)
('Šiauliai', (SELECT id FROM world_countries WHERE iso_code_2 = 'LT'), 'LT-76000'), -- Šiauliai County Capital
('Panevėžys', (SELECT id FROM world_countries WHERE iso_code_2 = 'LT'), 'LT-35000'), -- Panevėžys County Capital
('Alytus', (SELECT id FROM world_countries WHERE iso_code_2 = 'LT'), 'LT-62100'), -- Alytus County Capital
('Marijampolė', (SELECT id FROM world_countries WHERE iso_code_2 = 'LT'), 'LT-68100'), -- Marijampolė County Capital
('Mažeikiai', (SELECT id FROM world_countries WHERE iso_code_2 = 'LT'), 'LT-89000'), -- Telšiai County (Major city)
('Jonava', (SELECT id FROM world_countries WHERE iso_code_2 = 'LT'), 'LT-55000'), -- Kaunas County (Major city)
('Utena', (SELECT id FROM world_countries WHERE iso_code_2 = 'LT'), 'LT-28100'), -- Utena County Capital
('Kėdainiai', (SELECT id FROM world_countries WHERE iso_code_2 = 'LT'), 'LT-57000'), -- Kaunas County (Major city)
('Telšiai', (SELECT id FROM world_countries WHERE iso_code_2 = 'LT'), 'LT-87100'), -- Telšiai County Capital
('Tauragė', (SELECT id FROM world_countries WHERE iso_code_2 = 'LT'), 'LT-72100'), -- Tauragė County Capital

-- Other Significant Towns / Municipality Centers (Sample)
('Ukmergė', (SELECT id FROM world_countries WHERE iso_code_2 = 'LT'), 'LT-20100'), -- Vilnius County
('Visaginas', (SELECT id FROM world_countries WHERE iso_code_2 = 'LT'), 'LT-31100'), -- Utena County (Near former Ignalina NPP)
('Plungė', (SELECT id FROM world_countries WHERE iso_code_2 = 'LT'), 'LT-90100'), -- Telšiai County
('Kretinga', (SELECT id FROM world_countries WHERE iso_code_2 = 'LT'), 'LT-97100'), -- Klaipėda County
('Radviliškis', (SELECT id FROM world_countries WHERE iso_code_2 = 'LT'), 'LT-82100'), -- Šiauliai County (Railway hub)
('Palanga', (SELECT id FROM world_countries WHERE iso_code_2 = 'LT'), 'LT-00100'), -- Klaipėda County (Coastal resort)
('Gargždai', (SELECT id FROM world_countries WHERE iso_code_2 = 'LT'), 'LT-96100'), -- Klaipėda County
('Druskininkai', (SELECT id FROM world_countries WHERE iso_code_2 = 'LT'), 'LT-66100'), -- Alytus County (Spa town)
('Rokiškis', (SELECT id FROM world_countries WHERE iso_code_2 = 'LT'), 'LT-42100'), -- Panevėžys County
('Biržai', (SELECT id FROM world_countries WHERE iso_code_2 = 'LT'), 'LT-41100'), -- Panevėžys County
('Kuršėnai', (SELECT id FROM world_countries WHERE iso_code_2 = 'LT'), 'LT-81100'), -- Šiauliai County
('Elektrėnai', (SELECT id FROM world_countries WHERE iso_code_2 = 'LT'), 'LT-26100'), -- Vilnius County (Power plant town)
('Jurbarkas', (SELECT id FROM world_countries WHERE iso_code_2 = 'LT'), 'LT-74100'), -- Tauragė County
('Vilkaviškis', (SELECT id FROM world_countries WHERE iso_code_2 = 'LT'), 'LT-70100'), -- Marijampolė County
('Raseiniai', (SELECT id FROM world_countries WHERE iso_code_2 = 'LT'), 'LT-60100'), -- Kaunas County
('Anykščiai', (SELECT id FROM world_countries WHERE iso_code_2 = 'LT'), 'LT-29100'), -- Utena County
('Lentvaris', (SELECT id FROM world_countries WHERE iso_code_2 = 'LT'), 'LT-25100'), -- Vilnius County
('Grigiškės', (SELECT id FROM world_countries WHERE iso_code_2 = 'LT'), 'LT-27100'); -- Vilnius County (Part of Vilnius city municipality)

-- End of Lithuania city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Lithuania ==
-- ====================================
--
-- Descripción General:
-- Lituania (Lithuania) es un país ubicado en el norte de Europa, el más meridional
-- y grande de los tres Estados Bálticos. Limita con Letonia al norte, Bielorrusia
-- al este y sur, Polonia y el exclave ruso de Kaliningrado al suroeste, y el Mar
-- Báltico al oeste. Su terreno es mayormente llano, con algunas colinas bajas,
-- numerosos lagos y extensos bosques. Es una república semipresidencialista y
-- miembro de la Unión Europea, la OTAN y la Eurozona.
--
-- Ciudades Principales:
-- * Vilna (Vilnius): La capital y ciudad más grande, ubicada en el sureste. Su
--   centro histórico barroco es Patrimonio de la Humanidad por la UNESCO.
-- * Kaunas: La segunda ciudad más grande, ubicada en el centro del país, capital
--   temporal durante el período de entreguerras.
-- * Klaipėda: La tercera ciudad y principal puerto marítimo del país en el Mar Báltico.
-- * Šiauliai: Importante ciudad en el norte, cerca de la Colina de las Cruces.
-- * Panevėžys: Centro industrial y cultural en el norte.
-- * Alytus, Marijampolė, Mažeikiai, Jonava, Utena: Otras ciudades importantes y
--   capitales de condado (apskritis).
-- * La lista incluye también las capitales de todos los condados y otros pueblos significativos.
--
-- Un Poco de Historia:
-- Habitada por tribus bálticas. El Gran Ducado de Lituania surgió en el siglo XIII
-- y se convirtió en uno de los estados más grandes de Europa en la Edad Media,
-- extendiéndose desde el Báltico hasta el Mar Negro. En 1386, se unió dinásticamente
-- con Polonia, formando la Mancomunidad Polaco-Lituana, una potencia importante
-- durante varios siglos. Lituania fue la última nación de Europa en ser cristianizada
-- oficialmente. En el siglo XVIII, la Mancomunidad fue repartida y la mayor parte
-- de Lituania quedó bajo el dominio del Imperio Ruso. Declaró su independencia en
-- 1918 tras la Primera Guerra Mundial. Fue ocupada por la Unión Soviética en 1940
-- durante la Segunda Guerra Mundial (y brevemente por la Alemania nazi). Tras décadas
-- de ocupación soviética y resistencia (incluyendo guerrillas partisanas), Lituania
-- fue la primera república soviética en declarar la restauración de su independencia
-- en 1990, un acto clave en la disolución de la URSS (parte de la "Revolución Cantada").
-- Desde entonces, se ha integrado plenamente en las estructuras europeas y occidentales.
--
-- Datos Adicionales:
-- El lituano es el idioma oficial (una de las lenguas bálticas más antiguas). El
-- catolicismo romano es la religión predominante. Lituania es conocida por su ámbar
-- báltico, su naturaleza (Parque Nacional de Curonian Spit, compartido con
-- Kaliningrado) y su fuerte tradición en el baloncesto.
--
*/
