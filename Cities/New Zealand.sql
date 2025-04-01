-- SQL Script to insert a representative sample of significant cities and towns for New Zealand (NZ).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains New Zealand (NZ).

-- NOTE: This list includes the capital, major cities, and a broad sample of significant towns.
-- Listing every single locality is IMPOSSIBLE.
-- Postal codes are 4 digits; examples or '0000' placeholder are provided.

-- Inserting cities for New Zealand (NZ) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Major Cities / Significant Towns
('Wellington', (SELECT id FROM world_countries WHERE iso_code_2 = 'NZ'), '6011'), -- National Capital
('Auckland', (SELECT id FROM world_countries WHERE iso_code_2 = 'NZ'), '1010'), -- Largest city
('Christchurch', (SELECT id FROM world_countries WHERE iso_code_2 = 'NZ'), '8011'), -- Largest city in South Island
('Hamilton', (SELECT id FROM world_countries WHERE iso_code_2 = 'NZ'), '3204'), -- Waikato region
('Tauranga', (SELECT id FROM world_countries WHERE iso_code_2 = 'NZ'), '3110'), -- Bay of Plenty region
('Dunedin', (SELECT id FROM world_countries WHERE iso_code_2 = 'NZ'), '9016'), -- Otago region
('Palmerston North', (SELECT id FROM world_countries WHERE iso_code_2 = 'NZ'), '4410'), -- Manawatū-Whanganui region
('Napier', (SELECT id FROM world_countries WHERE iso_code_2 = 'NZ'), '4110'), -- Hawke's Bay region
('Hastings', (SELECT id FROM world_countries WHERE iso_code_2 = 'NZ'), '4122'), -- Hawke's Bay region
('Nelson', (SELECT id FROM world_countries WHERE iso_code_2 = 'NZ'), '7010'), -- Nelson region
('Rotorua', (SELECT id FROM world_countries WHERE iso_code_2 = 'NZ'), '3010'), -- Bay of Plenty region (Geothermal/Maori culture)
('New Plymouth', (SELECT id FROM world_countries WHERE iso_code_2 = 'NZ'), '4310'), -- Taranaki region Capital
('Whangārei', (SELECT id FROM world_countries WHERE iso_code_2 = 'NZ'), '0110'), -- Northland region Capital
('Invercargill', (SELECT id FROM world_countries WHERE iso_code_2 = 'NZ'), '9810'), -- Southland region Capital
('Whanganui (Wanganui)', (SELECT id FROM world_countries WHERE iso_code_2 = 'NZ'), '4500'), -- Manawatū-Whanganui region
('Gisborne', (SELECT id FROM world_countries WHERE iso_code_2 = 'NZ'), '4010'), -- Gisborne region Capital
('Lower Hutt', (SELECT id FROM world_countries WHERE iso_code_2 = 'NZ'), '5010'), -- Wellington region
('Upper Hutt', (SELECT id FROM world_countries WHERE iso_code_2 = 'NZ'), '5018'), -- Wellington region
('Porirua', (SELECT id FROM world_countries WHERE iso_code_2 = 'NZ'), '5022'), -- Wellington region
('Blenheim', (SELECT id FROM world_countries WHERE iso_code_2 = 'NZ'), '7201'), -- Marlborough region Capital
('Timaru', (SELECT id FROM world_countries WHERE iso_code_2 = 'NZ'), '7910'), -- Canterbury region
('Taupō', (SELECT id FROM world_countries WHERE iso_code_2 = 'NZ'), '3330'), -- Waikato region (Lake Taupō)
('Pukekohe', (SELECT id FROM world_countries WHERE iso_code_2 = 'NZ'), '2120'), -- Auckland region (Franklin area)
('Masterton', (SELECT id FROM world_countries WHERE iso_code_2 = 'NZ'), '5810'), -- Wellington region (Wairarapa)
('Levin', (SELECT id FROM world_countries WHERE iso_code_2 = 'NZ'), '5510'), -- Manawatū-Whanganui region
('Whakatāne', (SELECT id FROM world_countries WHERE iso_code_2 = 'NZ'), '3120'), -- Bay of Plenty region
('Ashburton', (SELECT id FROM world_countries WHERE iso_code_2 = 'NZ'), '7700'), -- Canterbury region
('Cambridge', (SELECT id FROM world_countries WHERE iso_code_2 = 'NZ'), '3434'), -- Waikato region
('Queenstown', (SELECT id FROM world_countries WHERE iso_code_2 = 'NZ'), '9300'), -- Otago region (Major tourist hub)
('Richmond', (SELECT id FROM world_countries WHERE iso_code_2 = 'NZ'), '7020'), -- Tasman region Capital
('Oamaru', (SELECT id FROM world_countries WHERE iso_code_2 = 'NZ'), '9400'), -- Otago region
('Greymouth', (SELECT id FROM world_countries WHERE iso_code_2 = 'NZ'), '7805'), -- West Coast region Capital
('Westport', (SELECT id FROM world_countries WHERE iso_code_2 = 'NZ'), '7825'), -- West Coast region
('Hokitika', (SELECT id FROM world_countries WHERE iso_code_2 = 'NZ'), '7810'), -- West Coast region
('Motueka', (SELECT id FROM world_countries WHERE iso_code_2 = 'NZ'), '7120'), -- Tasman region
('Tokoroa', (SELECT id FROM world_countries WHERE iso_code_2 = 'NZ'), '3434'), -- Waikato region (Postal code needs check)
('Feilding', (SELECT id FROM world_countries WHERE iso_code_2 = 'NZ'), '4702'); -- Manawatū-Whanganui region

