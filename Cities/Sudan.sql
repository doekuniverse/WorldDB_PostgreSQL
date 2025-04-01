-- SQL Script to insert a representative sample of significant cities and towns for Sudan (SD).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Sudan (SD).

-- NOTE: Sudan is large with many localities. Data availability can be challenging due to conflict.
-- This list includes the capital, state capitals, major cities, and significant towns.
-- Listing every single village is IMPOSSIBLE.
-- Postal codes are 5 digits but usage is very limited; using '00000' as a placeholder.

-- Inserting cities for Sudan (SD) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & State Capitals / Major Cities
('Khartoum (Al Khartum)', (SELECT id FROM world_countries WHERE iso_code_2 = 'SD'), '11111'), -- National Capital (Khartoum State) - Example PC
('Omdurman (Umm Durman)', (SELECT id FROM world_countries WHERE iso_code_2 = 'SD'), '00000'), -- Khartoum State (Largest city, part of metro)
('Khartoum North (Al Khartum Bahri)', (SELECT id FROM world_countries WHERE iso_code_2 = 'SD'), '00000'), -- Khartoum State (Part of metro)
('Port Sudan (Bur Sudan)', (SELECT id FROM world_countries WHERE iso_code_2 = 'SD'), '00000'), -- Red Sea State Capital (Main port)
('Kassala', (SELECT id FROM world_countries WHERE iso_code_2 = 'SD'), '00000'), -- Kassala State Capital
('El Obeid (Al Ubayyid)', (SELECT id FROM world_countries WHERE iso_code_2 = 'SD'), '00000'), -- North Kordofan State Capital
('Kosti', (SELECT id FROM world_countries WHERE iso_code_2 = 'SD'), '00000'), -- White Nile State (Major town)
('Wad Madani', (SELECT id FROM world_countries WHERE iso_code_2 = 'SD'), '00000'), -- Gezira State Capital
('Gedaref (Al Qadarif)', (SELECT id FROM world_countries WHERE iso_code_2 = 'SD'), '00000'), -- Gedaref State Capital
('Nyala', (SELECT id FROM world_countries WHERE iso_code_2 = 'SD'), '00000'), -- South Darfur State Capital
('El Fasher (Al Fashir)', (SELECT id FROM world_countries WHERE iso_code_2 = 'SD'), '00000'), -- North Darfur State Capital
('Ed Dueim', (SELECT id FROM world_countries WHERE iso_code_2 = 'SD'), '00000'), -- White Nile State
('Geneina (Al Junaynah)', (SELECT id FROM world_countries WHERE iso_code_2 = 'SD'), '00000'), -- West Darfur State Capital
('Ed Damazin', (SELECT id FROM world_countries WHERE iso_code_2 = 'SD'), '00000'), -- Blue Nile State Capital
('Rabak', (SELECT id FROM world_countries WHERE iso_code_2 = 'SD'), '00000'), -- White Nile State Capital
('Sennar (Sannar)', (SELECT id FROM world_countries WHERE iso_code_2 = 'SD'), '00000'), -- Sennar State (Major town)
('Singa', (SELECT id FROM world_countries WHERE iso_code_2 = 'SD'), '00000'), -- Sennar State Capital
('Dongola', (SELECT id FROM world_countries WHERE iso_code_2 = 'SD'), '00000'), -- Northern State Capital
('Atbara (''Atbarah)', (SELECT id FROM world_countries WHERE iso_code_2 = 'SD'), '00000'), -- River Nile State (Railway hub)
('Ed Damir', (SELECT id FROM world_countries WHERE iso_code_2 = 'SD'), '00000'), -- River Nile State Capital
('Kadugli', (SELECT id FROM world_countries WHERE iso_code_2 = 'SD'), '00000'), -- South Kordofan State Capital
('Zalingei', (SELECT id FROM world_countries WHERE iso_code_2 = 'SD'), '00000'), -- Central Darfur State Capital
('El Daein', (SELECT id FROM world_countries WHERE iso_code_2 = 'SD'), '00000'), -- East Darfur State Capital

