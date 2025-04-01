-- SQL Script to insert a representative sample of significant cities and municipalities for Honduras (HN).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Honduras (HN).

-- NOTE: Honduras has many municipalities and smaller settlements. This list includes the capital,
-- departmental capitals, and a broad sample of major cities and significant municipalities.
-- Listing every single locality (aldea, caserío) is IMPOSSIBLE.
-- Postal codes are not consistently used; using '0000' as a placeholder.

-- Inserting cities for Honduras (HN) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Departmental Capitals / Major Cities
('Tegucigalpa', (SELECT id FROM world_countries WHERE iso_code_2 = 'HN'), '0000'), -- National Capital (Distrito Central, Francisco Morazán Dept.)
('San Pedro Sula', (SELECT id FROM world_countries WHERE iso_code_2 = 'HN'), '0000'), -- Cortés Dept. (Major industrial city)
('Choloma', (SELECT id FROM world_countries WHERE iso_code_2 = 'HN'), '0000'), -- Cortés Dept. (Major city)
('La Ceiba', (SELECT id FROM world_countries WHERE iso_code_2 = 'HN'), '0000'), -- Atlántida Dept. Capital
('El Progreso', (SELECT id FROM world_countries WHERE iso_code_2 = 'HN'), '0000'), -- Yoro Dept. (Major city)
('Choluteca', (SELECT id FROM world_countries WHERE iso_code_2 = 'HN'), '0000'), -- Choluteca Dept. Capital
('Comayagua', (SELECT id FROM world_countries WHERE iso_code_2 = 'HN'), '0000'), -- Comayagua Dept. Capital (Former national capital)
('Puerto Cortés', (SELECT id FROM world_countries WHERE iso_code_2 = 'HN'), '0000'), -- Cortés Dept. (Major port)
('La Lima', (SELECT id FROM world_countries WHERE iso_code_2 = 'HN'), '0000'), -- Cortés Dept.
('Danlí', (SELECT id FROM world_countries WHERE iso_code_2 = 'HN'), '0000'), -- El Paraíso Dept. (Major city)
('Siguatepeque', (SELECT id FROM world_countries WHERE iso_code_2 = 'HN'), '0000'), -- Comayagua Dept.
('Juticalpa', (SELECT id FROM world_countries WHERE iso_code_2 = 'HN'), '0000'), -- Olancho Dept. Capital
('Catacamas', (SELECT id FROM world_countries WHERE iso_code_2 = 'HN'), '0000'), -- Olancho Dept.
('Tocoa', (SELECT id FROM world_countries WHERE iso_code_2 = 'HN'), '0000'), -- Colón Dept. (Major town)
('Villanueva', (SELECT id FROM world_countries WHERE iso_code_2 = 'HN'), '0000'), -- Cortés Dept.
('Tela', (SELECT id FROM world_countries WHERE iso_code_2 = 'HN'), '0000'), -- Atlántida Dept. (Coastal town)
('Santa Rosa de Copán', (SELECT id FROM world_countries WHERE iso_code_2 = 'HN'), '0000'), -- Copán Dept. Capital
('Ocotepeque', (SELECT id FROM world_countries WHERE iso_code_2 = 'HN'), '0000'), -- Ocotepeque Dept. Capital (Nueva Ocotepeque town)
('San Lorenzo', (SELECT id FROM world_countries WHERE iso_code_2 = 'HN'), '0000'), -- Valle Dept. (Pacific port)
('Nacaome', (SELECT id FROM world_countries WHERE iso_code_2 = 'HN'), '0000'), -- Valle Dept. Capital
('Yuscarán', (SELECT id FROM world_countries WHERE iso_code_2 = 'HN'), '0000'), -- El Paraíso Dept. Capital
('Santa Bárbara', (SELECT id FROM world_countries WHERE iso_code_2 = 'HN'), '0000'), -- Santa Bárbara Dept. Capital
('Gracias', (SELECT id FROM world_countries WHERE iso_code_2 = 'HN'), '0000'), -- Lempira Dept. Capital
('La Esperanza', (SELECT id FROM world_countries WHERE iso_code_2 = 'HN'), '0000'), -- Intibucá Dept. Capital (Twin town with Intibucá)
('La Paz', (SELECT id FROM world_countries WHERE iso_code_2 = 'HN'), '0000'), -- La Paz Dept. Capital
('Trujillo', (SELECT id FROM world_countries WHERE iso_code_2 = 'HN'), '0000'), -- Colón Dept. Capital (Historic port)
('Roatán', (SELECT id FROM world_countries WHERE iso_code_2 = 'HN'), '0000'), -- Islas de la Bahía Dept. Capital (on Roatán island)
('Puerto Lempira', (SELECT id FROM world_countries WHERE iso_code_2 = 'HN'), '0000'), -- Gracias a Dios Dept. Capital

