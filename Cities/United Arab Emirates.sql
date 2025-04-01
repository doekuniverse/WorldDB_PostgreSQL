-- SQL Script to insert a representative sample of significant cities for the United Arab Emirates (AE).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains United Arab Emirates (AE).

-- NOTE: The UAE is a federation of seven emirates. Each emirate has a main city/capital, and there are numerous smaller towns and developing areas.
-- Listing every single settlement is impractical for this format. This list focuses on the federal capital, the largest city (Dubai),
-- and the capitals/main cities of the other emirates.
-- The UAE has a postal code system, but it is primarily used for PO Boxes rather than direct street delivery in many areas.
-- Using '00000' as a placeholder due to varying usage and data availability for general location identification.

-- Inserting cities for United Arab Emirates (AE) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Federal Capital & Largest City
('Abu Dhabi', (SELECT id FROM world_countries WHERE iso_code_2 = 'AE'), '00000'), -- Federal Capital & Abu Dhabi Emirate Capital
('Dubai', (SELECT id FROM world_countries WHERE iso_code_2 = 'AE'), '00000'), -- Largest City / Global Hub (Dubai Emirate Capital)

-- Other Emirate Capitals / Major Cities
('Sharjah', (SELECT id FROM world_countries WHERE iso_code_2 = 'AE'), '00000'), -- Sharjah Emirate Capital (Part of Dubai-Sharjah-Ajman metro area)
('Al Ain', (SELECT id FROM world_countries WHERE iso_code_2 = 'AE'), '00000'), -- Major city in Abu Dhabi Emirate (Oasis city)
('Ajman', (SELECT id FROM world_countries WHERE iso_code_2 = 'AE'), '00000'), -- Ajman Emirate Capital (Part of Dubai-Sharjah-Ajman metro area)
('Ras Al Khaimah', (SELECT id FROM world_countries WHERE iso_code_2 = 'AE'), '00000'), -- Ras Al Khaimah Emirate Capital
('Fujairah', (SELECT id FROM world_countries WHERE iso_code_2 = 'AE'), '00000'), -- Fujairah Emirate Capital (on the Gulf of Oman)
('Umm Al Quwain', (SELECT id FROM world_countries WHERE iso_code_2 = 'AE'), '00000'); -- Umm Al Quwain Emirate Capital


-- End of United Arab Emirates city list (Representative Sample)

/*
-- ===========================================================
-- ==    Información sobre los Emiratos Árabes Unidos       ==
-- ===========================================================
--
-- Descripción General:
-- Los Emiratos Árabes Unidos (EAU) son una federación de siete emiratos ubicada en el
-- extremo sureste de la Península Arábiga. Limita con Omán al este y Arabia Saudita
-- al sur y oeste, y comparte fronteras marítimas en el Golfo Pérsico con Catar e Irán.
-- Los siete emiratos son Abu Dabi, Ajmán, Dubái, Fuyaira, Ras al-Jaima, Sharjah y
-- Umm al-Qaywayn. La geografía es predominantemente desértica, con costas en el Golfo
-- Pérsico y el Golfo de Omán (Fuyaira). El país ha experimentado una transformación
-- económica y social radical desde el descubrimiento de petróleo.
--
-- Ciudades Principales:
-- * Abu Dabi (Abu Dhabi): La capital federal y capital del emirato de Abu Dabi (el más
--   grande por área). Es un importante centro político, industrial y cultural.
-- * Dubái (Dubai): La ciudad más poblada y capital del emirato de Dubái. Es un centro
--   global de negocios, finanzas, turismo y transporte, conocido por su arquitectura
--   ultramoderna (Burj Khalifa), islas artificiales y centros comerciales.
-- * Sharjah: Capital del emirato de Sharjah, contigua a Dubái, considerada la capital
--   cultural de los EAU.
-- * Al Ain: Importante ciudad oasis en el emirato de Abu Dabi, cerca de la frontera
--   con Omán, conocida por sus palmerales y sitios históricos.
-- * Ajmán, Ras al-Jaima, Fuyaira, Umm al-Qaywayn: Capitales de los respectivos emiratos.
--
-- Un Poco de Historia:
-- La región estuvo habitada por tribus árabes durante siglos. En el siglo XVIII y XIX,
-- varios jeques locales firmaron tratados con el Reino Unido para combatir la piratería,
-- dando lugar al nombre de "Estados de la Tregua" (Trucial States). Estos estados se
-- convirtieron en un protectorado británico. Tras el anuncio británico de retirarse
-- de la región, seis de los siete emiratos (Abu Dabi, Dubái, Sharjah, Ajmán, Umm
-- al-Qaywayn y Fuyaira) formaron la federación de los Emiratos Árabes Unidos el 2 de
-- diciembre de 1971. Ras al-Jaima se unió a principios de 1972. El descubrimiento
-- de grandes reservas de petróleo, principalmente en Abu Dabi, transformó la economía
-- y permitió un desarrollo extremadamente rápido a partir de la década de 1970.
--
-- Datos Adicionales:
-- El árabe es el idioma oficial. El inglés es ampliamente utilizado como lengua franca,
-- especialmente en los negocios y debido a la gran población expatriada. El islam es
-- la religión oficial. La población es muy diversa, con una minoría de ciudadanos
-- emiratíes y una gran mayoría de trabajadores expatriados de Asia del Sur, Sudeste
-- Asiático, otros países árabes, Europa y otros lugares. La economía, aunque
-- originalmente basada en el petróleo y el gas, se ha diversificado considerablemente,
-- especialmente en Dubái (turismo, finanzas, bienes raíces, logística). Los EAU son
-- una federación donde cada emirato conserva una considerable autonomía bajo su propio
-- gobernante (emir), mientras que el presidente de los EAU (tradicionalmente el emir
-- de Abu Dabi) y el primer ministro (tradicionalmente el emir de Dubái) dirigen el
-- gobierno federal.
--
*/
