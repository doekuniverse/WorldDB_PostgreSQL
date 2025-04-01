-- SQL Script to insert a representative sample of significant cities and towns for Serbia (RS).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Serbia (RS).

-- NOTE: This list includes the capital, major cities, and district centers within Serbia proper (excluding Kosovo).
-- Listing every single settlement is IMPOSSIBLE. Kosovo's status is disputed.
-- Postal codes are 5 digits; examples or '00000' placeholder are provided.

-- Inserting cities for Serbia (RS) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Major Cities / District Centers
('Belgrade (Beograd)', (SELECT id FROM world_countries WHERE iso_code_2 = 'RS'), '11000'), -- National Capital
('Novi Sad', (SELECT id FROM world_countries WHERE iso_code_2 = 'RS'), '21000'), -- Vojvodina Autonomous Province Capital
('Niš', (SELECT id FROM world_countries WHERE iso_code_2 = 'RS'), '18000'), -- Nišava District Center
('Kragujevac', (SELECT id FROM world_countries WHERE iso_code_2 = 'RS'), '34000'), -- Šumadija District Center
('Subotica', (SELECT id FROM world_countries WHERE iso_code_2 = 'RS'), '24000'), -- North Bačka District Center
('Zrenjanin', (SELECT id FROM world_countries WHERE iso_code_2 = 'RS'), '23000'), -- Central Banat District Center
('Pančevo', (SELECT id FROM world_countries WHERE iso_code_2 = 'RS'), '26000'), -- South Banat District Center
('Čačak', (SELECT id FROM world_countries WHERE iso_code_2 = 'RS'), '32000'), -- Moravica District Center
('Novi Pazar', (SELECT id FROM world_countries WHERE iso_code_2 = 'RS'), '36300'), -- Raška District (Major city)
('Kraljevo', (SELECT id FROM world_countries WHERE iso_code_2 = 'RS'), '36000'), -- Raška District Center
('Smederevo', (SELECT id FROM world_countries WHERE iso_code_2 = 'RS'), '11300'), -- Podunavlje District Center
('Leskovac', (SELECT id FROM world_countries WHERE iso_code_2 = 'RS'), '16000'), -- Jablanica District Center
('Užice', (SELECT id FROM world_countries WHERE iso_code_2 = 'RS'), '31000'), -- Zlatibor District Center
('Valjevo', (SELECT id FROM world_countries WHERE iso_code_2 = 'RS'), '14000'), -- Kolubara District Center
('Kruševac', (SELECT id FROM world_countries WHERE iso_code_2 = 'RS'), '37000'), -- Rasina District Center
('Vranje', (SELECT id FROM world_countries WHERE iso_code_2 = 'RS'), '17500'), -- Pčinja District Center
('Šabac', (SELECT id FROM world_countries WHERE iso_code_2 = 'RS'), '15000'), -- Mačva District Center
('Sombor', (SELECT id FROM world_countries WHERE iso_code_2 = 'RS'), '25000'), -- West Bačka District Center
('Požarevac', (SELECT id FROM world_countries WHERE iso_code_2 = 'RS'), '12000'), -- Braničevo District Center
('Pirot', (SELECT id FROM world_countries WHERE iso_code_2 = 'RS'), '18300'), -- Pirot District Center
('Zaječar', (SELECT id FROM world_countries WHERE iso_code_2 = 'RS'), '19000'), -- Zaječar District Center
('Sremska Mitrovica', (SELECT id FROM world_countries WHERE iso_code_2 = 'RS'), '22000'), -- Srem District Center
('Jagodina', (SELECT id FROM world_countries WHERE iso_code_2 = 'RS'), '35000'), -- Pomoravlje District Center
('Bor', (SELECT id FROM world_countries WHERE iso_code_2 = 'RS'), '19210'), -- Bor District Center
('Prokuplje', (SELECT id FROM world_countries WHERE iso_code_2 = 'RS'), '18400'), -- Toplica District Center
('Loznica', (SELECT id FROM world_countries WHERE iso_code_2 = 'RS'), '15300'), -- Mačva District (Major town)
('Kikinda', (SELECT id FROM world_countries WHERE iso_code_2 = 'RS'), '23300'), -- North Banat District Center
('Vršac', (SELECT id FROM world_countries WHERE iso_code_2 = 'RS'), '26300'); -- South Banat District

