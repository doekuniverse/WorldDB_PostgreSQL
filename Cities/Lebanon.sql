-- SQL Script to insert a representative sample of significant cities and towns for Lebanon (LB).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Lebanon (LB).

-- NOTE: This list includes the capital, governorate capitals/centers, and significant towns.
-- Listing every single village is IMPOSSIBLE.
-- Postal codes are not consistently used; using '0000' as a placeholder.

-- Inserting cities for Lebanon (LB) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Governorate Capitals / Major Cities
('Beirut', (SELECT id FROM world_countries WHERE iso_code_2 = 'LB'), '1100'), -- National Capital (Beirut Governorate) - Example PC
('Tripoli', (SELECT id FROM world_countries WHERE iso_code_2 = 'LB'), '1300'), -- North Lebanon Governorate Capital
('Sidon (Saida)', (SELECT id FROM world_countries WHERE iso_code_2 = 'LB'), '1600'), -- South Lebanon Governorate Capital
('Tyre (Sour)', (SELECT id FROM world_countries WHERE iso_code_2 = 'LB'), '0000'), -- South Lebanon Governorate (Major city, UNESCO site)
('Nabatieh', (SELECT id FROM world_countries WHERE iso_code_2 = 'LB'), '1700'), -- Nabatieh Governorate Capital
('Zahlé', (SELECT id FROM world_countries WHERE iso_code_2 = 'LB'), '1800'), -- Beqaa Governorate Capital
('Baalbek', (SELECT id FROM world_countries WHERE iso_code_2 = 'LB'), '0000'), -- Baalbek-Hermel Governorate Capital (UNESCO site)
('Baabda', (SELECT id FROM world_countries WHERE iso_code_2 = 'LB'), '0000'), -- Mount Lebanon Governorate Capital
('Jounieh', (SELECT id FROM world_countries WHERE iso_code_2 = 'LB'), '0000'), -- Keserwan-Jbeil Governorate (Major city)
('Byblos (Jbeil)', (SELECT id FROM world_countries WHERE iso_code_2 = 'LB'), '0000'), -- Keserwan-Jbeil Governorate (UNESCO site, one of oldest cities)
('Aley', (SELECT id FROM world_countries WHERE iso_code_2 = 'LB'), '0000'), -- Mount Lebanon Governorate (Major town)
('Halba', (SELECT id FROM world_countries WHERE iso_code_2 = 'LB'), '0000'), -- Akkar Governorate Capital

-- Other Significant Towns (Sample)
('Batroun', (SELECT id FROM world_countries WHERE iso_code_2 = 'LB'), '0000'), -- North Lebanon Governorate
('Zgharta', (SELECT id FROM world_countries WHERE iso_code_2 = 'LB'), '0000'), -- North Lebanon Governorate
('Bint Jbeil', (SELECT id FROM world_countries WHERE iso_code_2 = 'LB'), '0000'), -- Nabatieh Governorate
('Marjayoun', (SELECT id FROM world_countries WHERE iso_code_2 = 'LB'), '0000'), -- Nabatieh Governorate
('Jezzine', (SELECT id FROM world_countries WHERE iso_code_2 = 'LB'), '0000'), -- South Lebanon Governorate
('Bsharri', (SELECT id FROM world_countries WHERE iso_code_2 = 'LB'), '0000'), -- North Lebanon Governorate (Near Cedars of God)
('Chtaura', (SELECT id FROM world_countries WHERE iso_code_2 = 'LB'), '0000'), -- Beqaa Governorate (Important crossroads)
('Anjar', (SELECT id FROM world_countries WHERE iso_code_2 = 'LB'), '0000'), -- Beqaa Governorate (UNESCO site - Umayyad ruins)
('Hermel', (SELECT id FROM world_countries WHERE iso_code_2 = 'LB'), '0000'), -- Baalbek-Hermel Governorate
('Bikfaya', (SELECT id FROM world_countries WHERE iso_code_2 = 'LB'), '0000'), -- Mount Lebanon Governorate
('Broummana', (SELECT id FROM world_countries WHERE iso_code_2 = 'LB'), '0000'); -- Mount Lebanon Governorate

-- End of Lebanon city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Lebanon ==
-- ====================================
--
-- Descripción General:
-- Líbano (Lebanon) es un país ubicado en Asia Occidental (Oriente Medio), en la
-- costa oriental del Mar Mediterráneo. Limita con Siria al norte y al este, e
-- Israel al sur. Es un país pequeño y densamente poblado, con una geografía que
-- incluye una estrecha llanura costera, dos cadenas montañosas paralelas (Monte
-- Líbano y Antilíbano) y el fértil Valle de la Becá (Beqaa) entre ellas. Es
-- conocido por su historia antigua, su diversidad religiosa y cultural, y su
-- gastronomía.
--
-- Ciudades Principales:
-- * Beirut: La capital y ciudad más grande, ubicada en la costa mediterránea. Es el
--   principal centro financiero, comercial y cultural del país, históricamente
--   conocida como el "París de Oriente Medio".
-- * Trípoli: La segunda ciudad más grande, ubicada en el norte.
-- * Sidón (Saida) y Tiro (Sour): Antiguas ciudades portuarias fenicias en la costa sur.
--   Tiro es Patrimonio de la Humanidad por la UNESCO.
-- * Zahlé: Principal ciudad del Valle de la Becá.
-- * Jounieh: Importante ciudad costera y turística al norte de Beirut.
-- * Byblos (Jbeil): Una de las ciudades habitadas continuamente más antiguas del
--   mundo, Patrimonio de la Humanidad.
-- * Baalbek: Famosa por sus impresionantes ruinas romanas (Patrimonio de la Humanidad).
-- * La lista incluye también las capitales/centros de las gobernaciones y otras ciudades significativas.
--
-- Un Poco de Historia:
-- Hogar de los antiguos fenicios, una civilización marítima y comercial. La región
-- formó parte de numerosos imperios (egipcio, asirio, babilónico, persa, helenístico,
-- romano, bizantino, árabe, cruzado, mameluco, otomano). Tras la Primera Guerra
-- Mundial, el área del Líbano moderno quedó bajo Mandato Francés. Obtuvo la
-- independencia en 1943. La política libanesa se basa en un complejo sistema
-- confesional que reparte el poder entre las diversas comunidades religiosas
-- (cristianos maronitas, musulmanes sunitas, musulmanes chiitas, drusos, etc.).
-- El país experimentó un período de prosperidad ("la Suiza de Oriente Medio") seguido
-- por una devastadora Guerra Civil (1975-1990) con múltiples facciones e
-- intervenciones extranjeras (Siria, Israel). La posguerra ha estado marcada por
-- la reconstrucción, la inestabilidad política, la influencia siria (hasta 2005),
-- conflictos con Israel y, en años recientes, una grave crisis económica y política.
--
-- Datos Adicionales:
-- El árabe es el idioma oficial, y el francés es ampliamente hablado y tiene un
-- estatus especial. El inglés también es común. Líbano es religiosamente muy diverso.
-- Los Cedros del Líbano son un símbolo nacional. La cocina libanesa es muy popular
-- internacionalmente. El país alberga una gran cantidad de refugiados palestinos y sirios.
--
*/
