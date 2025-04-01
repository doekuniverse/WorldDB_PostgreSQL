-- SQL Script to insert a representative sample of significant settlements for the Turks and Caicos Islands (TC).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Turks and Caicos Islands (TC).

-- NOTE: The Turks and Caicos Islands consist of numerous islands and cays, only a few of which are inhabited.
-- Listing every single small settlement or cluster of houses is impractical for this format. This list focuses on the capital
-- and the primary settlements on the main inhabited islands.
-- The Turks and Caicos Islands use a single postal code for the entire territory: TKCA 1ZZ.

-- Inserting settlements for Turks and Caicos Islands (TC) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Main Settlements on Inhabited Islands
('Cockburn Town', (SELECT id FROM world_countries WHERE iso_code_2 = 'TC'), 'TKCA 1ZZ'), -- Capital (on Grand Turk Island)
('Providenciales', (SELECT id FROM world_countries WHERE iso_code_2 = 'TC'), 'TKCA 1ZZ'), -- Main population and tourism center (often referred to as 'Provo') - Represents the main settlements like Grace Bay, The Bight, Five Cays
('Bottle Creek', (SELECT id FROM world_countries WHERE iso_code_2 = 'TC'), 'TKCA 1ZZ'), -- Main settlement on North Caicos
('Conch Bar', (SELECT id FROM world_countries WHERE iso_code_2 = 'TC'), 'TKCA 1ZZ'), -- Main settlement on Middle Caicos
('Cockburn Harbour', (SELECT id FROM world_countries WHERE iso_code_2 = 'TC'), 'TKCA 1ZZ'), -- Main settlement on South Caicos (also known as 'East Harbour')
('Balfour Town', (SELECT id FROM world_countries WHERE iso_code_2 = 'TC'), 'TKCA 1ZZ'); -- Main settlement on Salt Cay


-- End of Turks and Caicos Islands settlement list (Representative Sample)

/*
-- ===========================================================
-- ==    Información sobre las Islas Turcas y Caicos        ==
-- ===========================================================
--
-- Descripción General:
-- Las Islas Turcas y Caicos (Turks and Caicos Islands, TCI) son un Territorio Británico
-- de Ultramar ubicado en el Océano Atlántico, al sureste de las Bahamas y al norte de
-- La Española (Haití y República Dominicana). El territorio consta de dos grupos
-- principales de islas tropicales: las Islas Caicos, más grandes, y las Islas Turcas,
-- más pequeñas, junto con numerosos cayos e islotes. Son conocidas por sus playas de
-- arena blanca, aguas turquesas y arrecifes de coral.
--
-- Asentamientos Principales:
-- * Cockburn Town: La capital, ubicada en la isla Gran Turca (Grand Turk). Es el centro
--   administrativo e histórico.
-- * Providenciales ('Provo'): La isla más poblada y desarrollada, centro del turismo
--   internacional y de los negocios. Alberga los principales resorts (Grace Bay),
--   el aeropuerto internacional y varias comunidades residenciales.
-- * Bottle Creek, Kew: Principales asentamientos en Caicos del Norte (North Caicos).
-- * Conch Bar, Bambarra, Lorimers: Principales asentamientos en Caicos Central (Middle Caicos).
-- * Cockburn Harbour: El principal asentamiento en Caicos del Sur (South Caicos),
--   centro pesquero.
-- * Balfour Town: El único asentamiento en Salt Cay, conocido por su historia en la
--   industria de la sal.
--
-- Un Poco de Historia:
-- Habitadas originalmente por pueblos taínos/lucayos. Fueron avistadas por exploradores
-- españoles a principios del siglo XVI. A partir del siglo XVII, colonos británicos
-- de las Bermudas establecieron una industria de extracción de sal marina en las Islas
-- Turcas y Salt Cay, utilizando esclavos africanos. Las islas fueron administradas
-- por las Bahamas y luego por Jamaica. En 1962, tras la independencia de Jamaica,
-- se convirtieron en una colonia de la Corona británica separada, y en 1973 obtuvieron
-- un gobierno propio, permaneciendo como Territorio Británico de Ultramar.
--
-- Datos Adicionales:
-- El inglés es el idioma oficial. La población es mayoritariamente de ascendencia
-- africana, con minorías de origen europeo, norteamericano y de otros países caribeños.
-- La religión principal es el cristianismo. La economía depende en gran medida del
-- turismo de lujo, los servicios financieros extraterritoriales (offshore) y la pesca.
-- La moneda oficial es el dólar estadounidense (USD). Las islas son un destino popular
-- para el buceo, el snorkel y los deportes acuáticos. Como Territorio Británico de
-- Ultramar, el jefe de estado es el monarca británico, representado por un Gobernador,
-- mientras que el jefe de gobierno es un Premier elegido localmente.
--
*/