-- Other Significant Towns (Sample)
('El Managil', (SELECT id FROM world_countries WHERE iso_code_2 = 'SD'), '00000'), -- Gezira State
('Shendi', (SELECT id FROM world_countries WHERE iso_code_2 = 'SD'), '00000'), -- River Nile State
('Berber', (SELECT id FROM world_countries WHERE iso_code_2 = 'SD'), '00000'), -- River Nile State
('Halfa el Jadida', (SELECT id FROM world_countries WHERE iso_code_2 = 'SD'), '00000'), -- Kassala State
('Tokar', (SELECT id FROM world_countries WHERE iso_code_2 = 'SD'), '00000'), -- Red Sea State
('Suakin', (SELECT id FROM world_countries WHERE iso_code_2 = 'SD'), '00000'); -- Red Sea State (Historic port)

-- End of Sudan city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Sudan ==
-- ====================================
--
-- Descripción General:
-- Sudán, oficialmente República del Sudán, es un país ubicado en el noreste de África.
-- Limita con Egipto al norte, Libia al noroeste, Chad al oeste, la República
-- Centroafricana al suroeste, Sudán del Sur al sur, Etiopía al sureste y Eritrea y
-- el Mar Rojo al este. Es uno de los países más grandes de África por área. El río
-- Nilo, formado por la confluencia del Nilo Blanco y el Nilo Azul en Jartum, es la
-- característica geográfica dominante que atraviesa el país de sur a norte. Gran
-- parte del país es desértico (Sahara) o semiárido (Sahel).
--
-- Ciudades Principales:
-- * Jartum (Khartoum): La capital, ubicada en la confluencia de los Nilos Blanco y Azul.
--   Forma una gran aglomeración metropolitana con Omdurmán y Jartum Norte (Bahri).
-- * Omdurmán (Omdurman): La ciudad más grande en términos de población residente,
--   parte del área metropolitana de la capital.
-- * Puerto Sudán (Port Sudan): El principal puerto del país en el Mar Rojo.
-- * Kassala, El Obeid, Kosti, Wad Madani, Gedaref: Importantes centros regionales y
--   comerciales.
-- * Nyala, El Fasher, Geneina: Principales ciudades en la conflictiva región de Darfur.
-- * Ed Damazin, Sennar, Rabak, Dongola, Atbara, Ed Damir, Kadugli, Zalingei, El Daein:
--   Capitales de los demás estados (wilayat).
--
-- Un Poco de Historia:
-- La región tiene una historia antigua, siendo hogar del Reino de Kush (Nubia), con
-- centros como Kerma y Meroe (famosa por sus pirámides). Fue cristianizada y luego
-- islamizada. Formó parte del Sultanato de Sennar y otros estados. En el siglo XIX,
-- fue conquistada por el Egipto Otomano. Una revuelta nacionalista liderada por el
-- Mahdi estableció un estado independiente a finales del siglo XIX, que fue derrotado
-- por una fuerza anglo-egipcia, estableciéndose el Sudán Anglo-Egipcio (administrado
-- de facto por los británicos). Sudán obtuvo la independencia en 1956. La historia
-- post-independencia ha estado marcada por la inestabilidad política, gobiernos
-- militares, conflictos entre el norte árabe-musulmán y el sur africano (cristiano/animista)
-- que llevaron a la independencia de Sudán del Sur en 2011, y el conflicto en Darfur
-- desde 2003. El largo régimen de Omar al-Bashir (llegó al poder en 1989) fue derrocado
-- por protestas populares y un golpe militar en 2019. La transición a un gobierno
-- civil ha sido interrumpida por posteriores golpes militares y un conflicto a gran
-- escala que estalló en 2023 entre las Fuerzas Armadas Sudanesas y las Fuerzas de Apoyo Rápido.
--
-- Datos Adicionales:
-- El árabe y el inglés son los idiomas oficiales, pero se hablan muchas lenguas locales.
-- El Islam sunita es la religión predominante. La economía ha dependido del petróleo
-- (gran parte de las reservas quedaron en Sudán del Sur) y la agricultura (goma arábiga,
-- algodón, sésamo). Las pirámides de Meroe son Patrimonio de la Humanidad por la UNESCO.
--
*/