-- End of New Zealand city list (Representative Sample)

/*
-- ========================================
-- == Información sobre New Zealand ==
-- ========================================
--
-- Descripción General:
-- Nueva Zelanda (New Zealand) es un país insular ubicado en el suroeste del Océano
-- Pacífico. Consiste principalmente en dos grandes islas, la Isla Norte (North Island)
-- y la Isla Sur (South Island), separadas por el Estrecho de Cook, además de numerosas
-- islas más pequeñas. Es conocida por sus espectaculares paisajes naturales, que
-- incluyen montañas (Alpes del Sur), fiordos, glaciares, playas, bosques y actividad
-- geotérmica y volcánica. Es una monarquía constitucional parlamentaria dentro de la
-- Commonwealth.
--
-- Ciudades Principales:
-- * Wellington: La capital nacional, ubicada en el extremo sur de la Isla Norte.
--   Famosa por su puerto y su ambiente cultural y artístico.
-- * Auckland: La ciudad más grande y poblada, ubicada en la Isla Norte. Principal
--   centro económico y puerta de entrada internacional.
-- * Christchurch: La ciudad más grande de la Isla Sur, conocida como la "Ciudad Jardín".
--   Fue afectada por terremotos en 2010-2011.
-- * Hamilton: Importante ciudad interior en la Isla Norte (región de Waikato).
-- * Tauranga: Ciudad costera de rápido crecimiento en la Bahía de Plenty (Isla Norte).
-- * Dunedin: Principal ciudad en la región de Otago (Isla Sur), con herencia escocesa.
-- * Palmerston North, Napier, Hastings, Nelson, Rotorua, New Plymouth, Whangārei,
--   Invercargill: Otras ciudades importantes y centros regionales.
-- * La lista incluye también las principales ciudades de cada región y otros pueblos significativos.
--
-- Un Poco de Historia:
-- Fue una de las últimas grandes masas de tierra pobladas por humanos. Los polinesios
-- (ancestros de los Maoríes) llegaron entre 1250 y 1300 d.C. El explorador neerlandés
-- Abel Tasman fue el primer europeo en avistarla en 1642. El capitán británico James
-- Cook la cartografió extensamente a partir de 1769. A principios del siglo XIX,
-- comenzaron a llegar balleneros, comerciantes y misioneros europeos. En 1840, se
-- firmó el Tratado de Waitangi entre la Corona Británica y jefes Maoríes, estableciendo
-- la soberanía británica y garantizando derechos a los Maoríes (aunque su interpretación
-- ha sido fuente de conflicto). Se convirtió en colonia británica y luego en un Dominio
-- autónomo en 1907. Logró la plena independencia legislativa gradualmente, formalizada
-- con el Estatuto de Westminster en 1947.
--
-- Datos Adicionales:
-- El inglés y el maorí son los idiomas oficiales, junto con el lenguaje de señas de
-- Nueva Zelanda. La cultura Maorí tiene una presencia importante y reconocida. Nueva
-- Zelanda es famosa por el rugby (los All Blacks), sus paisajes utilizados en las
-- películas de "El Señor de los Anillos", la cría de ovejas, la producción de vino
-- y los deportes de aventura (como el puenting, originado allí). Tiene una fuerte
-- política antinuclear.
--
*/
