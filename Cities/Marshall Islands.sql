-- SQL Script to insert a representative sample of significant towns and atoll centers for the Marshall Islands (MH).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Marshall Islands (MH).

-- NOTE: Marshall Islands is an archipelago of many atolls and islands. This list includes the capital,
-- major population centers, and significant atoll centers. Listing every single settlement is IMPOSSIBLE.
-- Postal codes are US ZIP codes (969xx); examples or '00000' placeholder are provided.

-- Inserting cities/atoll centers for Marshall Islands (MH) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Major Population Centers
('Majuro', (SELECT id FROM world_countries WHERE iso_code_2 = 'MH'), '96960'), -- Capital (Delap-Uliga-Djarrit area on Majuro Atoll)
('Ebeye', (SELECT id FROM world_countries WHERE iso_code_2 = 'MH'), '96970'), -- Kwajalein Atoll (Most densely populated island)
('Kwajalein', (SELECT id FROM world_countries WHERE iso_code_2 = 'MH'), '96970'), -- Kwajalein Atoll (US Army Base area - often uses APO AE 96855)

-- Other Significant Atoll Centers / Inhabited Islands (Sample)
('Jabor', (SELECT id FROM world_countries WHERE iso_code_2 = 'MH'), '00000'), -- Jaluit Atoll (Administrative center)
('Wotje', (SELECT id FROM world_countries WHERE iso_code_2 = 'MH'), '00000'), -- Wotje Atoll
('Taroa', (SELECT id FROM world_countries WHERE iso_code_2 = 'MH'), '00000'), -- Maloelap Atoll (Main settlement)
('Ine', (SELECT id FROM world_countries WHERE iso_code_2 = 'MH'), '00000'), -- Arno Atoll (Main settlement)
('Mili', (SELECT id FROM world_countries WHERE iso_code_2 = 'MH'), '00000'), -- Mili Atoll
('Enewetak', (SELECT id FROM world_countries WHERE iso_code_2 = 'MH'), '00000'), -- Enewetak Atoll (Site of nuclear tests)
('Utirik', (SELECT id FROM world_countries WHERE iso_code_2 = 'MH'), '00000'), -- Utirik Atoll
('Mejit Island', (SELECT id FROM world_countries WHERE iso_code_2 = 'MH'), '00000'), -- Isolated island
('Ailinglaplap', (SELECT id FROM world_countries WHERE iso_code_2 = 'MH'), '00000'), -- Ailinglaplap Atoll (Woja is a main village)
('Namu', (SELECT id FROM world_countries WHERE iso_code_2 = 'MH'), '00000'), -- Namu Atoll
('Kili Island', (SELECT id FROM world_countries WHERE iso_code_2 = 'MH'), '00000'), -- Island where Bikini Islanders were relocated
('Likiep', (SELECT id FROM world_countries WHERE iso_code_2 = 'MH'), '00000'); -- Likiep Atoll

-- Bikini and Rongelap Atolls are largely uninhabited due to nuclear testing legacy.

-- End of Marshall Islands locality list (Representative Sample)

/*
-- ===============================================
-- == Información sobre Marshall Islands ==
-- ===============================================
--
-- Descripción General:
-- La República de las Islas Marshall es un país insular ubicado en Micronesia, en
-- el Océano Pacífico occidental, cerca del ecuador. Consiste en 29 atolones de coral
-- y 5 islas volcánicas aisladas, agrupadas en dos cadenas principales: Ratak (amanecer)
-- al este y Ralik (atardecer) al oeste. Es un estado soberano en libre asociación
-- con los Estados Unidos. Las islas son de baja altitud y vulnerables al aumento
-- del nivel del mar.
--
-- Ciudades Principales (Localidades):
-- No hay grandes ciudades. La población se concentra en pocos centros:
-- * Majuro: La capital y localidad más grande, ubicada en el atolón de Majuro. La
--   mayoría de la población vive en los islotes conectados de Delap-Uliga-Djarrit (DUD).
-- * Ebeye: La segunda localidad más poblada, ubicada en un pequeño islote del atolón
--   de Kwajalein. Es extremadamente densa y alberga a trabajadores de la base militar
--   estadounidense cercana.
-- * Kwajalein: Islote que alberga la Base del Ejército de EE.UU. Ronald Reagan (sitio
--   de prueba de misiles balísticos).
-- * Jabor (Jaluit Atoll), Wotje, Taroa (Maloelap Atoll): Otros centros administrativos
--   o principales en atolones importantes.
--
-- Un Poco de Historia:
-- Habitadas por pueblos micronesios durante miles de años. Fueron avistadas por
-- exploradores españoles en el siglo XVI (Álvaro de Saavedra, Ruy López de Villalobos).
-- Nombradas por el capitán británico John Marshall en 1788. Fueron reclamadas por
-- España y luego vendidas a Alemania en 1885, formando parte de la Nueva Guinea
-- Alemana. Japón las ocupó durante la Primera Guerra Mundial y las administró bajo
-- mandato de la Liga de Naciones. Fueron escenario de importantes batallas durante
-- la Segunda Guerra Mundial (Kwajalein, Enewetak). Después de la guerra, se
-- convirtieron en parte del Territorio en Fideicomiso de las Islas del Pacífico,
-- administrado por Estados Unidos bajo mandato de la ONU. EE.UU. realizó numerosas
-- pruebas nucleares en los atolones de Bikini y Enewetak entre 1946 y 1958, con
-- graves consecuencias para la población y el medio ambiente. Las Islas Marshall
-- se convirtieron en una república autónoma en 1979 y lograron la plena independencia
-- en libre asociación con EE.UU. en 1986 (el Compacto de Libre Asociación provee
-- defensa, subsidios y acceso a servicios sociales de EE.UU.).
--
-- Datos Adicionales:
-- Los idiomas oficiales son el marshalés (una lengua micronesia) y el inglés. La
-- economía depende de la ayuda estadounidense, la agricultura de subsistencia
-- (copra, taro), la pesca y las licencias de pesca. El legado de las pruebas
-- nucleares y el cambio climático son desafíos importantes.
--
*/
