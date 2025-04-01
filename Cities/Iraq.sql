-- SQL Script to insert a representative sample of significant cities and towns for Iraq (IQ).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Iraq (IQ).

-- NOTE: Iraq has numerous localities. This list includes the capital, governorate capitals (including Kurdistan Region),
-- and major cities/towns. Listing every single locality is IMPOSSIBLE, especially given data challenges.
-- Postal codes are 5 digits but usage is limited; using '00000' placeholder.

-- Inserting cities for Iraq (IQ) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Governorate Capitals / Major Cities
('Baghdad', (SELECT id FROM world_countries WHERE iso_code_2 = 'IQ'), '10001'), -- National Capital
('Mosul', (SELECT id FROM world_countries WHERE iso_code_2 = 'IQ'), '41001'), -- Nineveh Governorate Capital
('Basra', (SELECT id FROM world_countries WHERE iso_code_2 = 'IQ'), '61001'), -- Basra Governorate Capital
('Erbil (Arbil)', (SELECT id FROM world_countries WHERE iso_code_2 = 'IQ'), '44001'), -- Erbil Governorate Capital (Kurdistan Region Capital)
('Kirkuk', (SELECT id FROM world_countries WHERE iso_code_2 = 'IQ'), '36001'), -- Kirkuk Governorate Capital
('Sulaymaniyah', (SELECT id FROM world_countries WHERE iso_code_2 = 'IQ'), '46001'), -- Sulaymaniyah Governorate Capital (Kurdistan Region)
('Najaf', (SELECT id FROM world_countries WHERE iso_code_2 = 'IQ'), '54001'), -- Najaf Governorate Capital (Holy city for Shia Muslims)
('Karbala', (SELECT id FROM world_countries WHERE iso_code_2 = 'IQ'), '56001'), -- Karbala Governorate Capital (Holy city for Shia Muslims)
('Nasiriyah', (SELECT id FROM world_countries WHERE iso_code_2 = 'IQ'), '64001'), -- Dhi Qar Governorate Capital
('Amarah', (SELECT id FROM world_countries WHERE iso_code_2 = 'IQ'), '62001'), -- Maysan Governorate Capital
('Diwaniyah', (SELECT id FROM world_countries WHERE iso_code_2 = 'IQ'), '58001'), -- Al-Qādisiyyah Governorate Capital
('Kut', (SELECT id FROM world_countries WHERE iso_code_2 = 'IQ'), '52001'), -- Wasit Governorate Capital
('Hillah', (SELECT id FROM world_countries WHERE iso_code_2 = 'IQ'), '51001'), -- Babil Governorate Capital
('Ramadi', (SELECT id FROM world_countries WHERE iso_code_2 = 'IQ'), '31001'), -- Al Anbar Governorate Capital
('Fallujah', (SELECT id FROM world_countries WHERE iso_code_2 = 'IQ'), '31002'), -- Al Anbar Governorate (Major city)
('Baqubah', (SELECT id FROM world_countries WHERE iso_code_2 = 'IQ'), '32001'), -- Diyala Governorate Capital
('Tikrit', (SELECT id FROM world_countries WHERE iso_code_2 = 'IQ'), '34001'), -- Saladin Governorate Capital
('Dohuk (Duhok)', (SELECT id FROM world_countries WHERE iso_code_2 = 'IQ'), '42001'), -- Duhok Governorate Capital (Kurdistan Region)
('Zakho', (SELECT id FROM world_countries WHERE iso_code_2 = 'IQ'), '42002'), -- Duhok Governorate (Kurdistan Region)
('Samawah', (SELECT id FROM world_countries WHERE iso_code_2 = 'IQ'), '66001'), -- Al Muthanna Governorate Capital
('Samarra', (SELECT id FROM world_countries WHERE iso_code_2 = 'IQ'), '34002'), -- Saladin Governorate (Major city, holy site)

