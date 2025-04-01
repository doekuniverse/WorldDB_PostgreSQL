-- SQL Script to insert the main historical parishes and significant areas for Macao (MO).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Macao (MO).

-- NOTE: Macao is very small and densely populated. This list includes the main historical parishes
-- and significant developed areas (Cotai), providing essentially complete coverage of major zones.
-- Postal codes are not used for domestic mail; using '0000' as a placeholder.

-- Inserting parishes/areas for Macao (MO) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Macao Peninsula (Historical Parishes)
('Nossa Senhora de Fátima Parish', (SELECT id FROM world_countries WHERE iso_code_2 = 'MO'), '0000'), -- Northern peninsula, most populous
('Santo António Parish', (SELECT id FROM world_countries WHERE iso_code_2 = 'MO'), '0000'), -- Central-west peninsula
('São Lázaro Parish', (SELECT id FROM world_countries WHERE iso_code_2 = 'MO'), '0000'), -- Central peninsula (smallest parish)
('São Lourenço Parish', (SELECT id FROM world_countries WHERE iso_code_2 = 'MO'), '0000'), -- Southwest peninsula
('Sé Parish', (SELECT id FROM world_countries WHERE iso_code_2 = 'MO'), '0000'), -- Central-east peninsula (includes historic centre)

-- Taipa Island
('Nossa Senhora do Carmo Parish', (SELECT id FROM world_countries WHERE iso_code_2 = 'MO'), '0000'), -- Covers Taipa island

-- Coloane Island
('São Francisco Xavier Parish', (SELECT id FROM world_countries WHERE iso_code_2 = 'MO'), '0000'), -- Covers Coloane island

-- Reclaimed Land Area
('Cotai', (SELECT id FROM world_countries WHERE iso_code_2 = 'MO'), '0000'); -- Reclaimed land between Taipa and Coloane (major casino/hotel area)


-- End of Macao locality list (Main Parishes and Areas)

/*
-- ====================================
-- == Información sobre Macao ==
-- ====================================
--
-- Descripción General:
-- Macao (Macau) es una Región Administrativa Especial (RAE) de la República Popular
-- China, ubicada en la costa sur de China, en el lado occidental del delta del río
-- Perla. Consiste en la península de Macao, y las islas de Taipa y Coloane, que
-- ahora están conectadas por tierra ganada al mar (Cotai). Es extremadamente densa
-- en población y es mundialmente famosa por ser el centro de juego y apuestas más
-- grande del mundo (a menudo llamada "Las Vegas de Asia"). Opera bajo el principio
-- de "un país, dos sistemas".
--
-- Ciudades Principales (Áreas/Parroquias):
-- Macao funciona como una entidad urbana continua. Se divide históricamente en
-- parroquias (freguesias) que ya no tienen funciones administrativas formales, pero
-- sirven como referencias geográficas:
-- * Península de Macao: Contiene el centro histórico (Patrimonio de la Humanidad),
--   la mayoría de la población residencial y áreas como Fátima, Santo António, Sé, etc.
-- * Taipa: Isla conectada por puentes, con áreas residenciales y algunos casinos/hoteles.
-- * Coloane: Isla más al sur, más verde y menos desarrollada, con playas y parques.
-- * Cotai: La franja de tierra ganada al mar entre Taipa y Coloane, donde se
--   concentran los megaresorts y casinos más nuevos y grandes.
--
-- Un Poco de Historia:
-- Fue establecida como un puesto comercial portugués a mediados del siglo XVI,
-- convirtiéndose en la primera y última colonia europea en China. Sirvió como un
-- importante centro para el comercio entre China, Japón y Europa. Portugal administró
-- el territorio hasta 1999, cuando la soberanía fue transferida a China bajo los
-- términos de la Declaración Conjunta Sino-Portuguesa, estableciendo el marco de
-- "un país, dos sistemas" por 50 años. Tras la transferencia y la liberalización
-- de la industria del juego, Macao experimentó un crecimiento económico explosivo
-- impulsado por los casinos, superando a Las Vegas en ingresos por juego.
--
-- Datos Adicionales:
-- Los idiomas oficiales son el chino (cantonés es el habla predominante) y el
-- portugués, aunque el portugués es hablado por una pequeña minoría. La pataca de
-- Macao (MOP) es la moneda oficial, vinculada al dólar de Hong Kong. El centro
-- histórico de Macao es Patrimonio de la Humanidad por la UNESCO, mostrando una
-- mezcla única de arquitectura portuguesa y china. La gastronomía macaense también
-- refleja esta fusión cultural.
--
*/
