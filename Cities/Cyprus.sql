-- SQL Script to insert a representative sample of significant cities and towns for the entire island of Cyprus (CY).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Cyprus (CY).

-- NOTE: Cyprus is de facto divided. This list includes major cities/towns across the island,
-- including the capital, RoC district capitals, and major towns in the north (TRNC).
-- Listing every single village is IMPOSSIBLE.
-- Postal codes are 4 digits for RoC; examples or '0000' placeholder are provided (esp. for North).

-- Inserting cities for Cyprus (CY) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital (Divided) & RoC District Capitals / Major Cities
('Nicosia (Lefkosia)', (SELECT id FROM world_countries WHERE iso_code_2 = 'CY'), '1010'), -- Capital of RoC (Southern part)
('North Nicosia (Lefkoşa)', (SELECT id FROM world_countries WHERE iso_code_2 = 'CY'), '0000'), -- Main city in the North
('Limassol (Lemesos)', (SELECT id FROM world_countries WHERE iso_code_2 = 'CY'), '3010'), -- Limassol District Capital (RoC)
('Larnaca (Larnaka)', (SELECT id FROM world_countries WHERE iso_code_2 = 'CY'), '6010'), -- Larnaca District Capital (RoC)
('Paphos (Pafos)', (SELECT id FROM world_countries WHERE iso_code_2 = 'CY'), '8010'), -- Paphos District Capital (RoC), UNESCO site
('Strovolos', (SELECT id FROM world_countries WHERE iso_code_2 = 'CY'), '2000'), -- Major municipality in Nicosia District (RoC)
('Lakatamia', (SELECT id FROM world_countries WHERE iso_code_2 = 'CY'), '2310'), -- Municipality in Nicosia District (RoC)
('Aglandjia', (SELECT id FROM world_countries WHERE iso_code_2 = 'CY'), '2100'), -- Municipality in Nicosia District (RoC)
('Aradippou', (SELECT id FROM world_countries WHERE iso_code_2 = 'CY'), '7100'), -- Municipality in Larnaca District (RoC)
('Paralimni', (SELECT id FROM world_countries WHERE iso_code_2 = 'CY'), '5290'), -- Famagusta District Admin. Center (RoC) / Major town
('Germasogeia', (SELECT id FROM world_countries WHERE iso_code_2 = 'CY'), '4040'), -- Municipality in Limassol District (RoC)
('Ypsonas', (SELECT id FROM world_countries WHERE iso_code_2 = 'CY'), '4180'), -- Municipality in Limassol District (RoC)

-- Major Towns in the North (TRNC)
('Famagusta (Gazimağusa)', (SELECT id FROM world_countries WHERE iso_code_2 = 'CY'), '0000'), -- Major city in the North
('Kyrenia (Girne)', (SELECT id FROM world_countries WHERE iso_code_2 = 'CY'), '0000'), -- Major city in the North
('Morphou (Güzelyurt)', (SELECT id FROM world_countries WHERE iso_code_2 = 'CY'), '0000'), -- Town in the North
('Trikomo (İskele)', (SELECT id FROM world_countries WHERE iso_code_2 = 'CY'), '0000'); -- Town in the North (Iskele district)

-- Note: Kyrenia and Famagusta are also de jure district capitals of RoC, but are under TRNC administration.

-- End of Cyprus city list (Representative Sample across the island)

/*
-- ====================================
-- == Información sobre Cyprus ==
-- ====================================
--
-- Descripción General:
-- Chipre (Cyprus) es una isla ubicada en el Mar Mediterráneo oriental, al sur de
-- Turquía, al oeste de Siria y Líbano, al noroeste de Israel, al norte de Egipto
-- y al este de Grecia. Es la tercera isla más grande del Mediterráneo. La isla
-- está dividida de facto desde 1974: la parte sur está controlada por la
-- República de Chipre (reconocida internacionalmente, miembro de la UE), de
-- mayoría grecochipriota; la parte norte está administrada por la autoproclamada
-- República Turca del Norte de Chipre (RTNC, reconocida solo por Turquía), de
-- mayoría turcochipriota. Una zona de amortiguación controlada por la ONU separa
-- ambas partes. Además, hay dos bases soberanas británicas (Akrotiri y Dhekelia).
--
-- Ciudades Principales:
-- * Nicosia (Lefkosia / Lefkoşa): La capital, es la única capital dividida del
--   mundo, atravesada por la Línea Verde de la ONU.
-- * Limassol (Lemesos): Segunda ciudad más grande (en la República de Chipre),
--   importante puerto y centro de negocios.
-- * Larnaca (Larnaka): Tercera ciudad (RoC), sede del principal aeropuerto internacional.
-- * Paphos (Pafos): Ciudad costera en el oeste (RoC), rica en sitios arqueológicos
--   (Patrimonio de la Humanidad).
-- * Famagusta (Gazimağusa) y Kyrenia (Girne): Principales ciudades portuarias y
--   turísticas en la parte norte de la isla (RTNC).
--
-- Un Poco de Historia:
-- Chipre tiene una historia milenaria, con importantes yacimientos arqueológicos
-- neolíticos y de la Edad del Bronce. Fue un centro clave en el mundo griego
-- antiguo (ligado al mito del nacimiento de Afrodita). Estuvo bajo dominio
-- asirio, egipcio, persa, helenístico (Ptolomeos), romano, bizantino, franco
-- (Lusignan), veneciano y otomano. Fue cedida al Reino Unido en 1878 y se
-- convirtió en colonia británica. Obtuvo la independencia en 1960 bajo un complejo
-- acuerdo de reparto de poder entre las comunidades grecochipriota y turcochipriota.
-- La tensión intercomunitaria culminó en violencia y, en 1974, tras un golpe de
-- estado grecochipriota que buscaba la unión con Grecia (Enosis), Turquía invadió
-- militarmente el norte de la isla, llevando a la división de facto que persiste hoy.
--
-- Datos Adicionales:
-- Los idiomas oficiales de la República de Chipre son el griego y el turco. En la
-- RTNC, el idioma oficial es el turco. El inglés es ampliamente hablado. La economía
-- de la República de Chipre se basa en servicios (turismo, finanzas), mientras que
-- la economía del norte depende en gran medida de Turquía. El queso Halloumi/Hellim
-- es un producto tradicional chipriota.
--
*/
