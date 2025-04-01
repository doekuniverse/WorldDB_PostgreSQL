-- SQL Script to insert a representative sample of significant cities and towns for Sri Lanka (LK).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Sri Lanka (LK).

-- NOTE: Sri Lanka has numerous localities. This list includes the capitals, provincial/district capitals,
-- major cities, and significant towns. Listing every single village is IMPOSSIBLE.
-- Postal codes are 5 digits; examples or '00000' placeholder are provided.

-- Inserting cities for Sri Lanka (LK) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capitals & Provincial Capitals / Major Cities / District Capitals
('Colombo', (SELECT id FROM world_countries WHERE iso_code_2 = 'LK'), '00100'), -- Commercial Capital, Largest City (Western Province)
('Sri Jayawardenepura Kotte', (SELECT id FROM world_countries WHERE iso_code_2 = 'LK'), '10100'), -- Administrative Capital (Western Province)
('Kandy', (SELECT id FROM world_countries WHERE iso_code_2 = 'LK'), '20000'), -- Central Province Capital
('Galle', (SELECT id FROM world_countries WHERE iso_code_2 = 'LK'), '80000'), -- Southern Province Capital
('Jaffna', (SELECT id FROM world_countries WHERE iso_code_2 = 'LK'), '40000'), -- Northern Province Capital
('Trincomalee', (SELECT id FROM world_countries WHERE iso_code_2 = 'LK'), '31000'), -- Eastern Province Capital
('Anuradhapura', (SELECT id FROM world_countries WHERE iso_code_2 = 'LK'), '50000'), -- North Central Province Capital (UNESCO site)
('Ratnapura', (SELECT id FROM world_countries WHERE iso_code_2 = 'LK'), '70000'), -- Sabaragamuwa Province Capital
('Kurunegala', (SELECT id FROM world_countries WHERE iso_code_2 = 'LK'), '60000'), -- North Western Province Capital
('Badulla', (SELECT id FROM world_countries WHERE iso_code_2 = 'LK'), '90000'), -- Uva Province Capital

-- Other Major Cities / District Capitals / Significant Towns (Sample)
('Dehiwala-Mount Lavinia', (SELECT id FROM world_countries WHERE iso_code_2 = 'LK'), '00000'), -- Western Province (Colombo Metro)
('Moratuwa', (SELECT id FROM world_countries WHERE iso_code_2 = 'LK'), '10400'), -- Western Province (Colombo Metro)
('Negombo', (SELECT id FROM world_countries WHERE iso_code_2 = 'LK'), '11500'), -- Western Province (Gampaha District)
('Matara', (SELECT id FROM world_countries WHERE iso_code_2 = 'LK'), '81000'), -- Southern Province (Matara District Capital)
('Batticaloa', (SELECT id FROM world_countries WHERE iso_code_2 = 'LK'), '30000'), -- Eastern Province (Batticaloa District Capital)
('Gampaha', (SELECT id FROM world_countries WHERE iso_code_2 = 'LK'), '11000'), -- Western Province (Gampaha District Capital)
('Kalutara', (SELECT id FROM world_countries WHERE iso_code_2 = 'LK'), '12000'), -- Western Province (Kalutara District Capital)
('Mannar', (SELECT id FROM world_countries WHERE iso_code_2 = 'LK'), '41000'), -- Northern Province (Mannar District Capital)
('Vavuniya', (SELECT id FROM world_countries WHERE iso_code_2 = 'LK'), '43000'), -- Northern Province (Vavuniya District Capital)
('Puttalam', (SELECT id FROM world_countries WHERE iso_code_2 = 'LK'), '61300'), -- North Western Province (Puttalam District Capital)
('Ampara', (SELECT id FROM world_countries WHERE iso_code_2 = 'LK'), '32000'), -- Eastern Province (Ampara District Capital)
('Hambantota', (SELECT id FROM world_countries WHERE iso_code_2 = 'LK'), '82000'), -- Southern Province (Hambantota District Capital)
('Kegalle', (SELECT id FROM world_countries WHERE iso_code_2 = 'LK'), '71000'), -- Sabaragamuwa Province (Kegalle District Capital)
('Nuwara Eliya', (SELECT id FROM world_countries WHERE iso_code_2 = 'LK'), '22200'), -- Central Province (Nuwara Eliya District Capital)
('Polonnaruwa', (SELECT id FROM world_countries WHERE iso_code_2 = 'LK'), '51000'), -- North Central Province (Polonnaruwa District Capital, UNESCO site)
('Monaragala', (SELECT id FROM world_countries WHERE iso_code_2 = 'LK'), '91000'), -- Uva Province (Monaragala District Capital)
('Kilinochchi', (SELECT id FROM world_countries WHERE iso_code_2 = 'LK'), '40000'), -- Northern Province (Kilinochchi District Capital - Postal code needs check)
('Mullaitivu', (SELECT id FROM world_countries WHERE iso_code_2 = 'LK'), '40000'), -- Northern Province (Mullaitivu District Capital - Postal code needs check)
('Gampola', (SELECT id FROM world_countries WHERE iso_code_2 = 'LK'), '20500'), -- Central Province (Kandy District)
('Hatton', (SELECT id FROM world_countries WHERE iso_code_2 = 'LK'), '22000'); -- Central Province (Nuwara Eliya District - Tea country)

