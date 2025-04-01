-- SQL Script to insert a representative sample of significant cities and towns for Laos (LA).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Laos (LA).

-- NOTE: Laos is mountainous with many villages (ban). This list includes the capital, provincial capitals,
-- and significant towns/district centers. Listing every single village is IMPOSSIBLE.
-- Postal codes are not used; using '0000' as a placeholder.

-- Inserting cities for Laos (LA) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Provincial Capitals / Major Towns
('Vientiane', (SELECT id FROM world_countries WHERE iso_code_2 = 'LA'), '0000'), -- National Capital (Vientiane Prefecture)
('Pakse', (SELECT id FROM world_countries WHERE iso_code_2 = 'LA'), '0000'), -- Champasak Province Capital
('Savannakhet', (SELECT id FROM world_countries WHERE iso_code_2 = 'LA'), '0000'), -- Savannakhet Province Capital (Kaysone Phomvihane town)
('Luang Prabang', (SELECT id FROM world_countries WHERE iso_code_2 = 'LA'), '0000'), -- Luang Prabang Province Capital (UNESCO site)
('Xam Neua', (SELECT id FROM world_countries WHERE iso_code_2 = 'LA'), '0000'), -- Houaphanh Province Capital
('Phonsavan', (SELECT id FROM world_countries WHERE iso_code_2 = 'LA'), '0000'), -- Xiangkhouang Province Capital (Near Plain of Jars)
('Thakhek', (SELECT id FROM world_countries WHERE iso_code_2 = 'LA'), '0000'), -- Khammouane Province Capital
('Muang Xay (Oudomxay)', (SELECT id FROM world_countries WHERE iso_code_2 = 'LA'), '0000'), -- Oudomxay Province Capital
('Luang Namtha', (SELECT id FROM world_countries WHERE iso_code_2 = 'LA'), '0000'), -- Luang Namtha Province Capital
('Phongsali', (SELECT id FROM world_countries WHERE iso_code_2 = 'LA'), '0000'), -- Phongsali Province Capital
('Sainyabuli (Xaignabouli)', (SELECT id FROM world_countries WHERE iso_code_2 = 'LA'), '0000'), -- Sainyabuli Province Capital
('Saravane (Salavan)', (SELECT id FROM world_countries WHERE iso_code_2 = 'LA'), '0000'), -- Saravane Province Capital
('Sekong', (SELECT id FROM world_countries WHERE iso_code_2 = 'LA'), '0000'), -- Sekong Province Capital
('Attapeu', (SELECT id FROM world_countries WHERE iso_code_2 = 'LA'), '0000'), -- Attapeu Province Capital
('Ban Houayxay', (SELECT id FROM world_countries WHERE iso_code_2 = 'LA'), '0000'), -- Bokeo Province Capital
('Pakxan', (SELECT id FROM world_countries WHERE iso_code_2 = 'LA'), '0000'), -- Bolikhamsai Province Capital
('Anouvong', (SELECT id FROM world_countries WHERE iso_code_2 = 'LA'), '0000'), -- Xaisomboun Province Capital
('Phonhong', (SELECT id FROM world_countries WHERE iso_code_2 = 'LA'), '0000'), -- Vientiane Province Capital

-- Other Significant Towns (Sample)
('Vang Vieng', (SELECT id FROM world_countries WHERE iso_code_2 = 'LA'), '0000'), -- Vientiane Province (Tourist town)
('Muang Sing', (SELECT id FROM world_countries WHERE iso_code_2 = 'LA'), '0000'), -- Luang Namtha Province
('Muang Khoun', (SELECT id FROM world_countries WHERE iso_code_2 = 'LA'), '0000'), -- Xiangkhouang Province (Old capital)
('Muang Phin', (SELECT id FROM world_countries WHERE iso_code_2 = 'LA'), '0000'), -- Savannakhet Province
('Don Det / Don Khon', (SELECT id FROM world_countries WHERE iso_code_2 = 'LA'), '0000'); -- Champasak Province (Si Phan Don / 4000 Islands area)

-- End of Laos city list (Representative Sample)

/*
-- ==================================================================
-- == Información sobre Lao People's Democratic Republic (Laos) ==
-- ==================================================================
--
-- Descripción General:
-- Laos, oficialmente República Democrática Popular Lao, es el único país sin salida
-- al mar del Sudeste Asiático. Limita con Myanmar y China al noroeste, Vietnam al
-- este, Camboya al sureste y Tailandia al oeste y suroeste. Es un país mayormente
-- montañoso y cubierto de bosques, atravesado por el río Mekong, que forma una
-- parte importante de su frontera occidental y es una vía de comunicación vital.
-- Es un estado socialista de partido único.
--
-- Ciudades Principales:
-- * Vientián (Vientiane): La capital y ciudad más grande, ubicada en el valle del
--   Mekong, cerca de la frontera con Tailandia.
-- * Pakse: Principal ciudad del sur, centro económico en la confluencia de los ríos
--   Mekong y Xe Don.
-- * Savannakhet (actualmente Kaysone Phomvihane): Segunda ciudad más grande, centro
--   comercial en el centro del país.
-- * Luang Prabang: Antigua capital real, famosa por sus templos budistas y
--   arquitectura colonial francesa (Patrimonio de la Humanidad por la UNESCO).
-- * Xam Neua, Phonsavan, Thakhek, Muang Xay, Luang Namtha: Otras capitales provinciales
--   importantes. Phonsavan es la puerta de entrada a la Llanura de las Jarras.
-- * La lista incluye también las capitales de todas las provincias y otros pueblos significativos.
--
-- Un Poco de Historia:
-- La región fue centro del reino de Lan Xang ("Tierra del Millón de Elefantes")
-- entre los siglos XIV y XVIII, uno de los reinos más grandes del Sudeste Asiático.
-- Posteriormente se fragmentó y cayó bajo influencia siamesa (tailandesa) y
-- vietnamita. A finales del siglo XIX, fue incorporada a la Indochina Francesa.
-- Obtuvo la independencia en 1953 como una monarquía constitucional. El país se vio
-- envuelto en la Guerra Civil Laosiana (parte de la Guerra de Vietnam), sufriendo
-- intensos bombardeos estadounidenses (convirtiéndose en el país más bombardeado
-- per cápita de la historia). En 1975, el movimiento comunista Pathet Lao tomó el
-- poder y estableció la República Democrática Popular Lao. Desde finales de los 80,
-- ha implementado reformas económicas orientadas al mercado, aunque el Partido
-- Popular Revolucionario Lao mantiene el monopolio del poder político.
--
-- Datos Adicionales:
-- El lao es el idioma oficial (muy similar al tailandés). El budismo Theravada es
-- la religión predominante. Laos es étnicamente diverso, con numerosos grupos
-- minoritarios en las zonas montañosas. La economía se basa en la agricultura, la
-- generación hidroeléctrica y, crecientemente, el turismo y la minería. La Llanura
-- de las Jarras (Plain of Jars) es un famoso sitio arqueológico megalítico.
--
*/
