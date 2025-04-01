-- SQL Script to insert a representative sample of significant cities and towns for Zambia (ZM).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Zambia (ZM).

-- NOTE: Zambia is divided into 10 provinces, which contain numerous districts, towns, and villages.
-- Listing every single settlement is impractical for this format. This list focuses on the national capital,
-- major cities (especially in the Copperbelt), provincial capitals, and a sample of other significant towns.
-- Zambia has a postal code system (typically 5 digits), but usage/data availability can be inconsistent; using '00000' as a placeholder.

-- Inserting cities/towns for Zambia (ZM) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- National Capital & Major Cities / Provincial Capitals
('Lusaka', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZM'), '10101'), -- National Capital & Lusaka Province Capital (Using a known central Lusaka code, but generally using placeholder)
('Ndola', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZM'), '00000'), -- Major City / Copperbelt Province Capital
('Kitwe', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZM'), '00000'), -- Major City in Copperbelt Province
('Kabwe', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZM'), '00000'), -- Central Province Capital
('Chipata', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZM'), '00000'), -- Eastern Province Capital
('Livingstone', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZM'), '00000'), -- Major Tourist City (near Victoria Falls, former Southern Province capital)
('Choma', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZM'), '00000'), -- Southern Province Capital
('Solwezi', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZM'), '00000'), -- North-Western Province Capital
('Mansa', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZM'), '00000'), -- Luapula Province Capital
('Kasama', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZM'), '00000'), -- Northern Province Capital
('Mongu', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZM'), '00000'), -- Western Province Capital

-- Other Significant Towns (Sample)
('Chingola', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZM'), '00000'), -- Copperbelt Province Town
('Mufulira', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZM'), '00000'), -- Copperbelt Province Town
('Luanshya', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZM'), '00000'), -- Copperbelt Province Town
('Mazabuka', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZM'), '00000'), -- Agricultural Town (Southern Province)
('Kapiri Mposhi', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZM'), '00000'); -- Railway Junction Town (Central Province)


-- End of Zambia city/town list (Representative Sample)

/*
-- =============================================
-- ==      Información sobre Zambia          ==
-- =============================================
--
-- Descripción General:
-- Zambia, oficialmente la República de Zambia, es un país sin salida al mar ubicado
-- en el sur de África Central. Limita con la República Democrática del Congo al norte,
-- Tanzania al noreste, Malaui al este, Mozambique al sureste, Zimbabue y Botsuana
-- al sur, Namibia al suroeste y Angola al oeste. Gran parte del país consiste en una
-- meseta alta con algunas colinas y montañas, y está atravesada por varios ríos
-- importantes, incluyendo el Zambeze. En la frontera sur con Zimbabue se encuentran
-- las Cataratas Victoria, una de las más grandes del mundo.
--
-- Ciudades Principales:
-- * Lusaka: La capital y ciudad más grande, ubicada en la parte centro-sur del país.
--   Es el centro político, económico y de transporte.
-- * Ndola, Kitwe, Chingola, Mufulira, Luanshya: Ciudades principales de la provincia
--   de Copperbelt (Cinturón del Cobre), el corazón industrial y minero del país.
-- * Kabwe: Capital de la Provincia Central.
-- * Chipata: Capital de la Provincia Oriental.
-- * Livingstone: Importante centro turístico, puerta de entrada a las Cataratas Victoria.
--   Fue la capital de Rodesia del Norte.
-- * Choma: Capital de la Provincia del Sur (reemplazando a Livingstone).
-- * Solwezi, Mansa, Kasama, Mongu: Capitales de las provincias del Noroeste, Luapula,
--   Norte y Oeste, respectivamente.
--
-- Un Poco de Historia:
-- Habitada por pueblos Khoisan y luego por diversas migraciones bantúes. En el siglo XIX,
-- la región fue explorada por europeos, destacando David Livingstone. La Compañía
-- Británica de Sudáfrica (BSAC) de Cecil Rhodes obtuvo derechos mineros y administrativos
-- sobre el área, que se conoció como Rodesia del Noroeste y Rodesia del Noreste. En 1911,
-- se unieron para formar Rodesia del Norte, administrada por la BSAC hasta 1924, cuando
-- se convirtió en un protectorado británico directo. Formó parte de la Federación de
-- Rodesia y Nyasalandia (1953-1963). Obtuvo la independencia como República de Zambia
-- en 1964, con Kenneth Kaunda como primer presidente. Kaunda gobernó bajo un sistema
-- de partido único durante muchos años. Zambia fue un actor importante en la lucha
-- contra el apartheid en Sudáfrica y el gobierno de la minoría blanca en Rodesia
-- (actual Zimbabue). Regresó a la democracia multipartidista a principios de los años 90.
--
-- Datos Adicionales:
-- El inglés es el idioma oficial. Se hablan numerosas lenguas bantúes locales (más de 70),
-- siendo el Bemba y el Nyanja algunas de las más extendidas. La población es étnicamente
-- diversa. La religión principal es el cristianismo (protestante y católico), a menudo
-- mezclado con creencias tradicionales. La economía ha dependido históricamente en gran
-- medida de la minería del cobre, lo que la hace vulnerable a las fluctuaciones de los
-- precios mundiales. Se están realizando esfuerzos para diversificar la economía hacia
-- la agricultura, el turismo (safaris, Cataratas Victoria) y la manufactura. Zambia es
-- miembro de la Mancomunidad de Naciones, la Unión Africana y la SADC.
--
*/
