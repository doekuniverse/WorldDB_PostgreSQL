-- SQL Script to insert a representative sample of significant towns and villages for Samoa (WS).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Samoa (WS).

-- NOTE: Samoa consists of several islands with many villages (nu'u). This list includes the capital
-- and significant towns/villages on the main islands. Listing every single village is IMPOSSIBLE.
-- Postal codes are not used; using '0000' as a placeholder.

-- Inserting cities/villages for Samoa (WS) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Upolu Island
('Apia', (SELECT id FROM world_countries WHERE iso_code_2 = 'WS'), '0000'), -- National Capital (Tuamasaga District)
('Vaitele', (SELECT id FROM world_countries WHERE iso_code_2 = 'WS'), '0000'), -- Large town near Apia
('Faleasiu', (SELECT id FROM world_countries WHERE iso_code_2 = 'WS'), '0000'), -- A'ana District
('Leulumoega', (SELECT id FROM world_countries WHERE iso_code_2 = 'WS'), '0000'), -- A'ana District (Administrative center)
('Mulifanua', (SELECT id FROM world_countries WHERE iso_code_2 = 'WS'), '0000'), -- Aiga-i-le-Tai District (Ferry terminal to Savai'i)
('Afega', (SELECT id FROM world_countries WHERE iso_code_2 = 'WS'), '0000'), -- Tuamasaga District
('Malie', (SELECT id FROM world_countries WHERE iso_code_2 = 'WS'), '0000'), -- Tuamasaga District
('Fasito'outa', (SELECT id FROM world_countries WHERE iso_code_2 = 'WS'), '0000'), -- A'ana District
('Lotofaga', (SELECT id FROM world_countries WHERE iso_code_2 = 'WS'), '0000'), -- Atua District
('Lalomanu', (SELECT id FROM world_countries WHERE iso_code_2 = 'WS'), '0000'), -- Atua District (Popular beach)
('Siumu', (SELECT id FROM world_countries WHERE iso_code_2 = 'WS'), '0000'), -- Tuamasaga District
('Siusega', (SELECT id FROM world_countries WHERE iso_code_2 = 'WS'), '0000'), -- Near Apia

-- Savai'i Island
('Salelologa', (SELECT id FROM world_countries WHERE iso_code_2 = 'WS'), '0000'), -- Main town and ferry terminal on Savai'i (Fa'asaleleaga District)
('Asau', (SELECT id FROM world_countries WHERE iso_code_2 = 'WS'), '0000'), -- Vaisigano District
('Safotu', (SELECT id FROM world_countries WHERE iso_code_2 = 'WS'), '0000'), -- Gaga'ifomauga District
('Tuasivi', (SELECT id FROM world_countries WHERE iso_code_2 = 'WS'), '0000'), -- Fa'asaleleaga District (Administrative offices)
('Fagamalo', (SELECT id FROM world_countries WHERE iso_code_2 = 'WS'), '0000'), -- Gaga'emauga District
('Gataivai', (SELECT id FROM world_countries WHERE iso_code_2 = 'WS'), '0000'), -- Palauli District
('Satupa'itea', (SELECT id FROM world_countries WHERE iso_code_2 = 'WS'), '0000'); -- Satupa'itea District

-- Manono and Apolima islands are also inhabited but have small villages.

-- End of Samoa locality list (Representative Sample)

/*
-- ====================================
-- == Información sobre Samoa ==
-- ====================================
--
-- Descripción General:
-- Samoa, oficialmente Estado Independiente de Samoa, es un país insular polinesio
-- ubicado en el Océano Pacífico Sur, aproximadamente a medio camino entre Hawái y
-- Nueva Zelanda. Consiste en dos islas principales, Upolu (donde se encuentra la
-- capital, Apia) y Savai'i (la más grande geográficamente), además de dos islas
-- habitadas más pequeñas (Manono y Apolima) y varios islotes deshabitados. Es una
-- república parlamentaria.
--
-- Ciudades Principales (Pueblos):
-- Samoa no tiene grandes ciudades en el sentido occidental. La vida se organiza en
-- torno a pueblos (nu'u).
-- * Apia: La capital y único centro urbano de tamaño considerable, ubicada en la
--   costa norte de Upolu. Es el centro político, económico y comercial.
-- * Salelologa: El principal pueblo y puerto de ferry en la isla de Savai'i.
-- * Vaitele, Faleasiu, Leulumoega: Otros pueblos grandes o centros administrativos
--   en Upolu, cerca de Apia.
-- * Asau, Safotu, Tuasivi: Principales pueblos en la isla de Savai'i.
--
-- Un Poco de Historia:
-- Poblada por pueblos polinesios durante miles de años, Samoa es un centro importante
-- de la cultura polinesia. El primer contacto europeo significativo fue a principios
-- del siglo XVIII. En el siglo XIX, Alemania, Gran Bretaña y Estados Unidos
-- compitieron por la influencia en las islas. En 1899, el archipiélago fue dividido:
-- las islas occidentales (actual Samoa) quedaron bajo administración alemana, mientras
-- que las orientales (actual Samoa Americana) quedaron bajo control estadounidense.
-- Al comienzo de la Primera Guerra Mundial (1914), Nueva Zelanda ocupó la Samoa Alemana.
-- Después de la guerra, Nueva Zelanda administró Samoa Occidental bajo mandato de la
-- Liga de Naciones y luego fideicomiso de la ONU. Samoa se convirtió en la primera
-- nación insular polinesia en obtener la independencia en el siglo XX, en 1962. En
-- 1997, cambió oficialmente su nombre de Samoa Occidental a Samoa.
--
-- Datos Adicionales:
-- Los idiomas oficiales son el samoano (una lengua polinesia) y el inglés. La cultura
-- tradicional samoana (Fa'a Samoa - el "estilo samoano") sigue siendo muy influyente
-- en la vida cotidiana, con una fuerte estructura social basada en la familia extensa
-- ('aiga) y los jefes (matai). El cristianismo es la religión predominante. El rugby
-- es el deporte nacional. La economía depende de la agricultura, la pesca, el turismo
-- y las remesas de samoanos en el extranjero.
--
*/
