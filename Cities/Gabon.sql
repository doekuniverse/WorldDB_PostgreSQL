-- SQL Script to insert a representative sample of significant cities and towns for Gabon (GA).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Gabon (GA).

-- NOTE: Gabon is largely rainforest and sparsely populated outside main centers. This list includes the capital,
-- provincial capitals, and significant towns. Listing every single village is IMPOSSIBLE.
-- Postal codes are not used; using '0000' as a placeholder.

-- Inserting cities for Gabon (GA) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Provincial Capitals / Major Towns
('Libreville', (SELECT id FROM world_countries WHERE iso_code_2 = 'GA'), '0000'), -- National Capital (Estuaire Province Capital)
('Port-Gentil', (SELECT id FROM world_countries WHERE iso_code_2 = 'GA'), '0000'), -- Ogooué-Maritime Province Capital (Economic hub)
('Franceville', (SELECT id FROM world_countries WHERE iso_code_2 = 'GA'), '0000'), -- Haut-Ogooué Province Capital
('Oyem', (SELECT id FROM world_countries WHERE iso_code_2 = 'GA'), '0000'), -- Woleu-Ntem Province Capital
('Moanda', (SELECT id FROM world_countries WHERE iso_code_2 = 'GA'), '0000'), -- Haut-Ogooué Province (Major mining town)
('Mouila', (SELECT id FROM world_countries WHERE iso_code_2 = 'GA'), '0000'), -- Ngounié Province Capital
('Lambaréné', (SELECT id FROM world_countries WHERE iso_code_2 = 'GA'), '0000'), -- Moyen-Ogooué Province Capital (Schweitzer Hospital)
('Tchibanga', (SELECT id FROM world_countries WHERE iso_code_2 = 'GA'), '0000'), -- Nyanga Province Capital
('Koulamoutou', (SELECT id FROM world_countries WHERE iso_code_2 = 'GA'), '0000'), -- Ogooué-Lolo Province Capital
('Makokou', (SELECT id FROM world_countries WHERE iso_code_2 = 'GA'), '0000'), -- Ogooué-Ivindo Province Capital

-- Other Significant Towns (Sample)
('Ntoum', (SELECT id FROM world_countries WHERE iso_code_2 = 'GA'), '0000'), -- Estuaire Province (Near Libreville)
('Bitam', (SELECT id FROM world_countries WHERE iso_code_2 = 'GA'), '0000'), -- Woleu-Ntem Province
('Gamba', (SELECT id FROM world_countries WHERE iso_code_2 = 'GA'), '0000'), -- Ogooué-Maritime Province (Oil town)
('Ndjolé', (SELECT id FROM world_countries WHERE iso_code_2 = 'GA'), '0000'), -- Moyen-Ogooué Province
('Lastoursville', (SELECT id FROM world_countries WHERE iso_code_2 = 'GA'), '0000'), -- Ogooué-Lolo Province
('Okondja', (SELECT id FROM world_countries WHERE iso_code_2 = 'GA'), '0000'), -- Haut-Ogooué Province
('Mitzic', (SELECT id FROM world_countries WHERE iso_code_2 = 'GA'), '0000'), -- Woleu-Ntem Province
('Léconi', (SELECT id FROM world_countries WHERE iso_code_2 = 'GA'), '0000'), -- Haut-Ogooué Province
('Fougamou', (SELECT id FROM world_countries WHERE iso_code_2 = 'GA'), '0000'), -- Ngounié Province
('Booué', (SELECT id FROM world_countries WHERE iso_code_2 = 'GA'), '0000'); -- Ogooué-Ivindo Province

-- End of Gabon city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Gabon ==
-- ====================================
--
-- Descripción General:
-- Gabón es un país ubicado en la costa atlántica de África Central, atravesado por
-- el ecuador. Limita con Guinea Ecuatorial y Camerún al norte, y la República del
-- Congo al este y sur. Aproximadamente el 85% de su territorio está cubierto por
-- densa selva tropical. A pesar de ser rico en recursos naturales (especialmente
-- petróleo, manganeso y madera), y tener una de las rentas per cápita más altas
-- de África subsahariana, la riqueza está distribuida de manera muy desigual. Tiene
-- una baja densidad de población.
--
-- Ciudades Principales:
-- * Libreville: La capital y ciudad más grande, ubicada en la costa norte.
-- * Port-Gentil: La segunda ciudad más grande y principal centro de la industria
--   petrolera y maderera, ubicada en una isla costera.
-- * Franceville: Tercera ciudad, importante centro en el sureste.
-- * Oyem: Principal ciudad en el norte.
-- * Moanda: Importante centro minero (manganeso).
-- * Lambaréné: Conocida por el hospital fundado por Albert Schweitzer.
-- * La lista incluye también las demás capitales provinciales.
--
-- Un Poco de Historia:
-- Habitada por pueblos pigmeos y luego por grupos bantúes. Los portugueses llegaron
-- en el siglo XV. Francia estableció un protectorado en el siglo XIX y se convirtió
-- en parte del África Ecuatorial Francesa. Obtuvo la independencia en 1960. La
-- política post-independencia estuvo dominada durante más de 40 años por Omar
-- Bongo Ondimba (1967-2009), sucedido por su hijo, Ali Bongo Ondimba, hasta un
-- golpe de estado en 2023. La economía ha dependido fuertemente del petróleo desde
-- los años 70.
--
-- Datos Adicionales:
-- El francés es el idioma oficial, pero se hablan numerosas lenguas bantúes. Gabón
-- ha destinado una parte significativa de su territorio a parques nacionales para
-- proteger su rica biodiversidad (incluyendo gorilas, chimpancés, elefantes de
-- bosque).
--
*/
