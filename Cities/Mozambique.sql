-- SQL Script to insert a representative sample of significant cities and towns for Mozambique (MZ).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Mozambique (MZ).

-- NOTE: Mozambique is large with many localities. This list includes the capital, provincial capitals,
-- major cities, and significant towns. Listing every single village is IMPOSSIBLE.
-- Postal codes are not consistently used; using '0000' as a placeholder.

-- Inserting cities for Mozambique (MZ) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Provincial Capitals / Major Cities
('Maputo', (SELECT id FROM world_countries WHERE iso_code_2 = 'MZ'), '1100'), -- National Capital (Maputo City Province) - Example PC
('Matola', (SELECT id FROM world_countries WHERE iso_code_2 = 'MZ'), '1100'), -- Maputo Province Capital (Largest city after Maputo)
('Beira', (SELECT id FROM world_countries WHERE iso_code_2 = 'MZ'), '2100'), -- Sofala Province Capital (Major port)
('Nampula', (SELECT id FROM world_countries WHERE iso_code_2 = 'MZ'), '3100'), -- Nampula Province Capital
('Chimoio', (SELECT id FROM world_countries WHERE iso_code_2 = 'MZ'), '2201'), -- Manica Province Capital
('Nacala', (SELECT id FROM world_countries WHERE iso_code_2 = 'MZ'), '0000'), -- Nampula Province (Major port)
('Quelimane', (SELECT id FROM world_countries WHERE iso_code_2 = 'MZ'), '4100'), -- Zambezia Province Capital
('Tete', (SELECT id FROM world_countries WHERE iso_code_2 = 'MZ'), '2300'), -- Tete Province Capital
('Lichinga', (SELECT id FROM world_countries WHERE iso_code_2 = 'MZ'), '3200'), -- Niassa Province Capital
('Pemba', (SELECT id FROM world_countries WHERE iso_code_2 = 'MZ'), '3300'), -- Cabo Delgado Province Capital
('Xai-Xai', (SELECT id FROM world_countries WHERE iso_code_2 = 'MZ'), '1200'), -- Gaza Province Capital
('Maxixe', (SELECT id FROM world_countries WHERE iso_code_2 = 'MZ'), '1300'), -- Inhambane Province (Major town)
('Inhambane', (SELECT id FROM world_countries WHERE iso_code_2 = 'MZ'), '1300'), -- Inhambane Province Capital

-- Other Significant Towns / District Centers (Sample)
('Dondo', (SELECT id FROM world_countries WHERE iso_code_2 = 'MZ'), '0000'), -- Sofala Province
('Angoche', (SELECT id FROM world_countries WHERE iso_code_2 = 'MZ'), '0000'), -- Nampula Province
('Cuamba', (SELECT id FROM world_countries WHERE iso_code_2 = 'MZ'), '0000'), -- Niassa Province (Railway junction)
('Montepuez', (SELECT id FROM world_countries WHERE iso_code_2 = 'MZ'), '0000'), -- Cabo Delgado Province
('Mocuba', (SELECT id FROM world_countries WHERE iso_code_2 = 'MZ'), '0000'), -- Zambezia Province
('Gurúè', (SELECT id FROM world_countries WHERE iso_code_2 = 'MZ'), '0000'), -- Zambezia Province
('Manica', (SELECT id FROM world_countries WHERE iso_code_2 = 'MZ'), '0000'), -- Manica Province
('Chokwe', (SELECT id FROM world_countries WHERE iso_code_2 = 'MZ'), '0000'), -- Gaza Province
('Vilankulo (Vilanculos)', (SELECT id FROM world_countries WHERE iso_code_2 = 'MZ'), '0000'), -- Inhambane Province (Tourist town)
('Moatize', (SELECT id FROM world_countries WHERE iso_code_2 = 'MZ'), '0000'), -- Tete Province (Coal mining)
('Mocímboa da Praia', (SELECT id FROM world_countries WHERE iso_code_2 = 'MZ'), '0000'), -- Cabo Delgado Province (Affected by insurgency)
('Palma', (SELECT id FROM world_countries WHERE iso_code_2 = 'MZ'), '0000'), -- Cabo Delgado Province (Gas projects)
('Chibuto', (SELECT id FROM world_countries WHERE iso_code_2 = 'MZ'), '0000'); -- Gaza Province

-- End of Mozambique city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Mozambique ==
-- ====================================
--
-- Descripción General:
-- Mozambique es un país ubicado en el sureste de África. Limita con el Océano Índico
-- al este, Tanzania al norte, Malawi y Zambia al noroeste, Zimbabue al oeste, y
-- Esuatini y Sudáfrica al suroeste. Tiene una costa larga y estrecha a lo largo del
-- Canal de Mozambique. El río Zambezi atraviesa la parte central del país. Su
-- geografía incluye llanuras costeras, mesetas interiores y tierras altas en el
-- noroeste.
--
-- Ciudades Principales:
-- * Maputo: La capital y ciudad más grande, ubicada en el extremo sur del país, en
--   la Bahía de Maputo. Es el principal centro político, económico y portuario.
-- * Matola: Ciudad grande adyacente a Maputo, formando una gran área metropolitana.
-- * Beira: La segunda ciudad más grande y un puerto crucial en el centro del país,
--   sirviendo como salida al mar para países vecinos como Zimbabue y Malawi.
-- * Nampula: Principal centro urbano en el norte de Mozambique.
-- * Chimoio, Nacala (puerto importante), Quelimane, Tete, Lichinga, Pemba, Xai-Xai,
--   Inhambane: Otras ciudades importantes y capitales provinciales.
-- * La lista incluye también las capitales de todas las provincias y otras ciudades significativas.
--
-- Un Poco de Historia:
-- Habitada por pueblos Bantúes. La costa fue parte de las redes comerciales Swahili
-- y fue visitada por los portugueses a partir de finales del siglo XV (Vasco da Gama).
-- Portugal estableció puestos comerciales y gradualmente colonizó el interior,
-- formando el África Oriental Portuguesa. La resistencia a la colonización fue
-- significativa. En la década de 1960, surgió el movimiento de liberación FRELIMO
-- (Frente de Liberación de Mozambique), que libró una guerra de independencia.
-- Mozambique obtuvo la independencia de Portugal en 1975, estableciéndose un estado
-- socialista liderado por FRELIMO. Poco después, estalló una devastadora guerra civil
-- (1977-1992) entre el gobierno de FRELIMO y el movimiento anticomunista RENAMO
-- (apoyado por Rodesia y Sudáfrica). Se firmó un acuerdo de paz en 1992, seguido por
-- elecciones multipartidistas. El país ha enfrentado desafíos de reconstrucción,
-- pobreza y desastres naturales, y en años recientes, una insurgencia islamista en
-- la provincia norteña de Cabo Delgado.
--
-- Datos Adicionales:
-- El portugués es el idioma oficial, pero se hablan numerosas lenguas bantúes
-- (Makhuwa, Tsonga, Sena, etc.). Las religiones principales son el cristianismo y
-- el islam, junto con creencias tradicionales. Mozambique tiene importantes recursos
-- naturales, incluyendo grandes reservas de gas natural descubiertas recientemente,
-- carbón y potencial hidroeléctrico. El Parque Nacional de Gorongosa es un ejemplo
-- de restauración ecológica.
--
*/
