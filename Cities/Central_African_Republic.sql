-- SQL Script to insert a representative sample of significant cities and towns for the Central African Republic (CF).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Central African Republic (CF).

-- NOTE: CAR is large and sparsely populated with infrastructure challenges. This list includes the capital,
-- prefecture capitals, and significant towns. Listing every single village is IMPOSSIBLE.
-- Postal codes are not used; using '0000' as a placeholder.

-- Inserting cities for Central African Republic (CF) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Major Cities / Prefecture Capitals
('Bangui', (SELECT id FROM world_countries WHERE iso_code_2 = 'CF'), '0000'), -- National Capital
('Bimbo', (SELECT id FROM world_countries WHERE iso_code_2 = 'CF'), '0000'), -- Ombella-M'Poko Prefecture (near Bangui, largest city after Bangui)
('Berbérati', (SELECT id FROM world_countries WHERE iso_code_2 = 'CF'), '0000'), -- Mambéré-Kadéï Prefecture Capital
('Carnot', (SELECT id FROM world_countries WHERE iso_code_2 = 'CF'), '0000'), -- Mambéré-Kadéï Prefecture town
('Bambari', (SELECT id FROM world_countries WHERE iso_code_2 = 'CF'), '0000'), -- Ouaka Prefecture Capital
('Bouar', (SELECT id FROM world_countries WHERE iso_code_2 = 'CF'), '0000'), -- Nana-Mambéré Prefecture Capital
('Bossangoa', (SELECT id FROM world_countries WHERE iso_code_2 = 'CF'), '0000'), -- Ouham Prefecture Capital
('Bria', (SELECT id FROM world_countries WHERE iso_code_2 = 'CF'), '0000'), -- Haute-Kotto Prefecture Capital
('Bangassou', (SELECT id FROM world_countries WHERE iso_code_2 = 'CF'), '0000'), -- Mbomou Prefecture Capital
('Nola', (SELECT id FROM world_countries WHERE iso_code_2 = 'CF'), '0000'), -- Sangha-Mbaéré Prefecture Capital
('Kaga-Bandoro', (SELECT id FROM world_countries WHERE iso_code_2 = 'CF'), '0000'), -- Nana-Grébizi Prefecture Capital
('Sibut', (SELECT id FROM world_countries WHERE iso_code_2 = 'CF'), '0000'), -- Kémo Prefecture Capital
('Mbaïki', (SELECT id FROM world_countries WHERE iso_code_2 = 'CF'), '0000'), -- Lobaye Prefecture Capital
('Bozoum', (SELECT id FROM world_countries WHERE iso_code_2 = 'CF'), '0000'), -- Ouham-Pendé Prefecture Capital
('Batangafo', (SELECT id FROM world_countries WHERE iso_code_2 = 'CF'), '0000'), -- Ouham Prefecture town
('Paoua', (SELECT id FROM world_countries WHERE iso_code_2 = 'CF'), '0000'), -- Ouham-Pendé Prefecture town
('Ippy', (SELECT id FROM world_countries WHERE iso_code_2 = 'CF'), '0000'), -- Ouaka Prefecture town
('Alindao', (SELECT id FROM world_countries WHERE iso_code_2 = 'CF'), '0000'), -- Basse-Kotto Prefecture Capital
('Mobaye', (SELECT id FROM world_countries WHERE iso_code_2 = 'CF'), '0000'), -- Basse-Kotto Prefecture town
('Zemio', (SELECT id FROM world_countries WHERE iso_code_2 = 'CF'), '0000'), -- Haut-Mbomou Prefecture town
('Obo', (SELECT id FROM world_countries WHERE iso_code_2 = 'CF'), '0000'), -- Haut-Mbomou Prefecture Capital
('Birao', (SELECT id FROM world_countries WHERE iso_code_2 = 'CF'), '0000'), -- Vakaga Prefecture Capital
('Ndélé', (SELECT id FROM world_countries WHERE iso_code_2 = 'CF'), '0000'), -- Bamingui-Bangoran Prefecture Capital

-- Other Significant Towns (Sample)
('Bouca', (SELECT id FROM world_countries WHERE iso_code_2 = 'CF'), '0000'), -- Ouham Prefecture town
('Dekoa', (SELECT id FROM world_countries WHERE iso_code_2 = 'CF'), '0000'), -- Kémo Prefecture town
('Grimari', (SELECT id FROM world_countries WHERE iso_code_2 = 'CF'), '0000'), -- Ouaka Prefecture town
('Damara', (SELECT id FROM world_countries WHERE iso_code_2 = 'CF'), '0000'), -- Ombella-M'Poko Prefecture town
('Bocaranga', (SELECT id FROM world_countries WHERE iso_code_2 = 'CF'), '0000'); -- Ouham-Pendé Prefecture town

-- End of Central African Republic city list (Representative Sample)

/*
-- ==========================================================
-- == Información sobre la República Centroafricana (RCA) ==
-- ==========================================================
--
-- Descripción General:
-- La República Centroafricana es un país sin salida al mar ubicado en África Central.
-- Limita con Chad al norte, Sudán y Sudán del Sur al este, la República Democrática
-- del Congo y la República del Congo al sur, y Camerún al oeste. Gran parte del
-- país consiste en una meseta de sabana (Sudano-Guineana), pero también incluye
-- regiones de Sahel en el norte y selva ecuatorial en el sur. Es rico en recursos
-- naturales como diamantes, oro, uranio y madera, pero es uno de los países más
-- pobres y menos desarrollados del mundo, afectado por décadas de inestabilidad
-- política, conflictos internos y golpes de estado.
--
-- Ciudades Principales:
-- * Bangui: La capital y ciudad más grande, ubicada a orillas del río Ubangi, que
--   forma la frontera con la RD del Congo. Es el centro administrativo y económico.
-- * Bimbo: Ciudad grande cerca de Bangui.
-- * Berbérati: Tercera ciudad más grande, en el suroeste.
-- * Bambari, Bouar, Bossangoa, Bria: Otras ciudades importantes y capitales de prefectura.
-- * La lista incluye también las demás capitales de prefectura y pueblos significativos.
--
-- Un Poco de Historia:
-- El territorio fue colonizado por Francia a finales del siglo XIX como Ubangi-Shari
-- (Oubangui-Chari). Formó parte del África Ecuatorial Francesa. Obtuvo la
-- independencia en 1960. Su historia post-independencia ha sido turbulenta,
-- destacando el régimen del autoproclamado emperador Jean-Bédel Bokassa (1966-1979),
-- seguido por múltiples golpes de estado y conflictos civiles, a menudo con
-- intervención de potencias extranjeras (especialmente Francia) y fuerzas
-- regionales o de la ONU. La violencia sectaria entre milicias Séléka (mayoría
-- musulmana) y anti-balaka (mayoría cristiana/animista) ha devastado el país
-- desde 2012-2013, aunque la intensidad ha variado.
--
-- Datos Adicionales:
-- Los idiomas oficiales son el francés y el sango (una lengua criolla local que
-- sirve como lengua franca). A pesar de su riqueza mineral, la economía está
-- subdesarrollada y depende en gran medida de la agricultura de subsistencia.
-- El Parque Nacional Dzanga-Sangha en el suroeste es conocido por sus gorilas y
-- elefantes de bosque.
--
*/
