-- SQL Script to insert a representative sample of significant towns and villages for Saint Lucia (LC).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Saint Lucia (LC).

-- NOTE: This list includes the capital, major towns (district centers), and significant villages.
-- Listing every single locality is IMPOSSIBLE.
-- Postal codes are not used; using '0000' as a placeholder.

-- Inserting cities/villages for Saint Lucia (LC) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Major Towns / District Centers
('Castries', (SELECT id FROM world_countries WHERE iso_code_2 = 'LC'), '0000'), -- National Capital (Castries District)
('Vieux Fort', (SELECT id FROM world_countries WHERE iso_code_2 = 'LC'), '0000'), -- Vieux Fort District (Major town, location of main airport)
('Soufrière', (SELECT id FROM world_countries WHERE iso_code_2 = 'LC'), '0000'), -- Soufrière District (Near Pitons, tourist hub)
('Gros Islet', (SELECT id FROM world_countries WHERE iso_code_2 = 'LC'), '0000'), -- Gros Islet District (Major tourist hub, Rodney Bay)
('Micoud', (SELECT id FROM world_countries WHERE iso_code_2 = 'LC'), '0000'), -- Micoud District Capital/Town
('Dennery', (SELECT id FROM world_countries WHERE iso_code_2 = 'LC'), '0000'), -- Dennery District Capital/Town
('Anse La Raye', (SELECT id FROM world_countries WHERE iso_code_2 = 'LC'), '0000'), -- Anse la Raye District Capital/Town
('Canaries', (SELECT id FROM world_countries WHERE iso_code_2 = 'LC'), '0000'), -- Canaries District Capital/Town
('Choiseul', (SELECT id FROM world_countries WHERE iso_code_2 = 'LC'), '0000'), -- Choiseul District Capital/Town
('Laborie', (SELECT id FROM world_countries WHERE iso_code_2 = 'LC'), '0000'), -- Laborie District Capital/Town

-- Other Significant Villages / Areas (Sample)
('Rodney Bay', (SELECT id FROM world_countries WHERE iso_code_2 = 'LC'), '0000'), -- Gros Islet District (Major tourist area)
('Marigot Bay', (SELECT id FROM world_countries WHERE iso_code_2 = 'LC'), '0000'), -- Castries District (Famous bay)
('Babonneau', (SELECT id FROM world_countries WHERE iso_code_2 = 'LC'), '0000'), -- Castries District (Large inland community)
('Mon Repos', (SELECT id FROM world_countries WHERE iso_code_2 = 'LC'), '0000'), -- Micoud District
('Bexon', (SELECT id FROM world_countries WHERE iso_code_2 = 'LC'), '0000'); -- Castries District

-- End of Saint Lucia locality list (Representative Sample)

/*
-- ======================================
-- == Información sobre Saint Lucia ==
-- ======================================
--
-- Descripción General:
-- Santa Lucía (Saint Lucia) es un país insular ubicado en el Mar Caribe oriental,
-- parte de las Antillas Menores (Islas de Barlovento). Se encuentra al norte de
-- San Vicente y las Granadinas y al sur de Martinica. Es una isla volcánica
-- montañosa, famosa por los Pitons (Gros Piton y Petit Piton), dos picos volcánicos
-- gemelos que son Patrimonio de la Humanidad por la UNESCO. La isla también posee
-- selva tropical y playas. Es una monarquía constitucional dentro de la Commonwealth.
--
-- Ciudades Principales (Pueblos):
-- La isla se divide en 10 distritos (quarters).
-- * Castries: La capital y ciudad más grande, ubicada en un puerto natural en la
--   costa noroeste. Es el centro comercial y administrativo.
-- * Vieux Fort: La segunda ciudad más grande, ubicada en el extremo sur, sede del
--   principal aeropuerto internacional.
-- * Soufrière: Pueblo turístico importante en la costa oeste, cerca de los Pitons,
--   antigua capital francesa.
-- * Gros Islet: Principal centro turístico en el norte, conocido por Rodney Bay.
-- * Micoud, Dennery, Anse La Raye, Canaries, Choiseul, Laborie: Otros pueblos
--   importantes y centros de distrito.
--
-- Un Poco de Historia:
-- Habitada por pueblos Arawak y luego Caribes. Fue posiblemente avistada por Colón,
-- pero los europeos no la colonizaron inicialmente debido a la resistencia Caribe.
-- Fue disputada ferozmente entre Francia y Gran Bretaña en los siglos XVII y XVIII,
-- cambiando de manos 14 veces. Finalmente quedó bajo control británico en 1814.
-- Desarrolló una economía de plantación basada en la caña de azúcar con mano de
-- obra esclava africana. Formó parte de la Colonia de las Islas de Barlovento
-- Británicas. Obtuvo la independencia del Reino Unido en 1979.
--
-- Datos Adicionales:
-- El inglés es el idioma oficial, pero también se habla ampliamente el criollo
-- francés de Santa Lucía (Kwéyòl). El catolicismo romano es la religión predominante.
-- La economía depende en gran medida del turismo y la agricultura (banano). Santa
-- Lucía ha producido dos premios Nobel (Sir Arthur Lewis en Economía y Derek Walcott
-- en Literatura), la mayor cantidad per cápita del mundo. Los Pitons son el símbolo
-- icónico de la isla.
--
*/