-- Other Significant Towns (Sample)
('Olanchito', (SELECT id FROM world_countries WHERE iso_code_2 = 'HN'), '0000'), -- Yoro Dept.
('Yoro', (SELECT id FROM world_countries WHERE iso_code_2 = 'HN'), '0000'), -- Yoro Dept. Capital
('Talanga', (SELECT id FROM world_countries WHERE iso_code_2 = 'HN'), '0000'), -- Francisco Morazán Dept.
('Cofradía', (SELECT id FROM world_countries WHERE iso_code_2 = 'HN'), '0000'), -- Cortés Dept.
('El Paraíso', (SELECT id FROM world_countries WHERE iso_code_2 = 'HN'), '0000'); -- El Paraíso Dept. (Town near border)

-- End of Honduras city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Honduras ==
-- ====================================
--
-- Descripción General:
-- Honduras es un país ubicado en América Central. Limita con Guatemala al oeste,
-- El Salvador al suroeste, Nicaragua al sureste, el Océano Pacífico (Golfo de
-- Fonseca) al sur y el Mar Caribe al norte. Su territorio es mayormente montañoso
-- en el interior, con estrechas llanuras costeras. Posee varias islas en el Caribe,
-- destacando las Islas de la Bahía (Roatán, Utila, Guanaja), un popular destino
-- de buceo.
--
-- Ciudades Principales:
-- * Tegucigalpa: La capital (junto con su ciudad gemela Comayagüela, forman el
--   Distrito Central) y ciudad más grande, ubicada en una zona montañosa del interior.
-- * San Pedro Sula: La segunda ciudad más grande, principal centro industrial y
--   comercial, ubicada en el valle de Sula, cerca de la costa norte.
-- * Choloma y La Lima: Importantes ciudades que forman parte del área metropolitana
--   de San Pedro Sula.
-- * La Ceiba: Tercera ciudad más grande, importante puerto en la costa caribeña.
-- * El Progreso: Ciudad importante en el valle de Sula.
-- * Choluteca: Principal ciudad en la región sur.
-- * Comayagua: Antigua capital de Honduras.
-- * La lista incluye también las capitales de todos los departamentos y otras ciudades significativas.
--
-- Un Poco de Historia:
-- La región fue hogar de la civilización Maya, especialmente en Copán (Patrimonio
-- de la Humanidad). Fue explorada por Colón en 1502 y colonizada por España. Formó
-- parte de la Capitanía General de Guatemala. Se independizó de España en 1821 y
-- formó parte brevemente del Imperio Mexicano y luego de la República Federal de
-- Centroamérica, antes de convertirse en una república independiente en 1838. La
-- historia hondureña ha estado marcada por una gran inestabilidad política,
-- frecuentes golpes de estado, intervenciones extranjeras (especialmente de EE.UU.)
-- y el dominio económico de compañías bananeras estadounidenses (acuñando el término
-- "república bananera"). Experimentó una guerra breve con El Salvador en 1969
-- ("Guerra del Fútbol"). La democracia se restauró en la década de 1980, pero el
-- país ha seguido enfrentando desafíos como la pobreza, la violencia (incluyendo
-- pandillas o maras) y la inestabilidad política (golpe de estado de 2009).
--
-- Datos Adicionales:
-- El español es el idioma oficial. Las ruinas mayas de Copán son un sitio arqueológico
-- de gran importancia. Las Islas de la Bahía son un destino turístico popular para
-- el buceo y el snorkel. El café y el banano son productos de exportación importantes.
--
*/
