-- SQL Script to insert the main settlements and stations for Svalbard and Jan Mayen (SJ).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Svalbard and Jan Mayen (SJ).

-- NOTE: Svalbard has very few permanent settlements, and Jan Mayen has no permanent population.
-- This list includes the main settlements/stations, providing essentially complete coverage of populated places.
-- Postal codes are Norwegian 4-digit format for Svalbard; '0000' placeholder for Jan Mayen.

-- Inserting settlements/stations for Svalbard and Jan Mayen (SJ) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Svalbard
('Longyearbyen', (SELECT id FROM world_countries WHERE iso_code_2 = 'SJ'), '9170'), -- Main settlement and administrative center
('Barentsburg', (SELECT id FROM world_countries WHERE iso_code_2 = 'SJ'), '9178'), -- Russian mining settlement
('Ny-Ålesund', (SELECT id FROM world_countries WHERE iso_code_2 = 'SJ'), '9173'), -- International research station settlement
('Sveagruva', (SELECT id FROM world_countries WHERE iso_code_2 = 'SJ'), '9175'), -- Norwegian mining settlement (operations largely ceased)
('Hornsund', (SELECT id FROM world_countries WHERE iso_code_2 = 'SJ'), '0000'), -- Polish Polar Station

-- Jan Mayen
('Olonkinbyen', (SELECT id FROM world_countries WHERE iso_code_2 = 'SJ'), '0000'); -- Main station (meteorological/military staff) on Jan Mayen

-- End of Svalbard and Jan Mayen locality list (Main Settlements/Stations)

/*
-- ====================================================
-- == Información sobre Svalbard and Jan Mayen ==
-- ====================================================
--
-- Descripción General:
-- Svalbard y Jan Mayen son dos territorios árticos remotos bajo soberanía noruega,
-- aunque agrupados bajo un único código ISO (SJ).
-- * Svalbard: Es un archipiélago ubicado en el Océano Ártico, al norte de Europa
--   continental. Tiene un estatus especial definido por el Tratado de Svalbard de
--   1920, que reconoce la soberanía noruega pero otorga a los ciudadanos de los
--   países firmantes ciertos derechos (como residencia y actividades económicas).
--   Es conocido por sus glaciares, fiordos y vida silvestre ártica (osos polares).
-- * Jan Mayen: Es una isla volcánica aislada ubicada entre Groenlandia, Islandia y
--   Svalbard. No tiene población permanente.
--
-- Ciudades Principales (Asentamientos/Estaciones):
-- No hay ciudades grandes. Los principales puntos de presencia humana son:
-- * Longyearbyen (Svalbard): El centro administrativo y el asentamiento más grande,
--   originalmente una ciudad minera noruega, ahora también centro de investigación y turismo.
-- * Barentsburg (Svalbard): Asentamiento minero ruso.
-- * Ny-Ålesund (Svalbard): Uno de los asentamientos permanentes más septentrionales
--   del mundo, dedicado a la investigación científica internacional.
-- * Sveagruva (Svalbard): Otro asentamiento minero noruego, aunque la actividad ha cesado en gran medida.
-- * Hornsund (Svalbard): Estación de investigación polar polaca.
-- * Olonkinbyen (Jan Mayen): La única estación habitada en Jan Mayen, operada por las
--   Fuerzas Armadas Noruegas y el Instituto Meteorológico Noruego.
--
-- Un Poco de Historia:
-- Svalbard fue probablemente descubierto por vikingos y luego redescubierto por el
-- explorador neerlandés Willem Barentsz en 1596. Fue utilizado como base para la
-- caza de ballenas y focas en los siglos XVII y XVIII. La minería de carbón comenzó
-- a principios del siglo XX. El Tratado de Svalbard (1920) resolvió las disputas de
-- soberanía otorgándola a Noruega pero con derechos especiales para otros firmantes.
-- Jan Mayen fue descubierta a principios del siglo XVII y reclamada por Noruega en 1929.
-- Ambas áreas tuvieron importancia estratégica durante la Guerra Fría y ahora son
-- centros importantes para la investigación ártica y climática.
--
-- Datos Adicionales:
-- Svalbard alberga la Bóveda Global de Semillas de Svalbard. Jan Mayen está dominada
-- por el volcán activo Beerenberg. El acceso a ambos territorios está regulado.
--
*/
