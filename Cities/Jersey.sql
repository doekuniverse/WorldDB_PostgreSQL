-- SQL Script to insert the parishes (main administrative divisions) for Jersey (JE).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Jersey (JE).

-- NOTE: Jersey is divided into 12 parishes. This list includes all of them,
-- providing essentially complete coverage of the main administrative and populated areas.
-- Postal codes are JE# #AA format; representative JE# examples are provided.

-- Inserting parishes for Jersey (JE) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
('Saint Helier', (SELECT id FROM world_countries WHERE iso_code_2 = 'JE'), 'JE2'), -- Capital and Parish
('Saint Saviour', (SELECT id FROM world_countries WHERE iso_code_2 = 'JE'), 'JE2'), -- Parish
('Saint Clement', (SELECT id FROM world_countries WHERE iso_code_2 = 'JE'), 'JE2'), -- Parish
('Saint Lawrence', (SELECT id FROM world_countries WHERE iso_code_2 = 'JE'), 'JE3'), -- Parish
('Saint Peter', (SELECT id FROM world_countries WHERE iso_code_2 = 'JE'), 'JE3'), -- Parish
('Saint Brelade', (SELECT id FROM world_countries WHERE iso_code_2 = 'JE'), 'JE3'), -- Parish
('Saint Ouen', (SELECT id FROM world_countries WHERE iso_code_2 = 'JE'), 'JE3'), -- Parish
('Saint Mary', (SELECT id FROM world_countries WHERE iso_code_2 = 'JE'), 'JE3'), -- Parish
('Saint John', (SELECT id FROM world_countries WHERE iso_code_2 = 'JE'), 'JE3'), -- Parish
('Trinity', (SELECT id FROM world_countries WHERE iso_code_2 = 'JE'), 'JE3'), -- Parish
('Saint Martin', (SELECT id FROM world_countries WHERE iso_code_2 = 'JE'), 'JE3'), -- Parish
('Grouville', (SELECT id FROM world_countries WHERE iso_code_2 = 'JE'), 'JE3'); -- Parish

-- End of Jersey parish list (All 12 parishes)

/*
-- ====================================
-- == Información sobre Jersey ==
-- ====================================
--
-- Descripción General:
-- Jersey es la isla más grande de las Islas del Canal (Channel Islands) y una
-- Dependencia de la Corona Británica autónoma. Se encuentra en el Canal de la
-- Mancha, cerca de la costa de Normandía (Francia). No forma parte del Reino Unido
-- ni de la Unión Europea, pero la Corona Británica es responsable de su defensa y
-- relaciones exteriores. Tiene su propio parlamento (States Assembly), gobierno y
-- sistema legal. Es un importante centro financiero offshore.
--
-- Ciudades Principales (Parroquias):
-- La isla se divide en 12 parroquias (parishes).
-- * Saint Helier: Es la capital, el principal puerto y centro comercial y financiero.
--   Concentra una parte significativa de la población.
-- * Las otras 11 parroquias (Saint Saviour, Saint Clement, Saint Lawrence, Saint Peter,
--   Saint Brelade, Saint Ouen, Saint Mary, Saint John, Trinity, Saint Martin, Grouville)
--   cubren el resto de la isla, combinando áreas residenciales, rurales y costeras.
--
-- Un Poco de Historia:
-- Habitada desde tiempos prehistóricos. Formó parte del Ducado de Normandía. Al igual
-- que Guernsey, cuando Normandía continental fue conquistada por Francia en 1204,
-- Jersey permaneció leal a la Corona Inglesa (como sucesora del Duque de Normandía),
-- manteniendo su estatus particular. Durante la Segunda Guerra Mundial, fue ocupada
-- por Alemania. Después de la guerra, su economía se transformó, pasando de la
-- agricultura y el turismo a convertirse en un importante centro financiero
-- internacional gracias a su régimen fiscal favorable.
--
-- Datos Adicionales:
-- El inglés es el idioma principal, pero el francés tiene estatus oficial y sobrevive
-- el Jèrriais (un dialecto normando). La libra de Jersey (vinculada a la libra
-- esterlina) es la moneda local. Es famosa por la raza bovina Jersey. Sus leyes
-- fiscales la convierten en un centro para la banca offshore, fondos de inversión y
-- gestión de patrimonios.
--
*/
