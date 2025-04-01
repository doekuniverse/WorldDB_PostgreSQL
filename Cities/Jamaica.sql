-- SQL Script to insert a representative sample of significant cities and towns for Jamaica (JM).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Jamaica (JM).

-- NOTE: This list includes the capital, parish capitals, and a broad sample of major cities
-- and significant towns. Listing every single locality is IMPOSSIBLE.
-- Postal codes are not generally used for addressing; using '0000' as a placeholder.

-- Inserting cities for Jamaica (JM) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Parish Capitals / Major Towns
('Kingston', (SELECT id FROM world_countries WHERE iso_code_2 = 'JM'), '0000'), -- National Capital (Kingston Parish / St. Andrew Parish)
('Montego Bay', (SELECT id FROM world_countries WHERE iso_code_2 = 'JM'), '0000'), -- Saint James Parish Capital (Major tourist city)
('Spanish Town', (SELECT id FROM world_countries WHERE iso_code_2 = 'JM'), '0000'), -- Saint Catherine Parish Capital (Former capital)
('Mandeville', (SELECT id FROM world_countries WHERE iso_code_2 = 'JM'), '0000'), -- Manchester Parish Capital
('May Pen', (SELECT id FROM world_countries WHERE iso_code_2 = 'JM'), '0000'), -- Clarendon Parish Capital
('Port Antonio', (SELECT id FROM world_countries WHERE iso_code_2 = 'JM'), '0000'), -- Portland Parish Capital
('Saint Ann''s Bay', (SELECT id FROM world_countries WHERE iso_code_2 = 'JM'), '0000'), -- Saint Ann Parish Capital
('Savanna-la-Mar', (SELECT id FROM world_countries WHERE iso_code_2 = 'JM'), '0000'), -- Westmoreland Parish Capital
('Lucea', (SELECT id FROM world_countries WHERE iso_code_2 = 'JM'), '0000'), -- Hanover Parish Capital
('Black River', (SELECT id FROM world_countries WHERE iso_code_2 = 'JM'), '0000'), -- Saint Elizabeth Parish Capital
('Morant Bay', (SELECT id FROM world_countries WHERE iso_code_2 = 'JM'), '0000'), -- Saint Thomas Parish Capital
('Port Maria', (SELECT id FROM world_countries WHERE iso_code_2 = 'JM'), '0000'), -- Saint Mary Parish Capital
('Falmouth', (SELECT id FROM world_countries WHERE iso_code_2 = 'JM'), '0000'), -- Trelawny Parish Capital

-- Other Significant Towns (Sample)
('Portmore', (SELECT id FROM world_countries WHERE iso_code_2 = 'JM'), '0000'), -- Saint Catherine Parish (Large residential area near Kingston)
('Ocho Rios', (SELECT id FROM world_countries WHERE iso_code_2 = 'JM'), '0000'), -- Saint Ann Parish (Major tourist town)
('Negril', (SELECT id FROM world_countries WHERE iso_code_2 = 'JM'), '0000'), -- Westmoreland/Hanover Parishes (Major tourist town)
('Linstead', (SELECT id FROM world_countries WHERE iso_code_2 = 'JM'), '0000'), -- Saint Catherine Parish
('Old Harbour', (SELECT id FROM world_countries WHERE iso_code_2 = 'JM'), '0000'), -- Saint Catherine Parish
('Half Way Tree', (SELECT id FROM world_countries WHERE iso_code_2 = 'JM'), '0000'), -- St. Andrew Parish (Major commercial center in Kingston metro)
('Constant Spring', (SELECT id FROM world_countries WHERE iso_code_2 = 'JM'), '0000'), -- St. Andrew Parish (Kingston metro)
('Brown''s Town', (SELECT id FROM world_countries WHERE iso_code_2 = 'JM'), '0000'), -- Saint Ann Parish
('Christiana', (SELECT id FROM world_countries WHERE iso_code_2 = 'JM'), '0000'), -- Manchester Parish
('Santa Cruz', (SELECT id FROM world_countries WHERE iso_code_2 = 'JM'), '0000'), -- Saint Elizabeth Parish
('Bog Walk', (SELECT id FROM world_countries WHERE iso_code_2 = 'JM'), '0000'), -- Saint Catherine Parish
('Yallahs', (SELECT id FROM world_countries WHERE iso_code_2 = 'JM'), '0000'); -- Saint Thomas Parish

-- End of Jamaica city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Jamaica ==
-- ====================================
--
-- Descripción General:
-- Jamaica es un país insular situado en el Mar Caribe, perteneciente a las Antillas
-- Mayores. Se encuentra al sur de Cuba y al oeste de la isla La Española (Haití y
-- República Dominicana). Es la tercera isla más grande de las Antillas Mayores. Su
-- interior es montañoso (destacando las Blue Mountains), rodeado por una estrecha
-- llanura costera. Es conocida por su vibrante cultura, especialmente la música
-- reggae, sus playas y su belleza natural.
--
-- Ciudades Principales:
-- * Kingston: La capital y ciudad más grande, ubicada en la costa sureste. Es el
--   centro financiero, cultural y comercial del país, con un importante puerto natural.
-- * Montego Bay: La segunda ciudad más grande, principal centro turístico en la
--   costa noroeste, sede del aeropuerto internacional más transitado.
-- * Spanish Town: Antigua capital bajo dominio español y luego británico, ubicada
--   cerca de Kingston.
-- * Portmore: Gran área residencial y urbana cerca de Kingston.
-- * Mandeville, May Pen, Ocho Rios, Negril: Otros importantes centros urbanos o turísticos.
-- * La lista incluye también las capitales de todas las parroquias (parishes).
--
-- Un Poco de Historia:
-- Habitada por los pueblos indígenas Taíno (Arawak). Fue avistada por Colón en 1494
-- y colonizada por España (llamada Santiago). En 1655 fue capturada por Inglaterra
-- y se convirtió en una colonia británica clave, con una economía basada en la caña
-- de azúcar y una gran población de esclavos africanos. Fue también un notorio refugio
-- de piratas (Port Royal). Tras la abolición de la esclavitud, llegaron trabajadores
-- contratados de India y China. Jamaica obtuvo la independencia del Reino Unido en
-- 1962, permaneciendo dentro de la Commonwealth. La historia post-independencia ha
-- estado marcada por desafíos económicos y sociales, pero también por una fuerte
-- influencia cultural a nivel mundial.
--
-- Datos Adicionales:
-- El inglés es el idioma oficial, pero el patois jamaicano (un criollo basado en el
-- inglés) es ampliamente hablado. Jamaica es mundialmente famosa por la música reggae
-- (Bob Marley es un icono nacional), el movimiento rastafari, el café Blue Mountain
-- y sus atletas (especialmente velocistas como Usain Bolt). El turismo es una de
-- las principales fuentes de ingresos.
--
*/
