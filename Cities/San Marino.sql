-- SQL Script to insert all municipalities (castelli) for San Marino (SM).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains San Marino (SM).

-- NOTE: San Marino is very small and divided into 9 municipalities (castelli). This list includes all of them,
-- providing essentially complete coverage at the municipal level.
-- Postal codes are 5 digits.

-- Inserting municipalities for San Marino (SM) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
('City of San Marino (Città di San Marino)', (SELECT id FROM world_countries WHERE iso_code_2 = 'SM'), '47890'), -- Capital
('Serravalle', (SELECT id FROM world_countries WHERE iso_code_2 = 'SM'), '47899'), -- Largest settlement by population
('Borgo Maggiore', (SELECT id FROM world_countries WHERE iso_code_2 = 'SM'), '47893'), -- Location of market, base of cable car
('Domagnano', (SELECT id FROM world_countries WHERE iso_code_2 = 'SM'), '47895'),
('Fiorentino', (SELECT id FROM world_countries WHERE iso_code_2 = 'SM'), '47897'),
('Acquaviva', (SELECT id FROM world_countries WHERE iso_code_2 = 'SM'), '47892'),
('Faetano', (SELECT id FROM world_countries WHERE iso_code_2 = 'SM'), '47896'),
('Chiesanuova', (SELECT id FROM world_countries WHERE iso_code_2 = 'SM'), '47894'),
('Montegiardino', (SELECT id FROM world_countries WHERE iso_code_2 = 'SM'), '47898'); -- Smallest municipality

-- End of San Marino municipality list (All 9 castelli included)

/*
-- ====================================
-- == Información sobre San Marino ==
-- ====================================
--
-- Descripción General:
-- La Serenísima República de San Marino es un microestado sin salida al mar ubicado
-- en el sur de Europa, completamente rodeado por Italia (entre las regiones de
-- Emilia-Romaña y Marcas). Es uno de los países más pequeños del mundo y afirma ser
-- la república constitucional más antigua del mundo aún existente. Se encuentra en
-- las laderas del Monte Titano.
--
-- Ciudades Principales (Castelli):
-- San Marino se divide administrativamente en 9 municipios, llamados "castelli" (castillos).
-- * Ciudad de San Marino (Città di San Marino): Es la capital, ubicada en la cima
--   del Monte Titano, famosa por sus tres torres medievales (Guaita, Cesta, Montale).
--   Su centro histórico es Patrimonio de la Humanidad por la UNESCO.
-- * Serravalle: El municipio más poblado, ubicado en una zona más baja, es el principal
--   centro industrial y deportivo (sede del estadio nacional).
-- * Borgo Maggiore: Ubicado al pie del Monte Titano, conectado a la capital por un
--   teleférico, conocido por su mercado.
-- * Domagnano, Fiorentino, Acquaviva, Faetano, Chiesanuova, Montegiardino: Los
--   demás castelli que componen el país.
-- * La lista incluye los 9 castelli.
--
-- Un Poco de Historia:
-- La tradición atribuye la fundación de San Marino a San Marino (un cantero cristiano
-- que huía de la persecución romana) en el año 301 d.C. Ha mantenido su independencia
-- a lo largo de los siglos, a pesar de estar rodeada por estados más grandes, gracias
-- a su ubicación montañosa y a una hábil diplomacia. Su estructura republicana ha
-- perdurado desde la Edad Media. Firmó un tratado de amistad con Italia en 1862,
-- que respeta su independencia. Se mantuvo neutral en ambas guerras mundiales.
--
-- Datos Adicionales:
-- El italiano es el idioma oficial. San Marino no es miembro de la Unión Europea,
-- pero utiliza el euro como moneda a través de un acuerdo especial. La economía se
-- basa en el turismo, la banca, la manufactura (cerámica, ropa, etc.) y la venta
-- de sellos postales y monedas de colección. El jefe de estado es colegiado, con
-- dos Capitanes Regentes elegidos cada seis meses por el parlamento (Gran y General
-- Consejo).
--
*/
