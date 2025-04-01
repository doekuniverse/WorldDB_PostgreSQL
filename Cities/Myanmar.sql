-- SQL Script to insert a representative sample of significant cities and towns for Myanmar (MM).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Myanmar (MM).

-- NOTE: Myanmar is large with complex administration and many localities. Data access can be challenging.
-- This list includes the capital, major cities, state/regional capitals, and significant towns.
-- Listing every single village is IMPOSSIBLE.
-- Postal codes (5 digits) usage is limited; using '00000' as a placeholder or example.

-- Inserting cities for Myanmar (MM) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Major Cities / State & Regional Capitals
('Naypyidaw (Nay Pyi Taw)', (SELECT id FROM world_countries WHERE iso_code_2 = 'MM'), '15011'), -- National Capital (Union Territory) - Example PC
('Yangon (Rangoon)', (SELECT id FROM world_countries WHERE iso_code_2 = 'MM'), '11181'), -- Yangon Region Capital (Largest city, former capital) - Example PC
('Mandalay', (SELECT id FROM world_countries WHERE iso_code_2 = 'MM'), '05041'), -- Mandalay Region Capital - Example PC
('Mawlamyine (Mawlamyaing)', (SELECT id FROM world_countries WHERE iso_code_2 = 'MM'), '12011'), -- Mon State Capital - Example PC
('Bago (Pegu)', (SELECT id FROM world_countries WHERE iso_code_2 = 'MM'), '08011'), -- Bago Region Capital - Example PC
('Pathein (Bassein)', (SELECT id FROM world_countries WHERE iso_code_2 = 'MM'), '10011'), -- Ayeyarwady Region Capital - Example PC
('Monywa', (SELECT id FROM world_countries WHERE iso_code_2 = 'MM'), '02011'), -- Sagaing Region Capital - Example PC
('Sittwe (Akyab)', (SELECT id FROM world_countries WHERE iso_code_2 = 'MM'), '14011'), -- Rakhine State Capital - Example PC
('Taunggyi', (SELECT id FROM world_countries WHERE iso_code_2 = 'MM'), '06011'), -- Shan State Capital - Example PC
('Myitkyina', (SELECT id FROM world_countries WHERE iso_code_2 = 'MM'), '01011'), -- Kachin State Capital - Example PC
('Dawei (Tavoy)', (SELECT id FROM world_countries WHERE iso_code_2 = 'MM'), '14011'), -- Tanintharyi Region Capital - Example PC needs check
('Hpa-an', (SELECT id FROM world_countries WHERE iso_code_2 = 'MM'), '13011'), -- Kayin State Capital - Example PC
('Loikaw', (SELECT id FROM world_countries WHERE iso_code_2 = 'MM'), '09011'), -- Kayah State Capital - Example PC
('Magway', (SELECT id FROM world_countries WHERE iso_code_2 = 'MM'), '04011'), -- Magway Region Capital - Example PC
('Hakha', (SELECT id FROM world_countries WHERE iso_code_2 = 'MM'), '03011'), -- Chin State Capital - Example PC

-- Other Significant Towns (Sample)
('Pyay (Prome)', (SELECT id FROM world_countries WHERE iso_code_2 = 'MM'), '00000'), -- Bago Region
('Lashio', (SELECT id FROM world_countries WHERE iso_code_2 = 'MM'), '00000'), -- Shan State
('Pakokku', (SELECT id FROM world_countries WHERE iso_code_2 = 'MM'), '00000'), -- Magway Region
('Myeik (Mergui)', (SELECT id FROM world_countries WHERE iso_code_2 = 'MM'), '00000'), -- Tanintharyi Region
('Meiktila', (SELECT id FROM world_countries WHERE iso_code_2 = 'MM'), '00000'), -- Mandalay Region
('Taungoo', (SELECT id FROM world_countries WHERE iso_code_2 = 'MM'), '00000'), -- Bago Region
('Myingyan', (SELECT id FROM world_countries WHERE iso_code_2 = 'MM'), '00000'), -- Mandalay Region
('Mogok', (SELECT id FROM world_countries WHERE iso_code_2 = 'MM'), '00000'), -- Mandalay Region (Ruby mining)
('Pyin Oo Lwin (Maymyo)', (SELECT id FROM world_countries WHERE iso_code_2 = 'MM'), '00000'), -- Mandalay Region (Hill station)
('Hinthada (Henzada)', (SELECT id FROM world_countries WHERE iso_code_2 = 'MM'), '00000'), -- Ayeyarwady Region
('Sagaing', (SELECT id FROM world_countries WHERE iso_code_2 = 'MM'), '00000'), -- Sagaing Region (Former capital)
('Shwebo', (SELECT id FROM world_countries WHERE iso_code_2 = 'MM'), '00000'), -- Sagaing Region
('Mudon', (SELECT id FROM world_countries WHERE iso_code_2 = 'MM'), '00000'), -- Mon State
('Kalay (Kalaymyo)', (SELECT id FROM world_countries WHERE iso_code_2 = 'MM'), '00000'), -- Sagaing Region
('Chauk', (SELECT id FROM world_countries WHERE iso_code_2 = 'MM'), '00000'), -- Magway Region (Oil fields)
('Bhamo', (SELECT id FROM world_countries WHERE iso_code_2 = 'MM'), '00000'); -- Kachin State (River port)

