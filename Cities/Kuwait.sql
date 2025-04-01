-- SQL Script to insert a representative sample of significant cities and areas for Kuwait (KW).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Kuwait (KW).

-- NOTE: Kuwait is highly urbanized. This list includes the capital, governorate centers,
-- and major residential/commercial areas. Listing every single neighborhood/block is IMPOSSIBLE.
-- Postal codes are 5 digits; examples or '00000' placeholder are provided.

-- Inserting cities/areas for Kuwait (KW) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Governorate Centers / Major Areas
('Kuwait City', (SELECT id FROM world_countries WHERE iso_code_2 = 'KW'), '15000'), -- National Capital (Al Asimah Governorate)
('Hawalli', (SELECT id FROM world_countries WHERE iso_code_2 = 'KW'), '30000'), -- Hawalli Governorate Capital/Major Area
('Salmiya', (SELECT id FROM world_countries WHERE iso_code_2 = 'KW'), '20000'), -- Hawalli Governorate (Major residential/commercial area)
('Farwaniya', (SELECT id FROM world_countries WHERE iso_code_2 = 'KW'), '80000'), -- Farwaniya Governorate Capital/Major Area
('Jahra', (SELECT id FROM world_countries WHERE iso_code_2 = 'KW'), '00000'), -- Jahra Governorate Capital (Postal code less standardized, using placeholder)
('Ahmadi', (SELECT id FROM world_countries WHERE iso_code_2 = 'KW'), '61000'), -- Ahmadi Governorate Capital (Oil company town)
('Mubarak Al-Kabeer', (SELECT id FROM world_countries WHERE iso_code_2 = 'KW'), '40000'), -- Mubarak Al-Kabeer Governorate Capital/Area

-- Other Significant Towns/Areas (Sample)
('Mangaf', (SELECT id FROM world_countries WHERE iso_code_2 = 'KW'), '53700'), -- Ahmadi Governorate
('Fahaheel', (SELECT id FROM world_countries WHERE iso_code_2 = 'KW'), '63000'), -- Ahmadi Governorate
('Sabah Al-Salem', (SELECT id FROM world_countries WHERE iso_code_2 = 'KW'), '40000'), -- Mubarak Al-Kabeer Governorate (Postal code needs check)
('Jleeb Al-Shuyoukh', (SELECT id FROM world_countries WHERE iso_code_2 = 'KW'), '85600'), -- Farwaniya Governorate
('Khaitan', (SELECT id FROM world_countries WHERE iso_code_2 = 'KW'), '83000'), -- Farwaniya Governorate
('Salwa', (SELECT id FROM world_countries WHERE iso_code_2 = 'KW'), '25000'), -- Hawalli Governorate
('Jabriya', (SELECT id FROM world_countries WHERE iso_code_2 = 'KW'), '46300'), -- Hawalli Governorate
('Bayan', (SELECT id FROM world_countries WHERE iso_code_2 = 'KW'), '43600'), -- Hawalli Governorate
('Rumaithiya', (SELECT id FROM world_countries WHERE iso_code_2 = 'KW'), '25400'), -- Hawalli Governorate
('Fintas', (SELECT id FROM world_countries WHERE iso_code_2 = 'KW'), '53000'), -- Ahmadi Governorate
('Mahboula', (SELECT id FROM world_countries WHERE iso_code_2 = 'KW'), '54000'), -- Ahmadi Governorate
('Wafra', (SELECT id FROM world_countries WHERE iso_code_2 = 'KW'), '00000'), -- Ahmadi Governorate (Agricultural area in the south)
('Abdali', (SELECT id FROM world_countries WHERE iso_code_2 = 'KW'), '00000'); -- Jahra Governorate (Northern border area)

-- End of Kuwait locality list (Representative Sample)

/*
-- ====================================
-- == Información sobre Kuwait ==
-- ====================================
--
-- Descripción General:
-- El Estado de Kuwait es un pequeño país ubicado en el extremo noroeste del Golfo
-- Pérsico, en Asia Occidental (Oriente Medio). Limita con Irak al norte y oeste, y
-- con Arabia Saudita al sur. Es una monarquía constitucional (un emirato) con un
-- parlamento electo. Su economía está dominada por sus enormes reservas de petróleo,
-- lo que le otorga uno de los PIB per cápita más altos del mundo. El paisaje es
-- mayormente desértico y plano.
--
-- Ciudades Principales (Áreas):
-- Kuwait es altamente urbanizado y la mayor parte de la población vive en la
-- aglomeración urbana de la Ciudad de Kuwait.
-- * Ciudad de Kuwait (Kuwait City): La capital y centro político, cultural y económico.
-- * Hawalli, Salmiya, Farwaniya: Importantes áreas residenciales y comerciales que
--   forman parte de la gran área metropolitana. Salmiya es conocida por sus tiendas
--   y restaurantes.
-- * Jahra: Ciudad ubicada al oeste de la capital, centro de la gobernación homónima.
-- * Ahmadi: Ciudad al sur, originalmente desarrollada por la Kuwait Oil Company.
-- * Mubarak Al-Kabeer: Gobernación y área residencial más reciente.
--
-- Un Poco de Historia:
-- La región fue habitada desde la antigüedad y formó parte de diversas civilizaciones
-- mesopotámicas y persas. El jequeado moderno de Kuwait fue fundado en el siglo XVIII
-- por la familia Al Sabah (que gobierna hasta hoy), bajo soberanía nominal otomana.
-- Se convirtió en un centro comercial y de construcción de barcos (dhows). A finales
-- del siglo XIX, firmó un acuerdo de protección con Gran Bretaña para evitar la
-- anexión otomana o de otros poderes regionales. El descubrimiento de petróleo en
-- 1938 transformó radicalmente el país. Obtuvo la plena independencia en 1961. En
-- 1990, Kuwait fue invadido y anexado por el Irak de Saddam Hussein, lo que provocó
-- la Guerra del Golfo de 1991, en la que una coalición internacional liderada por
-- EE.UU. liberó el país. Desde entonces, Kuwait se ha reconstruido y ha mantenido
-- su prosperidad basada en el petróleo.
--
-- Datos Adicionales:
-- El árabe es el idioma oficial. El Islam es la religión del estado. Kuwait tiene
-- una gran población de trabajadores expatriados. Las Torres de Kuwait son un icono
-- arquitectónico moderno del país. El dinar kuwaití es una de las unidades monetarias
-- de mayor valor en el mundo.
--
*/
