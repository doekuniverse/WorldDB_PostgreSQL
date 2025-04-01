-- SQL Script to insert a representative sample of significant cities and towns for Greece (GR).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Greece (GR).

-- NOTE: Greece has numerous islands and localities. This list includes the capital, major cities,
-- regional capitals, and significant towns. Listing every single village is IMPOSSIBLE.
-- Postal codes are 5 digits (sometimes ### ##); examples or '00000' placeholder are provided.

-- Inserting cities for Greece (GR) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Major Cities / Regional Capitals
('Athens (Athina)', (SELECT id FROM world_countries WHERE iso_code_2 = 'GR'), '104 31'), -- National Capital (Attica Region)
('Thessaloniki', (SELECT id FROM world_countries WHERE iso_code_2 = 'GR'), '546 21'), -- Central Macedonia Region Capital, Second largest city
('Patras (Patra)', (SELECT id FROM world_countries WHERE iso_code_2 = 'GR'), '262 21'), -- Western Greece Region Capital
('Heraklion (Irakleio)', (SELECT id FROM world_countries WHERE iso_code_2 = 'GR'), '712 01'), -- Crete Region Capital
('Larissa (Larisa)', (SELECT id FROM world_countries WHERE iso_code_2 = 'GR'), '412 21'), -- Thessaly Region Capital
('Volos', (SELECT id FROM world_countries WHERE iso_code_2 = 'GR'), '382 21'), -- Thessaly Region (Major city/port)
('Ioannina', (SELECT id FROM world_countries WHERE iso_code_2 = 'GR'), '452 21'), -- Epirus Region Capital
('Chania', (SELECT id FROM world_countries WHERE iso_code_2 = 'GR'), '731 00'), -- Crete Region (Major city)
('Agrinio', (SELECT id FROM world_countries WHERE iso_code_2 = 'GR'), '301 00'), -- Western Greece Region
('Katerini', (SELECT id FROM world_countries WHERE iso_code_2 = 'GR'), '601 00'), -- Central Macedonia Region
('Trikala', (SELECT id FROM world_countries WHERE iso_code_2 = 'GR'), '421 00'), -- Thessaly Region
('Serres', (SELECT id FROM world_countries WHERE iso_code_2 = 'GR'), '621 00'), -- Central Macedonia Region
('Lamia', (SELECT id FROM world_countries WHERE iso_code_2 = 'GR'), '351 00'), -- Central Greece Region Capital
('Alexandroupoli', (SELECT id FROM world_countries WHERE iso_code_2 = 'GR'), '681 00'), -- Eastern Macedonia and Thrace Region (Major city)
('Kozani', (SELECT id FROM world_countries WHERE iso_code_2 = 'GR'), '501 00'), -- Western Macedonia Region Capital
('Kavala', (SELECT id FROM world_countries WHERE iso_code_2 = 'GR'), '654 03'), -- Eastern Macedonia and Thrace Region
('Rhodes (Rodos)', (SELECT id FROM world_countries WHERE iso_code_2 = 'GR'), '851 00'), -- South Aegean Region (Capital of Dodecanese)
('Kalamata', (SELECT id FROM world_countries WHERE iso_code_2 = 'GR'), '241 00'), -- Peloponnese Region (Major city)
('Veria', (SELECT id FROM world_countries WHERE iso_code_2 = 'GR'), '591 00'), -- Central Macedonia Region
('Drama', (SELECT id FROM world_countries WHERE iso_code_2 = 'GR'), '661 00'), -- Eastern Macedonia and Thrace Region
('Komotini', (SELECT id FROM world_countries WHERE iso_code_2 = 'GR'), '691 00'), -- Eastern Macedonia and Thrace Region Capital
('Corfu (Kerkyra)', (SELECT id FROM world_countries WHERE iso_code_2 = 'GR'), '491 00'), -- Ionian Islands Region Capital
('Chalcis (Chalkida)', (SELECT id FROM world_countries WHERE iso_code_2 = 'GR'), '341 00'), -- Central Greece Region (Euboea island)
('Karditsa', (SELECT id FROM world_countries WHERE iso_code_2 = 'GR'), '431 00'), -- Thessaly Region
('Rethymno', (SELECT id FROM world_countries WHERE iso_code_2 = 'GR'), '741 00'), -- Crete Region
('Ptolemaida', (SELECT id FROM world_countries WHERE iso_code_2 = 'GR'), '502 00'), -- Western Macedonia Region
('Tripoli', (SELECT id FROM world_countries WHERE iso_code_2 = 'GR'), '221 00'), -- Peloponnese Region Capital
('Corinth (Korinthos)', (SELECT id FROM world_countries WHERE iso_code_2 = 'GR'), '201 00'), -- Peloponnese Region
('Mytilene', (SELECT id FROM world_countries WHERE iso_code_2 = 'GR'), '811 00'), -- North Aegean Region Capital (Lesbos island)
('Chios', (SELECT id FROM world_countries WHERE iso_code_2 = 'GR'), '821 00'), -- North Aegean Region (Chios island)
('Ermoupoli', (SELECT id FROM world_countries WHERE iso_code_2 = 'GR'), '841 00'), -- South Aegean Region Capital (Syros island)

-- Major Athenian Suburbs / Municipalities (Sample)
('Piraeus (Peiraias)', (SELECT id FROM world_countries WHERE iso_code_2 = 'GR'), '185 31'), -- Attica Region (Port of Athens)
('Peristeri', (SELECT id FROM world_countries WHERE iso_code_2 = 'GR'), '121 31'), -- Attica Region
('Kallithea', (SELECT id FROM world_countries WHERE iso_code_2 = 'GR'), '176 71'), -- Attica Region
('Acharnes', (SELECT id FROM world_countries WHERE iso_code_2 = 'GR'), '136 71'), -- Attica Region
('Nikaia', (SELECT id FROM world_countries WHERE iso_code_2 = 'GR'), '184 50'), -- Attica Region
('Glyfada', (SELECT id FROM world_countries WHERE iso_code_2 = 'GR'), '166 75'), -- Attica Region
('Ilio', (SELECT id FROM world_countries WHERE iso_code_2 = 'GR'), '131 21'), -- Attica Region
('Ilioupoli', (SELECT id FROM world_countries WHERE iso_code_2 = 'GR'), '163 41'), -- Attica Region
('Kifissia', (SELECT id FROM world_countries WHERE iso_code_2 = 'GR'), '145 61'); -- Attica Region

-- End of Greece city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Greece ==
-- ====================================
--
-- Descripción General:
-- Grecia (Greece), oficialmente República Helénica, es un país ubicado en el
-- sureste de Europa, en el extremo sur de la Península Balcánica. Limita con
-- Albania, Macedonia del Norte y Bulgaria al norte, y Turquía al este. Está
-- rodeada por el Mar Egeo al este, el Mar Jónico al oeste y el Mar Mediterráneo
-- al sur. Grecia tiene la undécima costa más larga del mundo e incluye miles de
-- islas (unas 227 habitadas), como Creta, Eubea, Rodas, Corfú y los archipiélagos
-- del Dodecaneso y las Cícladas. Es considerada la cuna de la civilización
-- occidental (democracia, filosofía, Juegos Olímpicos, teatro, etc.).
--
-- Ciudades Principales:
-- * Atenas (Athens / Athina): La capital y ciudad más grande, centro histórico y
--   cultural mundialmente famoso (Acrópolis, Partenón).
-- * Salónica (Thessaloniki): La segunda ciudad más grande, importante centro
--   cultural y económico en el norte de Grecia (Macedonia).
-- * Patras (Patra): Tercera ciudad más grande, principal centro urbano en el oeste
--   de Grecia y puerta de entrada a las Islas Jónicas.
-- * Heraklion (Irakleio): La ciudad más grande de la isla de Creta.
-- * Larissa y Volos: Principales ciudades en la región de Tesalia.
-- * Ioannina: Principal ciudad en la región montañosa de Epiro.
-- * La lista incluye también las capitales regionales, muchas capitales de unidades
--   regionales y otras ciudades importantes.
--
-- Un Poco de Historia:
-- Hogar de las civilizaciones minoica y micénica, seguida por la Grecia Antigua
-- (con sus ciudades-estado como Atenas y Esparta, la filosofía, la democracia),
-- el período helenístico (Alejandro Magno) y la dominación romana y bizantina.
-- Posteriormente, formó parte del Imperio Otomano durante casi cuatro siglos.
-- Grecia libró una Guerra de Independencia en la década de 1820, estableciendo
-- un estado moderno en 1830. La historia posterior incluye expansiones territoriales,
-- conflictos (Guerras Balcánicas, WWI, Guerra Greco-Turca, WWII, Guerra Civil Griega),
-- periodos de monarquía y república, y una dictadura militar (1967-1974). Se unió
-- a la Comunidad Económica Europea (ahora UE) en 1981. Enfrentó una grave crisis
-- de deuda soberana a partir de 2009.
--
-- Datos Adicionales:
-- El griego es el idioma oficial, con una historia escrita de más de 3000 años.
-- La Iglesia Ortodoxa Griega es la religión predominante. Grecia es un destino
-- turístico muy popular por sus sitios arqueológicos, sus islas y playas. La
-- dieta mediterránea, el aceite de oliva y el queso feta son elementos clave de
-- su gastronomía.
--
*/
