-- SQL Script to insert a representative sample of significant cities and towns for Chad (TD).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Chad (TD).

-- NOTE: Chad is large, partly desert/Sahelian, with dispersed population. This list includes the capital,
-- regional capitals, and significant towns. Listing every single locality is IMPOSSIBLE.
-- Postal codes are not used; using '0000' as a placeholder.

-- Inserting cities for Chad (TD) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Regional Capitals / Major Towns
('N''Djamena', (SELECT id FROM world_countries WHERE iso_code_2 = 'TD'), '0000'), -- National Capital
('Moundou', (SELECT id FROM world_countries WHERE iso_code_2 = 'TD'), '0000'), -- Logone Occidental Region Capital
('Sarh', (SELECT id FROM world_countries WHERE iso_code_2 = 'TD'), '0000'), -- Moyen-Chari Region Capital
('Abéché', (SELECT id FROM world_countries WHERE iso_code_2 = 'TD'), '0000'), -- Ouaddaï Region Capital
('Kélo', (SELECT id FROM world_countries WHERE iso_code_2 = 'TD'), '0000'), -- Tandjilé Region town
('Koumra', (SELECT id FROM world_countries WHERE iso_code_2 = 'TD'), '0000'), -- Mandoul Region Capital
('Pala', (SELECT id FROM world_countries WHERE iso_code_2 = 'TD'), '0000'), -- Mayo-Kebbi Ouest Region Capital
('Am Timan', (SELECT id FROM world_countries WHERE iso_code_2 = 'TD'), '0000'), -- Salamat Region Capital
('Bongor', (SELECT id FROM world_countries WHERE iso_code_2 = 'TD'), '0000'), -- Mayo-Kebbi Est Region Capital
('Mongo', (SELECT id FROM world_countries WHERE iso_code_2 = 'TD'), '0000'), -- Guéra Region Capital
('Doba', (SELECT id FROM world_countries WHERE iso_code_2 = 'TD'), '0000'), -- Logone Oriental Region Capital
('Ati', (SELECT id FROM world_countries WHERE iso_code_2 = 'TD'), '0000'), -- Batha Region Capital
('Faya-Largeau', (SELECT id FROM world_countries WHERE iso_code_2 = 'TD'), '0000'), -- Borkou Region Capital
('Biltine', (SELECT id FROM world_countries WHERE iso_code_2 = 'TD'), '0000'), -- Wadi Fira Region Capital
('Massakory', (SELECT id FROM world_countries WHERE iso_code_2 = 'TD'), '0000'), -- Hadjer-Lamis Region Capital
('Massenya', (SELECT id FROM world_countries WHERE iso_code_2 = 'TD'), '0000'), -- Chari-Baguimi Region Capital
('Bol', (SELECT id FROM world_countries WHERE iso_code_2 = 'TD'), '0000'), -- Lac Region Capital
('Mao', (SELECT id FROM world_countries WHERE iso_code_2 = 'TD'), '0000'), -- Kanem Region Capital
('Bardaï', (SELECT id FROM world_countries WHERE iso_code_2 = 'TD'), '0000'), -- Tibesti Region Capital
('Amdjarass', (SELECT id FROM world_countries WHERE iso_code_2 = 'TD'), '0000'), -- Ennedi-Est Region Capital
('Fada', (SELECT id FROM world_countries WHERE iso_code_2 = 'TD'), '0000'), -- Ennedi-Ouest Region Capital
('Laï', (SELECT id FROM world_countries WHERE iso_code_2 = 'TD'), '0000'), -- Tandjilé Region Capital

-- Other Significant Towns (Sample)
('Guelendeng', (SELECT id FROM world_countries WHERE iso_code_2 = 'TD'), '0000'), -- Mayo-Kebbi Est Region
('Kyabé', (SELECT id FROM world_countries WHERE iso_code_2 = 'TD'), '0000'), -- Moyen-Chari Region
('Moussoro', (SELECT id FROM world_countries WHERE iso_code_2 = 'TD'), '0000'), -- Batha Region
('Oum Hadjer', (SELECT id FROM world_countries WHERE iso_code_2 = 'TD'), '0000'), -- Batha Region
('Bokoro', (SELECT id FROM world_countries WHERE iso_code_2 = 'TD'), '0000'), -- Hadjer-Lamis Region
('Bousso', (SELECT id FROM world_countries WHERE iso_code_2 = 'TD'), '0000'), -- Chari-Baguimi Region
('Fianga', (SELECT id FROM world_countries WHERE iso_code_2 = 'TD'), '0000'), -- Mayo-Kebbi Est Region
('Bénoye', (SELECT id FROM world_countries WHERE iso_code_2 = 'TD'), '0000'), -- Logone Occidental Region
('Adré', (SELECT id FROM world_countries WHERE iso_code_2 = 'TD'), '0000'); -- Ouaddaï Region (near Sudan border)


-- End of Chad city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Chad ==
-- ====================================
--
-- Descripción General:
-- Chad es un país sin salida al mar ubicado en África Central/Saheliana. Es el
-- quinto país más grande de África por área. Limita con Libia al norte, Sudán al
-- este, la República Centroafricana al sur, Camerún y Nigeria al suroeste, y
-- Níger al oeste. Su geografía varía drásticamente desde el desierto del Sahara
-- en el norte, pasando por la árida franja del Sahel en el centro, hasta la
-- sabana sudanesa más fértil en el sur. El Lago Chad, que da nombre al país y
-- del que depende gran parte de la población, ha disminuido drásticamente de
-- tamaño en las últimas décadas.
--
-- Ciudades Principales:
-- * N'Djamena: La capital y ciudad más grande, ubicada en la frontera con Camerún,
--   cerca del Lago Chad.
-- * Moundou: La segunda ciudad más grande, centro industrial en el sur.
-- * Sarh: Tercera ciudad más grande, también en el sur.
-- * Abéché: Principal ciudad en el este, centro histórico del Sultanato de Ouaddaï.
-- * Kélo, Koumra, Pala: Otras ciudades importantes en las regiones del sur.
-- * Faya-Largeau: Principal oasis y centro administrativo en el norte desértico.
-- * La lista incluye también las capitales de la mayoría de las regiones y otras ciudades significativas.
--
-- Un Poco de Historia:
-- La región del Lago Chad fue cuna de importantes estados e imperios africanos,
-- como el Imperio Kanem-Bornu. Francia colonizó el territorio a principios del
-- siglo XX, incorporándolo al África Ecuatorial Francesa. Chad obtuvo la
-- independencia en 1960. Su historia post-independencia ha estado marcada por
-- una prolongada inestabilidad, guerras civiles (especialmente entre el norte
-- musulmán y el sur cristiano/animista), conflictos con Libia, rebeliones y
-- golpes de estado. La familia Déby ha dominado la política durante décadas,
-- primero con Idriss Déby (1990-2021) y luego con su hijo Mahamat Déby.
--
-- Datos Adicionales:
-- Los idiomas oficiales son el francés y el árabe, pero se hablan más de 120
-- lenguas y dialectos locales. El Islam y el Cristianismo son las religiones
-- principales, junto con creencias tradicionales. La economía depende en gran
-- medida de la agricultura, la ganadería y, más recientemente, del petróleo,
-- aunque el país sigue siendo muy pobre y enfrenta graves desafíos humanitarios
-- y de seguridad.
--
*/
