-- SQL Script to insert a representative sample of significant cities and towns for Turkmenistan (TM).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Turkmenistan (TM).

-- NOTE: Turkmenistan is divided into 5 provinces (Welayatlar) and one capital city district. Provinces contain districts and numerous towns and villages.
-- Listing every single settlement is impractical for this format, and data availability can be limited.
-- This list focuses on the national capital, provincial centers ('welaýat merkezi'), and other major cities/towns.
-- Postal codes in Turkmenistan use a 6-digit format (NNNNNN). Availability in datasets can be limited; using '000000' as a placeholder where necessary.

-- Inserting cities/towns for Turkmenistan (TM) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- National Capital & Provincial Centers
('Ashgabat', (SELECT id FROM world_countries WHERE iso_code_2 = 'TM'), '744000'), -- National Capital (City with rights of a province)
('Balkanabat', (SELECT id FROM world_countries WHERE iso_code_2 = 'TM'), '745100'), -- Balkan Province Center (formerly Nebit-Dag)
('Daşoguz', (SELECT id FROM world_countries WHERE iso_code_2 = 'TM'), '746300'), -- Daşoguz Province Center (formerly Tashauz)
('Türkmenabat', (SELECT id FROM world_countries WHERE iso_code_2 = 'TM'), '746100'), -- Lebap Province Center (formerly Chardzhou)
('Mary', (SELECT id FROM world_countries WHERE iso_code_2 = 'TM'), '745400'), -- Mary Province Center (near ancient Merv)
('Änew', (SELECT id FROM world_countries WHERE iso_code_2 = 'TM'), '745200'), -- Ahal Province Center (near Ashgabat)

-- Other Major Cities / Significant Towns (Sample)
('Türkmenbaşy', (SELECT id FROM world_countries WHERE iso_code_2 = 'TM'), '745000'), -- Major Caspian Sea Port City (Balkan Province, formerly Krasnovodsk)
('Tejen', (SELECT id FROM world_countries WHERE iso_code_2 = 'TM'), '745250'), -- Town in Ahal Province
('Abadan', (SELECT id FROM world_countries WHERE iso_code_2 = 'TM'), '744901'), -- Town near Ashgabat (Ahal Province, formerly Büzmeýin) - Note: Postal code might be general area
('Magdanly', (SELECT id FROM world_countries WHERE iso_code_2 = 'TM'), '746250'), -- Industrial town in Lebap Province (formerly Gowurdak)
('Baýramaly', (SELECT id FROM world_countries WHERE iso_code_2 = 'TM'), '745460'), -- Town near Mary (Mary Province)
('Gumdag', (SELECT id FROM world_countries WHERE iso_code_2 = 'TM'), '745140'), -- Town in Balkan Province
('Gazojak', (SELECT id FROM world_countries WHERE iso_code_2 = 'TM'), '746350'); -- Town in Lebap Province (formerly Gaz-Achak)


-- End of Turkmenistan city/town list (Representative Sample)

/*
-- ==================================================
-- ==    Información sobre Turkmenistán            ==
-- ==================================================
--
-- Descripción General:
-- Turkmenistán es un país sin salida al mar ubicado en Asia Central. Limita con
-- Kazajistán al noroeste, Uzbekistán al norte y este, Afganistán al sureste, Irán
-- al sur y suroeste, y el Mar Caspio al oeste. Más del 70% del país está cubierto
-- por el desierto de Karakum. Posee importantes reservas de gas natural. El país
-- es conocido por su política de neutralidad y su relativo aislamiento internacional.
--
-- Ciudades Principales:
-- * Asjabad (Ashgabat): La capital y ciudad más grande, conocida por su arquitectura
--   monumental de mármol blanco y numerosos récords Guinness. Tiene estatus de provincia.
-- * Türkmenabat: Anteriormente Chardzhou, es la segunda ciudad más grande y centro
--   de la provincia de Lebap.
-- * Daşoguz: Anteriormente Tashauz, centro de la provincia norteña de Daşoguz.
-- * Mary: Centro de la provincia de Mary, ubicada cerca de las ruinas de la antigua
--   ciudad de Merv (Patrimonio de la Humanidad).
-- * Balkanabat: Anteriormente Nebit-Dag, centro de la provincia occidental de Balkan.
-- * Türkmenbaşy: Anteriormente Krasnovodsk, principal puerto en el Mar Caspio.
-- * Änew: Centro administrativo de la provincia de Ahal, cercana a Asjabad.
--
-- Un Poco de Historia:
-- El territorio ha sido un cruce de caminos para civilizaciones durante siglos,
-- formando parte de imperios como el Persa, el de Alejandro Magno, el Parto, el
-- Sasánida y varios califatos y kanatos túrquicos. Merv fue una importante ciudad
-- en la Ruta de la Seda. Fue conquistado por el Imperio Ruso en el siglo XIX. Tras
-- la Revolución Rusa, se convirtió en la República Socialista Soviética de Turkmenistán
-- en 1925, dentro de la Unión Soviética. Obtuvo la independencia en 1991 tras la
-- disolución de la URSS. Saparmurat Niyazov (autodenominado "Türkmenbaşy" o líder de
-- los turcomanos) gobernó como presidente vitalicio con un fuerte culto a la personalidad
-- hasta su muerte en 2006. Le sucedió Gurbanguly Berdimuhamedow, y posteriormente
-- su hijo Serdar Berdimuhamedow en 2022, manteniendo un sistema político autoritario.
--
-- Datos Adicionales:
-- El turcomano es el idioma oficial. El ruso todavía tiene cierto uso. La mayoría de
-- la población es de etnia turcomana y musulmana sunita. El país es famoso por sus
-- alfombras tejidas a mano y sus caballos de raza Akhal-Teke. Posee las cuartas
-- reservas de gas natural más grandes del mundo, lo que constituye la base de su
-- economía, aunque la riqueza no siempre se distribuye ampliamente. El gobierno
-- mantiene un estricto control sobre los medios de comunicación y la sociedad civil.
-- Turkmenistán adoptó una política de neutralidad permanente, reconocida por la ONU.
--
*/