-- Note: Cities in Kosovo like Pristina, Prizren, Mitrovica are excluded due to the disputed status.

-- End of Serbia city list (Representative Sample excluding Kosovo)

/*
-- ====================================
-- == Información sobre Serbia ==
-- ====================================
--
-- Descripción General:
-- Serbia, oficialmente República de Serbia, es un país sin salida al mar (excepto
-- a través del Danubio) ubicado en el sureste de Europa, en el centro de la Península
-- Balcánica. Limita con Hungría al norte, Rumania al noreste, Bulgaria al este,
-- Macedonia del Norte al sur, y Croacia, Bosnia y Herzegovina y Montenegro al oeste.
-- También reclama frontera con Albania a través del territorio en disputa de Kosovo.
-- Su geografía incluye la fértil llanura de Panonia en el norte (Vojvodina), colinas
-- y montañas en el centro y sur. El río Danubio atraviesa el país y su capital.
-- Es una república parlamentaria.
--
-- Ciudades Principales:
-- * Belgrado (Beograd): La capital y ciudad más grande, ubicada en la confluencia
--   de los ríos Sava y Danubio. Es una de las ciudades más antiguas de Europa.
-- * Novi Sad: La segunda ciudad más grande, capital de la provincia autónoma de Vojvodina.
-- * Niš: La tercera ciudad más grande, principal centro urbano en el sur de Serbia.
-- * Kragujevac: Importante centro industrial en la región de Šumadija.
-- * Subotica, Zrenjanin, Pančevo, Čačak, Novi Pazar, Kraljevo, Smederevo, Leskovac:
--   Otras ciudades importantes y centros administrativos de distrito.
-- * La lista incluye las principales ciudades y centros de distrito de Serbia propiamente
--   dicha y Vojvodina. No incluye ciudades en Kosovo, cuya independencia declarada
--   en 2008 no es reconocida por Serbia.
--
-- Un Poco de Historia:
-- Habitada por pueblos ilirios y tracios, luego parte del Imperio Romano. Tribus
-- eslavas (serbias) llegaron en los siglos VI-VII. Surgió un reino y luego un imperio
-- serbio medieval importante en los Balcanes. Tras la Batalla de Kosovo (1389), cayó
-- gradualmente bajo dominio otomano durante varios siglos. Serbia recuperó autonomía
-- y luego la independencia del Imperio Otomano en el siglo XIX. Jugó un papel clave
-- en las Guerras Balcánicas y la Primera Guerra Mundial. Después de la guerra, se
-- convirtió en el núcleo del Reino de los Serbios, Croatas y Eslovenos, renombrado
-- Yugoslavia en 1929. Durante la Segunda Guerra Mundial, fue ocupada por las potencias
-- del Eje. Después de la guerra, se estableció la Yugoslavia socialista bajo el
-- liderazgo de Tito. Tras la muerte de Tito y el auge de los nacionalismos, Yugoslavia
-- se desintegró violentamente en la década de 1990 (Guerras Yugoslavas). Serbia y
-- Montenegro formaron una federación reducida hasta que Montenegro se independizó
-- pacíficamente en 2006. Kosovo declaró su independencia unilateralmente en 2008.
--
-- Datos Adicionales:
-- El serbio es el idioma oficial (utiliza tanto el alfabeto cirílico como el latino).
-- La religión predominante es el cristianismo ortodoxo serbio. El río Danubio es una
-- importante vía fluvial internacional que atraviesa Serbia y Belgrado. Belgrado es
-- conocida por su fortaleza de Kalemegdan y su vida nocturna.
--
*/
