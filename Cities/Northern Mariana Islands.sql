-- SQL Script to insert a representative sample of significant villages/municipalities for the Northern Mariana Islands (MP).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Northern Mariana Islands (MP).

-- NOTE: CNMI consists of 14 islands, with population concentrated on Saipan, Tinian, and Rota.
-- This list includes the capital and main villages/municipalities on these islands. Listing every single locality is IMPOSSIBLE.
-- Postal codes are US ZIP codes (9695x); examples are provided.

-- Inserting cities/villages for Northern Mariana Islands (MP) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Saipan (Capital Island & Municipality)
('Saipan', (SELECT id FROM world_countries WHERE iso_code_2 = 'MP'), '96950'), -- Often refers to the whole island/municipality
('Capitol Hill', (SELECT id FROM world_countries WHERE iso_code_2 = 'MP'), '96950'), -- Location of government buildings, considered the capital
('Garapan', (SELECT id FROM world_countries WHERE iso_code_2 = 'MP'), '96950'), -- Main tourist and commercial center on Saipan
('Susupe', (SELECT id FROM world_countries WHERE iso_code_2 = 'MP'), '96950'), -- Former administrative center on Saipan
('Chalan Kanoa', (SELECT id FROM world_countries WHERE iso_code_2 = 'MP'), '96950'), -- Village on Saipan
('San Antonio', (SELECT id FROM world_countries WHERE iso_code_2 = 'MP'), '96950'), -- Village on Saipan
('Tanapag', (SELECT id FROM world_countries WHERE iso_code_2 = 'MP'), '96950'), -- Village on Saipan
('San Vicente', (SELECT id FROM world_countries WHERE iso_code_2 = 'MP'), '96950'), -- Village on Saipan
('Kagman', (SELECT id FROM world_countries WHERE iso_code_2 = 'MP'), '96950'), -- Village area on Saipan

-- Tinian (Island & Municipality)
('San Jose', (SELECT id FROM world_countries WHERE iso_code_2 = 'MP'), '96952'), -- Main village on Tinian

-- Rota (Island & Municipality)
('Songsong', (SELECT id FROM world_countries WHERE iso_code_2 = 'MP'), '96951'), -- Main village on Rota
('Sinapalo', (SELECT id FROM world_countries WHERE iso_code_2 = 'MP'), '96951'); -- Second village on Rota

-- Northern Islands Municipality has extremely small/no permanent population.

-- End of Northern Mariana Islands locality list (Representative Sample)

/*
-- ==========================================================
-- == Información sobre Northern Mariana Islands (CNMI) ==
-- ==========================================================
--
-- Descripción General:
-- Las Islas Marianas del Norte (Northern Mariana Islands), oficialmente el
-- Estado Libre Asociado de las Islas Marianas del Norte (Commonwealth of the
-- Northern Mariana Islands - CNMI), son un territorio en unión política con los
-- Estados Unidos, ubicado en el Océano Pacífico occidental, en la región de
-- Micronesia. Comprenden 14 islas del archipiélago de las Marianas (la isla más
-- meridional del archipiélago es Guam, un territorio separado de EE.UU.). La gran
-- mayoría de la población reside en las islas de Saipan, Tinian y Rota.
--
-- Ciudades Principales (Localidades):
-- La división administrativa principal son los municipios, que a menudo coinciden
-- con las islas principales.
-- * Saipan: Es la isla más grande y poblada, y sede de la capital. Capitol Hill es
--   el centro administrativo específico, pero a menudo se refiere a Saipan como la capital.
--   Garapan es el principal centro turístico y comercial. Susupe fue el centro
--   administrativo durante el período del Territorio en Fideicomiso.
-- * San Jose: Es el principal pueblo en la isla de Tinian.
-- * Songsong: Es el principal pueblo en la isla de Rota.
-- * El Municipio de las Islas del Norte (Northern Islands Municipality) abarca las
--   islas al norte de Saipan, que están escasamente pobladas o deshabitadas.
--
-- Un Poco de Historia:
-- Habitadas por el pueblo Chamorro durante miles de años. Fueron avistadas por
-- Magallanes en 1521 y reclamadas por España en el siglo XVI como parte de las
-- Islas Marianas. Tras la Guerra Hispano-Estadounidense de 1898, España vendió las
-- Marianas del Norte (junto con las Carolinas y Palaos) a Alemania. Japón ocupó
-- las islas durante la Primera Guerra Mundial y las administró bajo mandato de la
-- Liga de Naciones. Fueron escenario de batallas cruciales en la Segunda Guerra
-- Mundial (Batalla de Saipan, Batalla de Tinian - desde donde despegaron los aviones
-- que lanzaron las bombas atómicas sobre Japón). Después de la guerra, se convirtieron
-- en parte del Territorio en Fideicomiso de las Islas del Pacífico, administrado por
-- Estados Unidos bajo mandato de la ONU. En la década de 1970, los habitantes votaron
-- por no buscar la independencia, sino por establecer un Estado Libre Asociado
-- (Commonwealth) en unión política con EE.UU., lo cual se formalizó en 1978/1986.
--
-- Datos Adicionales:
-- Los idiomas oficiales son el inglés, el chamorro y el carolinio. Los residentes
-- son ciudadanos estadounidenses, pero no pueden votar en elecciones presidenciales
-- y tienen representación sin voto en el Congreso de EE.UU. La economía depende
-- del turismo (principalmente de Asia oriental) y de la asistencia financiera de EE.UU.
-- La Fosa de las Marianas, el punto más profundo de los océanos, se encuentra cerca.
--
*/
