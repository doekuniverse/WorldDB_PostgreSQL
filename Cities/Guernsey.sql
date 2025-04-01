-- SQL Script to insert the parishes (main administrative divisions) for Guernsey (GG).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Guernsey (GG).

-- NOTE: Guernsey is divided into 10 parishes. This list includes all of them,
-- providing essentially complete coverage of the main administrative and populated areas on the island of Guernsey.
-- Alderney and Sark are separate jurisdictions within the Bailiwick.
-- Postal codes are GY# #AA format; representative GY# examples are provided.

-- Inserting parishes for Guernsey (GG) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
('Saint Peter Port', (SELECT id FROM world_countries WHERE iso_code_2 = 'GG'), 'GY1'), -- Capital and Parish
('Saint Sampson', (SELECT id FROM world_countries WHERE iso_code_2 = 'GG'), 'GY2'), -- Parish (St Sampson)
('Vale', (SELECT id FROM world_countries WHERE iso_code_2 = 'GG'), 'GY3'), -- Parish
('Castel', (SELECT id FROM world_countries WHERE iso_code_2 = 'GG'), 'GY5'), -- Parish (Câtel)
('Saint Saviour', (SELECT id FROM world_countries WHERE iso_code_2 = 'GG'), 'GY7'), -- Parish (St Saviour)
('Saint Pierre du Bois', (SELECT id FROM world_countries WHERE iso_code_2 = 'GG'), 'GY7'), -- Parish (St Peter's)
('Torteval', (SELECT id FROM world_countries WHERE iso_code_2 = 'GG'), 'GY8'), -- Parish
('Forest', (SELECT id FROM world_countries WHERE iso_code_2 = 'GG'), 'GY8'), -- Parish
('Saint Martin', (SELECT id FROM world_countries WHERE iso_code_2 = 'GG'), 'GY4'), -- Parish (St Martin)
('Saint Andrew', (SELECT id FROM world_countries WHERE iso_code_2 = 'GG'), 'GY6'); -- Parish (St Andrew's)

-- Note: Smaller islands like Herm, Jethou, Lihou are generally associated with parishes or are separate small entities.

-- End of Guernsey parish list (All 10 parishes on Guernsey island)

/*
-- ====================================
-- == Información sobre Guernsey ==
-- ====================================
--
-- Descripción General:
-- Guernsey es una Dependencia de la Corona Británica ubicada en el Canal de la
-- Mancha, cerca de la costa de Normandía (Francia). No forma parte del Reino Unido
-- ni de la Unión Europea, pero la Corona Británica es responsable de su defensa y
-- relaciones exteriores. El Bailiazgo (Bailiwick) de Guernsey incluye la isla
-- principal de Guernsey, así como las islas más pequeñas de Herm, Jethou y Lihou,
-- y tiene dependencia sobre las jurisdicciones separadas de Alderney y Sark. Es
-- conocido como un importante centro financiero offshore.
--
-- Ciudades Principales (Parroquias):
-- La isla principal de Guernsey se divide en 10 parroquias (parishes).
-- * Saint Peter Port: Es la capital y principal puerto y centro comercial.
-- * Saint Sampson: Segundo centro portuario e industrial.
-- * Vale, Castel, Saint Martin: Otras parroquias pobladas.
-- * Las demás parroquias (Saint Saviour, Saint Pierre du Bois, Torteval, Forest,
--   Saint Andrew) son más rurales.
--
-- Un Poco de Historia:
-- Habitada desde tiempos prehistóricos. Formó parte del Ducado de Normandía. Cuando
-- Normandía continental fue conquistada por Francia en 1204, las Islas del Canal
-- (incluyendo Guernsey) permanecieron leales a la Corona Inglesa (como sucesora
-- del Duque de Normandía), estableciendo su estatus particular que perdura hasta hoy.
-- Durante la Segunda Guerra Mundial, las Islas del Canal fueron el único territorio
-- británico ocupado por Alemania. Después de la guerra, desarrolló una próspera
-- industria de servicios financieros.
--
-- Datos Adicionales:
-- El inglés es el idioma principal, pero el francés tiene estatus oficial y aún
-- sobrevive el Guernésiais (un dialecto normando) aunque con pocos hablantes.
-- La libra de Guernsey (vinculada a la libra esterlina) es la moneda local. Es
-- famosa por la raza bovina Guernsey y por haber sido el hogar del escritor
-- Victor Hugo durante su exilio (su casa, Hauteville House, es un museo).
--
*/
