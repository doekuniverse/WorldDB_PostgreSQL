-- SQL Script to insert all communes (main administrative divisions) for Mayotte (YT).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Mayotte (YT).

-- NOTE: Mayotte is divided into 17 communes. This list includes all of them,
-- providing essentially complete coverage at the municipal level.
-- Postal codes are 976xx; examples are provided.

-- Inserting communes for Mayotte (YT) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
('Mamoudzou', (SELECT id FROM world_countries WHERE iso_code_2 = 'YT'), '97600'), -- Préfecture (Capital), on Grande-Terre
('Dzaoudzi', (SELECT id FROM world_countries WHERE iso_code_2 = 'YT'), '97615'), -- On Petite-Terre (location of airport, former capital)
('Pamandzi', (SELECT id FROM world_countries WHERE iso_code_2 = 'YT'), '97615'), -- On Petite-Terre
('Koungou', (SELECT id FROM world_countries WHERE iso_code_2 = 'YT'), '97600'), -- On Grande-Terre (North of Mamoudzou)
('Dembeni', (SELECT id FROM world_countries WHERE iso_code_2 = 'YT'), '97660'), -- On Grande-Terre
('Bandraboua', (SELECT id FROM world_countries WHERE iso_code_2 = 'YT'), '97650'), -- On Grande-Terre
('Tsingoni', (SELECT id FROM world_countries WHERE iso_code_2 = 'YT'), '97680'), -- On Grande-Terre
('Ouangani', (SELECT id FROM world_countries WHERE iso_code_2 = 'YT'), '97670'), -- On Grande-Terre
('Chiconi', (SELECT id FROM world_countries WHERE iso_code_2 = 'YT'), '97670'), -- On Grande-Terre
('Sada', (SELECT id FROM world_countries WHERE iso_code_2 = 'YT'), '97640'), -- On Grande-Terre
('Bandrele', (SELECT id FROM world_countries WHERE iso_code_2 = 'YT'), '97660'), -- On Grande-Terre
('Chirongui', (SELECT id FROM world_countries WHERE iso_code_2 = 'YT'), '97620'), -- On Grande-Terre
('Kani-Kéli', (SELECT id FROM world_countries WHERE iso_code_2 = 'YT'), '97625'), -- On Grande-Terre
('Bouéni', (SELECT id FROM world_countries WHERE iso_code_2 = 'YT'), '97620'), -- On Grande-Terre
('M''tsangamouji', (SELECT id FROM world_countries WHERE iso_code_2 = 'YT'), '97650'), -- On Grande-Terre
('Acoua', (SELECT id FROM world_countries WHERE iso_code_2 = 'YT'), '97630'), -- On Grande-Terre
('Mtsamboro', (SELECT id FROM world_countries WHERE iso_code_2 = 'YT'), '97630'); -- On Grande-Terre

-- End of Mayotte commune list (All 17 communes)

/*
-- ====================================
-- == Información sobre Mayotte ==
-- ====================================
--
-- Descripción General:
-- Mayotte es un departamento y región de ultramar de Francia, ubicado en el extremo
-- norte del Canal de Mozambique en el Océano Índico, entre el norte de Madagascar
-- y el norte de Mozambique. Forma parte geográficamente del Archipiélago de las
-- Comoras, pero políticamente ha permanecido bajo administración francesa mientras
-- que las otras tres islas comorenses formaron la Unión de las Comoras. Consiste
-- en una isla principal (Grande-Terre o Mahoré), una isla más pequeña (Petite-Terre
-- o Pamanzi) y varios islotes menores, rodeados por una gran barrera de coral.
--
-- Ciudades Principales (Comunas):
-- Mayotte se divide administrativamente en 17 comunas.
-- * Mamoudzou: La capital (prefectura) y comuna más poblada, ubicada en Grande-Terre.
-- * Dzaoudzi: Ubicada en Petite-Terre, fue la capital anterior y alberga el aeropuerto.
-- * Pamandzi: La otra comuna en Petite-Terre.
-- * Koungou, Dembeni, Sada: Otras comunas importantes en Grande-Terre.
-- * La lista incluye las 17 comunas que componen Mayotte.
--
-- Un Poco de Historia:
-- Habitada originalmente por pueblos de África Oriental y luego por influencias árabes
-- y malgaches, formando parte de los sultanatos comorenses. Francia estableció un
-- protectorado sobre Mayotte en 1841, antes que sobre las otras islas Comoras. Cuando
-- las Comoras celebraron un referéndum de independencia en 1974, Mayotte fue la
-- única isla que votó abrumadoramente por permanecer con Francia. Las otras tres
-- islas declararon la independencia unilateralmente en 1975. El estatus de Mayotte
-- ha sido objeto de disputa con la Unión de las Comoras, que la reclama. Mayotte
-- se convirtió en una colectividad departamental y luego, en 2011, en un departamento
-- y región de ultramar de Francia, integrándose más plenamente en la estructura
-- administrativa francesa y convirtiéndose en una región ultraperiférica de la UE.
--
-- Datos Adicionales:
-- Como parte integral de Francia, utiliza el euro. El francés es el idioma oficial,
-- pero la mayoría de la población habla Shimaore (un dialecto del comorense, lengua
-- bantú) y también se hablan lenguas malgaches (kibushi). La mayoría de la población
-- es musulmana sunita. La laguna de Mayotte es una de las más grandes del mundo y
-- alberga una rica biodiversidad marina. Enfrenta desafíos socioeconómicos y de
-- inmigración desde las vecinas Comoras.
--
*/
