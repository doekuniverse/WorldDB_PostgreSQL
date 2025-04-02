-- SQL Script to insert a representative sample of significant cities and towns for Guinea-Bissau (GW).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Guinea-Bissau (GW).

-- NOTE: This list includes the capital, regional capitals, and significant towns/sector capitals.
-- Listing every single village (tabanca) is IMPOSSIBLE.
-- Postal codes are not used; using '0000' as a placeholder.

-- Inserting cities for Guinea-Bissau (GW) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Regional Capitals / Major Towns
('Bissau', (SELECT id FROM world_countries WHERE iso_code_2 = 'GW'), '0000'), -- National Capital (Bissau Autonomous Sector)
('Bafatá', (SELECT id FROM world_countries WHERE iso_code_2 = 'GW'), '0000'), -- Bafatá Region Capital
('Gabú', (SELECT id FROM world_countries WHERE iso_code_2 = 'GW'), '0000'), -- Gabú Region Capital
('Bissorã', (SELECT id FROM world_countries WHERE iso_code_2 = 'GW'), '0000'), -- Oio Region (Major town)
('Bolama', (SELECT id FROM world_countries WHERE iso_code_2 = 'GW'), '0000'), -- Bolama Region Capital (Former national capital)
('Cacheu', (SELECT id FROM world_countries WHERE iso_code_2 = 'GW'), '0000'), -- Cacheu Region Capital
('Buba', (SELECT id FROM world_countries WHERE iso_code_2 = 'GW'), '0000'), -- Quinara Region Capital
('Catió', (SELECT id FROM world_countries WHERE iso_code_2 = 'GW'), '0000'), -- Tombali Region Capital
('Farim', (SELECT id FROM world_countries WHERE iso_code_2 = 'GW'), '0000'), -- Oio Region Capital

-- Other Significant Towns / Sector Capitals (Sample)
('Canchungo', (SELECT id FROM world_countries WHERE iso_code_2 = 'GW'), '0000'), -- Cacheu Region
('Mansôa', (SELECT id FROM world_countries WHERE iso_code_2 = 'GW'), '0000'), -- Oio Region
('Bubaque', (SELECT id FROM world_countries WHERE iso_code_2 = 'GW'), '0000'), -- Bolama Region (Bijagós Islands)
('Fulacunda', (SELECT id FROM world_countries WHERE iso_code_2 = 'GW'), '0000'), -- Quinara Region
('Quebo', (SELECT id FROM world_countries WHERE iso_code_2 = 'GW'), '0000'), -- Tombali Region
('Pirada', (SELECT id FROM world_countries WHERE iso_code_2 = 'GW'), '0000'), -- Gabú Region
('Pitche', (SELECT id FROM world_countries WHERE iso_code_2 = 'GW'), '0000'), -- Gabú Region
('Bigene', (SELECT id FROM world_countries WHERE iso_code_2 = 'GW'), '0000'), -- Cacheu Region
('São Domingos', (SELECT id FROM world_countries WHERE iso_code_2 = 'GW'), '0000'), -- Cacheu Region (Border town with Senegal)
('Ingoré', (SELECT id FROM world_countries WHERE iso_code_2 = 'GW'), '0000'); -- Oio Region

-- End of Guinea-Bissau city list (Representative Sample)

/*
-- ========================================
-- == Información sobre Guinea-Bissau ==
-- ========================================
--
-- Descripción General:
-- La República de Guinea-Bisáu es un país ubicado en África Occidental. Limita con
-- Senegal al norte, Guinea al sur y este, y el Océano Atlántico al oeste. El país
-- incluye el territorio continental y el Archipiélago de Bijagós, un grupo de unas
-- 88 islas e islotes frente a la costa. Es un país de baja altitud, con una costa
-- recortada por estuarios y manglares.
--
-- Ciudades Principales:
-- * Bisáu (Bissau): La capital, ciudad más grande y principal puerto, ubicada en el
--   estuario del río Geba. Alberga una parte significativa de la población.
-- * Bafatá y Gabú: Las segundas ciudades más grandes, centros regionales en el este.
-- * Bissorã, Bolama (antigua capital colonial), Cacheu, Buba, Catió, Farim: Capitales
--   de las demás regiones administrativas.
-- * Canchungo y Mansôa: Otros pueblos importantes.
-- * Bubaque: Principal asentamiento en el Archipiélago de Bijagós.
--
-- Un Poco de Historia:
-- La región formó parte del reino de Kaabu (vasallo del Imperio de Malí) y otros
-- estados locales. Los portugueses llegaron en el siglo XV y establecieron puestos
-- comerciales, principalmente para el comercio de esclavos (Cacheu fue un importante
-- centro). El control portugués sobre el interior fue limitado hasta finales del
-- siglo XIX. El territorio se conoció como Guinea Portuguesa. En la década de 1950,
-- surgió el Partido Africano para la Independencia de Guinea y Cabo Verde (PAIGC),
-- liderado por Amílcar Cabral, que inició una guerra de guerrillas por la independencia.
-- Guinea-Bisáu declaró unilateralmente la independencia en 1973 (reconocida por
-- Portugal en 1974 tras la Revolución de los Claveles). Los planes iniciales de
-- unificación con Cabo Verde fueron abandonados tras un golpe de estado en Guinea-Bisáu
-- en 1980. La historia post-independencia ha estado marcada por una crónica
-- inestabilidad política, con numerosos golpes de estado, intentos de golpe y periodos
-- de conflicto civil. El país también ha sido afectado por el narcotráfico
-- internacional, sirviendo como punto de tránsito.
--
-- Datos Adicionales:
-- El portugués es el idioma oficial, pero el criollo de Guinea-Bisáu (Kriol, basado
-- en el portugués) es la lengua franca más hablada. Se hablan también varias lenguas
-- africanas. La población es étnicamente diversa (Fula, Balanta, Mandinga, etc.).
-- Las religiones principales son el Islam, el Cristianismo y las creencias tradicionales.
-- La economía se basa en la agricultura (anacardos - principal exportación), la pesca
-- y la ayuda exterior. Es uno de los países más pobres del mundo. El Archipiélago de
-- Bijagós es Reserva de la Biosfera de la UNESCO, conocido por su biodiversidad y
-- cultura únicas (incluyendo hipopótamos de agua salada).
--
*/
