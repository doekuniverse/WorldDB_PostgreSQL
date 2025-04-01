-- SQL Script to insert a representative sample of significant towns and settlements for the Solomon Islands (SB).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Solomon Islands (SB).

-- NOTE: Solomon Islands is an archipelago with hundreds of islands and villages. This list includes the capital,
-- provincial capitals, and significant towns/settlements. Listing every single village is IMPOSSIBLE.
-- Postal codes are not used; using '0000' as a placeholder.

-- Inserting cities/towns for Solomon Islands (SB) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Provincial Capitals / Major Towns
('Honiara', (SELECT id FROM world_countries WHERE iso_code_2 = 'SB'), '0000'), -- National Capital (on Guadalcanal, technically Capital Territory)
('Gizo', (SELECT id FROM world_countries WHERE iso_code_2 = 'SB'), '0000'), -- Western Province Capital
('Auki', (SELECT id FROM world_countries WHERE iso_code_2 = 'SB'), '0000'), -- Malaita Province Capital
('Buala', (SELECT id FROM world_countries WHERE iso_code_2 = 'SB'), '0000'), -- Isabel Province Capital
('Kirakira', (SELECT id FROM world_countries WHERE iso_code_2 = 'SB'), '0000'), -- Makira-Ulawa Province Capital
('Lata', (SELECT id FROM world_countries WHERE iso_code_2 = 'SB'), '0000'), -- Temotu Province Capital
('Taro Island', (SELECT id FROM world_countries WHERE iso_code_2 = 'SB'), '0000'), -- Choiseul Province Capital
('Tigoa (Tingoa)', (SELECT id FROM world_countries WHERE iso_code_2 = 'SB'), '0000'), -- Rennell and Bellona Province Capital
('Tulagi (Tulaghi)', (SELECT id FROM world_countries WHERE iso_code_2 = 'SB'), '0000'), -- Central Province Capital (Former national capital)

-- Other Significant Settlements (Sample)
('Noro', (SELECT id FROM world_countries WHERE iso_code_2 = 'SB'), '0000'), -- Western Province (Port, tuna cannery)
('Munda', (SELECT id FROM world_countries WHERE iso_code_2 = 'SB'), '0000'), -- Western Province (Airport, WWII history)
('Malu''u', (SELECT id FROM world_countries WHERE iso_code_2 = 'SB'), '0000'), -- Malaita Province
('Seghe', (SELECT id FROM world_countries WHERE iso_code_2 = 'SB'), '0000'), -- Western Province (Marovo Lagoon)
('Yandina', (SELECT id FROM world_countries WHERE iso_code_2 = 'SB'), '0000'), -- Central Province (Russell Islands, plantations)
('Lambi', (SELECT id FROM world_countries WHERE iso_code_2 = 'SB'), '0000'); -- Guadalcanal Province (Outside Honiara)

-- End of Solomon Islands locality list (Representative Sample)

/*
-- ==========================================
-- == Información sobre Solomon Islands ==
-- ==========================================
--
-- Descripción General:
-- Las Islas Salomón (Solomon Islands) son un país insular soberano ubicado en Oceanía,
-- en la región de Melanesia, al este de Papúa Nueva Guinea. Consiste en un extenso
-- archipiélago de casi mil islas, incluyendo seis islas principales (Guadalcanal,
-- Malaita, Nueva Georgia, Santa Isabel, Makira, Choiseul) y numerosos atolones e
-- islas más pequeñas. Es miembro de la Commonwealth.
--
-- Ciudades Principales (Pueblos):
-- La población es mayoritariamente rural, viviendo en pequeñas aldeas. Los centros
-- urbanos principales son:
-- * Honiara: La capital y ciudad más grande, ubicada en la costa norte de la isla
--   de Guadalcanal. Es el principal puerto y centro administrativo y económico.
-- * Gizo: Capital de la Provincia Occidental, segundo centro urbano más importante.
-- * Auki: Capital de la Provincia de Malaita.
-- * Buala, Kirakira, Lata, Taro Island, Tigoa, Tulagi: Capitales de las demás provincias.
--   Tulagi fue la capital durante el protectorado británico.
-- * Noro y Munda: Otros pueblos importantes en la Provincia Occidental.
--
-- Un Poco de Historia:
-- Habitadas por pueblos melanesios durante miles de años. El explorador español
-- Álvaro de Mendaña fue el primer europeo en visitarlas en 1568, nombrándolas en
-- referencia al rey Salomón bíblico. Hubo poco contacto europeo posterior hasta los
-- siglos XVIII y XIX (comerciantes, misioneros, "blackbirding" - reclutamiento
-- forzado de trabajadores). El Reino Unido estableció un protectorado sobre las
-- islas del sur en 1893, extendiéndolo gradualmente a otras islas (Protectorado
-- Británico de las Islas Salomón). Fueron escenario de combates feroces durante la
-- Segunda Guerra Mundial, especialmente la Batalla de Guadalcanal (1942-43), un
-- punto de inflexión en la Guerra del Pacífico. Obtuvieron el autogobierno y luego
-- la independencia del Reino Unido en 1978. La historia post-independencia ha estado
-- marcada por tensiones étnicas y conflictos internos (especialmente entre habitantes
-- de Guadalcanal y Malaita) a finales de los 90 y principios de los 2000, lo que
-- requirió una intervención internacional de mantenimiento de la paz liderada por
-- Australia (RAMSI) entre 2003 y 2017.
--
-- Datos Adicionales:
-- El inglés es el idioma oficial, pero el Pijin de las Salomón (un criollo basado
-- en el inglés) es la lengua franca más hablada, junto con numerosas lenguas melanesias
-- locales. La mayoría de la población es cristiana. La economía se basa en la
-- agricultura de subsistencia, la pesca y la explotación forestal. El turismo
-- (especialmente el buceo en naufragios de la SGM y el ecoturismo) tiene potencial.
--
*/
