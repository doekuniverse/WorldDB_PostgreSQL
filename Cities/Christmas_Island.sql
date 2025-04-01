-- SQL Script to insert the main settlements for Christmas Island (CX).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Christmas Island (CX).

-- NOTE: Christmas Island is small. This list includes the main recognized settlements.
-- The entire territory uses the Australian postal code 6798.

-- Inserting settlements for Christmas Island (CX) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
('Flying Fish Cove', (SELECT id FROM world_countries WHERE iso_code_2 = 'CX'), '6798'), -- Main settlement, often called "The Settlement"
('Poon Saan', (SELECT id FROM world_countries WHERE iso_code_2 = 'CX'), '6798'), -- Settlement area
('Drumsite', (SELECT id FROM world_countries WHERE iso_code_2 = 'CX'), '6798'), -- Settlement area
('Silver City', (SELECT id FROM world_countries WHERE iso_code_2 = 'CX'), '6798'), -- Residential area
('Kampong (Malay Kampong)', (SELECT id FROM world_countries WHERE iso_code_2 = 'CX'), '6798'), -- Settlement area
('Settlement Area', (SELECT id FROM world_countries WHERE iso_code_2 = 'CX'), '6798'); -- General term for the main populated zone

-- South Point is largely abandoned but sometimes listed as a historical location.

-- End of Christmas Island settlement list (Main Areas)

/*
-- ========================================
-- == Información sobre Christmas Island ==
-- ========================================
--
-- Descripción General:
-- La Isla de Navidad es un territorio externo de Australia ubicado en el Océano
-- Índico, al sur de Indonesia y al noroeste de Australia continental. Es la cima
-- de una montaña submarina y es conocida por su biodiversidad única, incluyendo
-- la espectacular migración anual de millones de cangrejos rojos terrestres, así
-- como otras especies endémicas de flora y fauna. Gran parte de la isla es
-- parque nacional.
--
-- Ciudades Principales (Asentamientos):
-- La isla no tiene grandes ciudades. La población se concentra principalmente en
-- el extremo norte de la isla, en un área generalmente conocida como "Settlement Area".
-- Dentro de esta área se distinguen varios núcleos:
-- * Flying Fish Cove: Considerado el asentamiento principal y capital no oficial.
-- * Poon Saan: Un área residencial en una terraza sobre Flying Fish Cove.
-- * Drumsite: Otra área residencial y de servicios.
-- * Silver City, Kampong: Otras áreas residenciales.
--
-- Un Poco de Historia:
-- La isla fue nombrada el día de Navidad de 1643 por un capitán inglés. Fue
-- anexada por el Reino Unido en 1888 tras el descubrimiento de ricos depósitos
-- de fosfato. La minería de fosfato comenzó poco después, trayendo trabajadores
-- principalmente de China, Malasia y Singapur. La soberanía de la isla fue
-- transferida del Reino Unido a Australia en 1958. La minería de fosfato ha
-- continuado, aunque con altibajos. En el siglo XXI, la isla también ha sido
-- conocida por albergar un centro de detención de inmigrantes australiano.
--
-- Datos Adicionales:
-- El inglés es el idioma oficial, pero también se hablan malayo y varios dialectos
-- chinos. La migración del cangrejo rojo es un evento natural de fama mundial.
-- El buceo y la observación de aves son actividades turísticas importantes.
--
*/
