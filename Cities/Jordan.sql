-- SQL Script to insert a representative sample of significant cities and towns for Jordan (JO).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Jordan (JO).

-- NOTE: This list includes the capital, governorate capitals, and a broad sample of major cities
-- and significant towns. Listing every single village is IMPOSSIBLE.
-- Postal codes are 5 digits; examples or '00000' placeholder are provided.

-- Inserting cities for Jordan (JO) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Governorate Capitals / Major Cities
('Amman', (SELECT id FROM world_countries WHERE iso_code_2 = 'JO'), '11110'), -- National Capital & Amman Governorate Capital
('Zarqa', (SELECT id FROM world_countries WHERE iso_code_2 = 'JO'), '13110'), -- Zarqa Governorate Capital
('Irbid', (SELECT id FROM world_countries WHERE iso_code_2 = 'JO'), '21110'), -- Irbid Governorate Capital
('Russeifa', (SELECT id FROM world_countries WHERE iso_code_2 = 'JO'), '13710'), -- Zarqa Governorate (Part of Amman Metro)
('Aqaba', (SELECT id FROM world_countries WHERE iso_code_2 = 'JO'), '77110'), -- Aqaba Governorate Capital (Only coastal city)
('Salt', (SELECT id FROM world_countries WHERE iso_code_2 = 'JO'), '19110'), -- Balqa Governorate Capital
('Madaba', (SELECT id FROM world_countries WHERE iso_code_2 = 'JO'), '17110'), -- Madaba Governorate Capital
('Mafraq', (SELECT id FROM world_countries WHERE iso_code_2 = 'JO'), '25110'), -- Mafraq Governorate Capital
('Karak (Al-Karak)', (SELECT id FROM world_countries WHERE iso_code_2 = 'JO'), '61110'), -- Karak Governorate Capital
('Ma''an', (SELECT id FROM world_countries WHERE iso_code_2 = 'JO'), '71110'), -- Ma'an Governorate Capital
('Tafilah (At-Tafilah)', (SELECT id FROM world_countries WHERE iso_code_2 = 'JO'), '66110'), -- Tafilah Governorate Capital
('Jerash (Jarash)', (SELECT id FROM world_countries WHERE iso_code_2 = 'JO'), '26110'), -- Jerash Governorate Capital (Roman ruins)
('Ajloun (Ajlun)', (SELECT id FROM world_countries WHERE iso_code_2 = 'JO'), '26810'), -- Ajloun Governorate Capital

-- Other Significant Towns (Sample)
('Sahab', (SELECT id FROM world_countries WHERE iso_code_2 = 'JO'), '11512'), -- Amman Governorate (Industrial city)
('Wadi Al Seer', (SELECT id FROM world_countries WHERE iso_code_2 = 'JO'), '11810'), -- Amman Governorate (Part of Greater Amman)
('Ar Ramtha', (SELECT id FROM world_countries WHERE iso_code_2 = 'JO'), '21410'), -- Irbid Governorate (Near Syria border)
('Wadi Musa', (SELECT id FROM world_countries WHERE iso_code_2 = 'JO'), '71810'), -- Ma'an Governorate (Town next to Petra)
('Fuheis', (SELECT id FROM world_countries WHERE iso_code_2 = 'JO'), '19410'), -- Balqa Governorate
('Ain Al Basha', (SELECT id FROM world_countries WHERE iso_code_2 = 'JO'), '19510'), -- Balqa Governorate
('Kufranjah', (SELECT id FROM world_countries WHERE iso_code_2 = 'JO'), '26810'), -- Ajloun Governorate (Postal code needs check)
('Shobak', (SELECT id FROM world_countries WHERE iso_code_2 = 'JO'), '71810'), -- Ma'an Governorate (Near Petra, Crusader castle)
('Al Husn', (SELECT id FROM world_countries WHERE iso_code_2 = 'JO'), '21510'); -- Irbid Governorate

-- End of Jordan city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Jordan ==
-- ====================================
--
-- Descripción General:
-- El Reino Hachemita de Jordania (Jordan) es un país árabe ubicado en Asia Occidental
-- (Oriente Medio). Limita con Arabia Saudita al sur y este, Irak al noreste, Siria
-- al norte, e Israel y Cisjordania (Palestina) al oeste. Tiene una pequeña salida
-- al Mar Rojo en el sur (Golfo de Aqaba) y también bordea el Mar Muerto. Gran parte
-- del país es desierto árido, con una región montañosa en el oeste donde se
-- concentra la mayoría de la población y la agricultura.
--
-- Ciudades Principales:
-- * Amán (Amman): La capital y ciudad más grande, centro político, cultural y
--   económico del país.
-- * Zarqa e Irbid: Segunda y tercera ciudades más grandes, importantes centros
--   industriales y universitarios.
-- * Russeifa: Ciudad grande que forma parte del área metropolitana de Amán/Zarqa.
-- * Aqaba: Única ciudad costera de Jordania, importante puerto y centro turístico
--   en el Mar Rojo.
-- * Salt, Madaba, Mafraq, Karak, Ma'an, Tafilah, Jerash, Ajloun: Capitales de las
--   demás gobernaciones (muhafazat). Jerash es famosa por sus extensas ruinas romanas.
--   Karak y Ajloun son conocidas por sus castillos históricos (cruzados/islámicos).
-- * Wadi Musa: El pueblo adyacente al sitio arqueológico de Petra.
--
-- Un Poco de Historia:
-- La región tiene una historia antigua, hogar de varios reinos (Edom, Moab, Amón)
-- y parte del reino Nabateo (con capital en Petra). Fue conquistada por romanos,
-- bizantinos y luego por los califatos islámicos. Formó parte del Imperio Otomano
-- durante siglos. Tras la Primera Guerra Mundial y la Revuelta Árabe, la región
-- quedó bajo Mandato Británico como Transjordania, gobernada por la dinastía
-- Hachemita (Abdullah I). Obtuvo la independencia en 1946 como Reino Hachemita de
-- Transjordania, renombrado como Jordania en 1949 tras la guerra árabe-israelí de
-- 1948 y la anexión de Cisjordania (perdida ante Israel en 1967). Bajo el rey Hussein
-- y su sucesor, el rey Abdullah II, Jordania ha mantenido una relativa estabilidad
-- en una región turbulenta, jugando un papel moderador y firmando un tratado de paz
-- con Israel en 1994. Ha acogido a grandes poblaciones de refugiados palestinos,
-- iraquíes y sirios.
--
-- Datos Adicionales:
-- El árabe es el idioma oficial. El Islam sunita es la religión predominante. Petra,
-- la ciudad nabatea excavada en la roca, es Patrimonio de la Humanidad y una de las
-- Nuevas Siete Maravillas del Mundo. El Mar Muerto, el punto más bajo de la Tierra,
-- es compartido con Israel y Palestina. Wadi Rum es un famoso desierto con paisajes
-- espectaculares.
--
*/