-- Other Significant Towns (Sample)
('Tal Afar', (SELECT id FROM world_countries WHERE iso_code_2 = 'IQ'), '00000'), -- Nineveh Governorate
('Zubair', (SELECT id FROM world_countries WHERE iso_code_2 = 'IQ'), '00000'), -- Basra Governorate
('Kufa', (SELECT id FROM world_countries WHERE iso_code_2 = 'IQ'), '00000'), -- Najaf Governorate (Near Najaf)
('Hit', (SELECT id FROM world_countries WHERE iso_code_2 = 'IQ'), '00000'), -- Al Anbar Governorate
('Haditha', (SELECT id FROM world_countries WHERE iso_code_2 = 'IQ'), '00000'), -- Al Anbar Governorate
('Balad', (SELECT id FROM world_countries WHERE iso_code_2 = 'IQ'), '00000'), -- Saladin Governorate
('Tuz Khurmatu', (SELECT id FROM world_countries WHERE iso_code_2 = 'IQ'), '00000'), -- Saladin Governorate
('Sinjar', (SELECT id FROM world_countries WHERE iso_code_2 = 'IQ'), '00000'), -- Nineveh Governorate
('Halabja', (SELECT id FROM world_countries WHERE iso_code_2 = 'IQ'), '00000'), -- Halabja Governorate Capital (Kurdistan Region)
('Mandali', (SELECT id FROM world_countries WHERE iso_code_2 = 'IQ'), '00000'), -- Diyala Governorate (Near Iran border)
('Al-Qaim', (SELECT id FROM world_countries WHERE iso_code_2 = 'IQ'), '00000'); -- Al Anbar Governorate (Near Syria border)


-- End of Iraq city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Iraq ==
-- ====================================
--
-- Descripción General:
-- Irak (Iraq), oficialmente República de Irak, es un país ubicado en Asia Occidental
-- (Oriente Medio). Limita con Turquía al norte, Irán al este, Kuwait al sureste,
-- Arabia Saudita al sur, Jordania al suroeste y Siria al oeste. Tiene una pequeña
-- costa en el Golfo Pérsico. El país abarca la mayor parte de la antigua Mesopotamia,
-- la "cuna de la civilización", entre los ríos Tigris y Éufrates. Su geografía
-- incluye llanuras aluviales fértiles, desiertos y montañas en el norte (Kurdistán).
--
-- Ciudades Principales:
-- * Bagdad (Baghdad): La capital y ciudad más grande, ubicada a orillas del Tigris.
--   Fue un centro cultural y académico de renombre mundial durante la Edad de Oro
--   islámica (Casa de la Sabiduría).
-- * Mosul: Segunda ciudad más grande, en el norte, a orillas del Tigris, cerca de
--   las ruinas de la antigua Nínive.
-- * Basora (Basra): Principal puerto de Irak, ubicado en el sur, cerca del Golfo Pérsico.
-- * Erbil (Arbil): Capital de la Región Autónoma del Kurdistán Iraquí.
-- * Kirkuk: Ciudad multiétnica en el norte, centro de la industria petrolera.
-- * Sulaymaniyah y Dohuk: Otras ciudades importantes en la Región del Kurdistán.
-- * Nayaf (Najaf) y Kerbala (Karbala): Ciudades santas de gran importancia para el
--   Islam chiita.
-- * La lista incluye también las capitales de la mayoría de las gobernaciones y otras
--   ciudades significativas como Faluya y Samarra.
--
-- Un Poco de Historia:
-- Cuna de las civilizaciones mesopotámicas (Sumeria, Acadia, Babilonia, Asiria).
-- Formó parte de los imperios persa, seléucida, parto, sasánida y luego del califato
-- islámico (Abasí, con capital en Bagdad). Fue conquistado por los mongoles y luego
-- formó parte del Imperio Otomano durante siglos. Tras la Primera Guerra Mundial,
-- se convirtió en un mandato británico. Obtuvo la independencia como reino en 1932.
-- Una revolución en 1958 estableció una república. El partido Baaz tomó el poder en
-- 1968, culminando en la dictadura de Saddam Hussein (1979-2003). Este período
-- incluyó la guerra Irán-Irak (1980-88), la invasión de Kuwait (1990) y la Guerra
-- del Golfo (1991). En 2003, una coalición liderada por EE.UU. invadió Irak y derrocó
-- a Hussein. El período posterior ha estado marcado por la insurgencia, la violencia
-- sectaria, la inestabilidad política y la lucha contra grupos extremistas como ISIS.
--
-- Datos Adicionales:
-- El árabe y el kurdo son los idiomas oficiales. La mayoría de la población es árabe,
-- con una importante minoría kurda en el norte. El Islam es la religión predominante,
-- con mayoría chiita y una significativa minoría sunita. Irak posee vastas reservas
-- de petróleo, que son la base de su economía.
--
*/