-- End of Sri Lanka city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Sri Lanka ==
-- ====================================
--
-- Descripción General:
-- Sri Lanka, oficialmente República Democrática Socialista de Sri Lanka (anteriormente
-- Ceilán - Ceylon), es un país insular ubicado en el sur de Asia, en el Océano Índico,
-- al sureste de la India, separado de esta por el Estrecho de Palk. Es conocida como
-- la "Perla del Océano Índico". Su geografía incluye llanuras costeras y un interior
-- montañoso en la parte sur-central. Es una república semipresidencialista.
--
-- Ciudades Principales:
-- * Colombo: La ciudad más grande y la capital comercial y económica, ubicada en la
--   costa oeste.
-- * Sri Jayawardenepura Kotte: La capital administrativa oficial, un suburbio de Colombo.
-- * Kandy: Importante ciudad en las tierras altas centrales, centro cultural y religioso
--   (Templo del Diente de Buda - Patrimonio de la Humanidad).
-- * Galle: Ciudad histórica fortificada en la costa sur (Patrimonio de la Humanidad).
-- * Jaffna: Principal ciudad en la península norteña, centro cultural tamil.
-- * Trincomalee: Importante puerto natural en la costa noreste.
-- * Anuradhapura y Polonnaruwa: Antiguas capitales históricas con impresionantes
--   ruinas arqueológicas (Patrimonio de la Humanidad).
-- * La lista incluye también las capitales de las 9 provincias y otras ciudades significativas.
--
-- Un Poco de Historia:
-- Habitada desde tiempos prehistóricos. Fue centro de antiguas civilizaciones cingalesas
-- budistas, con capitales en Anuradhapura y Polonnaruwa. Sufrió invasiones desde el
-- sur de la India. Los europeos (portugueses, neerlandeses y británicos) controlaron
-- sucesivamente las zonas costeras a partir del siglo XVI. Gran Bretaña consolidó su
-- control sobre toda la isla en 1815, estableciendo la colonia de Ceilán. Se desarrolló
-- una economía de plantación (té, caucho, coco). Obtuvo la independencia del Reino
-- Unido en 1948 como Dominio de Ceilán, convirtiéndose en la República de Sri Lanka
-- en 1972. La historia post-independencia ha estado marcada por tensiones étnicas entre
-- la mayoría cingalesa budista y la minoría tamil hindú, que culminaron en una larga
-- y brutal guerra civil (1983-2009) contra los Tigres de Liberación del Eelam Tamil (LTTE).
-- El país también fue devastado por el tsunami del Océano Índico de 2004. En años
-- recientes, ha enfrentado una grave crisis económica.
--
-- Datos Adicionales:
-- Los idiomas oficiales son el cingalés y el tamil; el inglés es ampliamente utilizado
-- como lengua de enlace. El budismo Theravada es la religión mayoritaria, con minorías
-- significativas hindúes, musulmanas y cristianas. Sri Lanka es famosa por su té
-- (Ceilán), sus piedras preciosas, sus playas y su vida silvestre (elefantes, leopardos).
-- El cricket es el deporte más popular.
--
*/