-- End of Myanmar city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Myanmar ==
-- ====================================
--
-- Descripción General:
-- Myanmar, también conocido históricamente como Birmania (Burma), es un país ubicado
-- en el Sudeste Asiático continental. Limita con Bangladesh e India al noroeste,
-- China al noreste, Laos y Tailandia al este y sureste, y el Mar de Andamán y la
-- Bahía de Bengala al sur y suroeste. Es el país más grande del Sudeste Asiático
-- continental por área. Su geografía incluye cadenas montañosas en el norte y oeste,
-- una llanura central dominada por el río Irawadi (Ayeyarwady), y una larga costa.
-- Es étnicamente muy diverso.
--
-- Ciudades Principales:
-- * Naipyidó (Naypyidaw): La capital administrativa desde 2005, una ciudad planificada
--   y construida a gran escala en el centro del país.
-- * Rangún (Yangon): La antigua capital y la ciudad más grande, sigue siendo el
--   principal centro económico, cultural y portuario. Famosa por la Pagoda Shwedagon.
-- * Mandalay: La segunda ciudad más grande, centro cultural e histórico en el centro
--   del país, última capital real birmana.
-- * Mawlamyine, Bago, Pathein: Otras ciudades importantes en el sur y la región del delta.
-- * Monywa, Sittwe, Taunggyi, Myitkyina: Principales ciudades y capitales regionales/estatales
--   en otras partes del país.
-- * La lista incluye también las capitales de la mayoría de los estados y regiones, y
--   otras ciudades significativas.
--
-- Un Poco de Historia:
-- La región fue hogar de varios reinos y ciudades-estado antiguas (Pyu, Mon). El
-- primer imperio birmano unificado fue establecido por el rey Anawrahta en Bagan
-- en el siglo XI (famoso por sus miles de templos budistas). Siguieron otros
-- imperios birmanos (Toungoo, Konbaung). Fue gradualmente anexado por el Imperio
-- Británico durante el siglo XIX tras tres guerras anglo-birmanas, convirtiéndose
-- en una provincia de la India Británica. Fue ocupada por Japón durante la Segunda
-- Guerra Mundial. Obtuvo la independencia en 1948 como Birmania. La historia
-- post-independencia ha estado dominada en gran medida por gobiernos militares,
-- comenzando con el golpe de estado de Ne Win en 1962. Hubo un levantamiento pro-
-- democracia en 1988 (Levantamiento 8888) que fue reprimido. El país fue renombrado
-- Myanmar por la junta militar en 1989. Aung San Suu Kyi lideró el movimiento
-- democrático, ganando elecciones en 1990 (ignoradas por los militares) y 2015.
-- Hubo un período de transición democrática parcial en la década de 2010, pero un
-- nuevo golpe militar en 2021 derrocó al gobierno civil, llevando a una renovada
-- inestabilidad y conflicto interno.
--
-- Datos Adicionales:
-- El birmano es el idioma oficial. El budismo Theravada es la religión predominante.
-- Myanmar es étnicamente muy diverso, con el grupo Bamar como mayoría y numerosas
-- minorías étnicas (Shan, Karen, Rakhine, Kachin, Chin, Mon, etc.), muchas de las
-- cuales han estado involucradas en conflictos prolongados con el gobierno central.
-- Es rico en recursos naturales (gemas, madera, gas natural). Los templos de Bagan
-- son un sitio arqueológico de renombre mundial.
--
*/
