-- SQL Script to insert a representative sample of significant towns and villages for Saint Vincent and the Grenadines (VC).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Saint Vincent and the Grenadines (VC).

-- NOTE: This list includes the capital, major towns/parish centers on St. Vincent, and main settlements on larger Grenadine islands.
-- Listing every single locality is IMPOSSIBLE.
-- Postal codes are not used; using '0000' as a placeholder.

-- Inserting cities/villages for Saint Vincent and the Grenadines (VC) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Saint Vincent Island
('Kingstown', (SELECT id FROM world_countries WHERE iso_code_2 = 'VC'), '0000'), -- National Capital (Saint George Parish)
('Georgetown', (SELECT id FROM world_countries WHERE iso_code_2 = 'VC'), '0000'), -- Charlotte Parish (Largest town after Kingstown)
('Barrouallie', (SELECT id FROM world_countries WHERE iso_code_2 = 'VC'), '0000'), -- Saint Patrick Parish Capital/Town
('Layou', (SELECT id FROM world_countries WHERE iso_code_2 = 'VC'), '0000'), -- Saint Andrew Parish Capital/Town
('Chateaubelair', (SELECT id FROM world_countries WHERE iso_code_2 = 'VC'), '0000'), -- Saint David Parish Capital/Town
('Calliaqua', (SELECT id FROM world_countries WHERE iso_code_2 = 'VC'), '0000'), -- Saint George Parish (Town near Kingstown)
('Arnos Vale', (SELECT id FROM world_countries WHERE iso_code_2 = 'VC'), '0000'), -- Saint George Parish (Location of main airport)
('Campden Park', (SELECT id FROM world_countries WHERE iso_code_2 = 'VC'), '0000'), -- Saint Andrew Parish
('Byera Village', (SELECT id FROM world_countries WHERE iso_code_2 = 'VC'), '0000'), -- Charlotte Parish

-- Grenadine Islands (Main Settlements)
('Port Elizabeth', (SELECT id FROM world_countries WHERE iso_code_2 = 'VC'), '0000'), -- Bequia Island
('Clifton', (SELECT id FROM world_countries WHERE iso_code_2 = 'VC'), '0000'), -- Union Island
('Ashton', (SELECT id FROM world_countries WHERE iso_code_2 = 'VC'), '0000'), -- Union Island
('Lovell Village', (SELECT id FROM world_countries WHERE iso_code_2 = 'VC'), '0000'), -- Mustique Island
('Charlestown', (SELECT id FROM world_countries WHERE iso_code_2 = 'VC'), '0000'), -- Canouan Island
('Paget Farm', (SELECT id FROM world_countries WHERE iso_code_2 = 'VC'), '0000'); -- Bequia Island

-- End of Saint Vincent and the Grenadines locality list (Representative Sample)

/*
-- ============================================================
-- == Información sobre Saint Vincent and the Grenadines ==
-- ============================================================
--
-- Descripción General:
-- San Vicente y las Granadinas es un país insular caribeño ubicado en las Antillas
-- Menores, específicamente en las Islas de Barlovento. Se encuentra al sur de Santa
-- Lucía y al norte de Granada. Consiste en la isla principal de San Vicente y una
-- cadena de 32 islas e islotes más pequeños conocidos como las Granadinas (algunas
-- de las cuales pertenecen a Granada). La isla de San Vicente es volcánica y
-- montañosa, dominada por el volcán activo La Soufrière. Las Granadinas son
-- generalmente más bajas y coralinas. Es una monarquía constitucional dentro de la Commonwealth.
--
-- Ciudades Principales (Pueblos):
-- La división administrativa se basa en 6 parroquias (parishes), cinco en San Vicente
-- y una que cubre las Granadinas.
-- * Kingstown: La capital, ciudad más grande y principal puerto, ubicada en la costa
--   suroeste de San Vicente.
-- * Georgetown: El segundo pueblo más grande, en la costa este de San Vicente.
-- * Barrouallie, Layou, Chateaubelair: Otros centros parroquiales en San Vicente.
-- * Port Elizabeth: El principal pueblo en la isla de Bequia (la más grande de las Granadinas).
-- * Clifton y Ashton: Principales pueblos en Union Island.
-- * Lovell Village (Mustique), Charlestown (Canouan): Principales asentamientos en
--   otras islas Granadinas habitadas importantes.
--
-- Un Poco de Historia:
-- Habitada por pueblos indígenas Caribes (Kalinago), quienes resistieron la colonización
-- europea durante mucho tiempo. Fue reclamada por varias potencias europeas. Francia
-- y Gran Bretaña disputaron el control de San Vicente en el siglo XVIII, quedando
-- finalmente bajo dominio británico en 1783. Los británicos deportaron a gran parte
-- de la población Caribe Negra (Garifuna) a Centroamérica. Se desarrolló una economía
-- de plantación (azúcar, arrurruz) con mano de obra esclava africana. Formó parte
-- de la Colonia de las Islas de Barlovento Británicas y de la efímera Federación de
-- las Indias Occidentales. Obtuvo la independencia del Reino Unido en 1979. El volcán
-- La Soufrière ha tenido erupciones significativas, incluyendo una muy destructiva
-- en 1902 y la más reciente en 2021.
--
-- Datos Adicionales:
-- El inglés es el idioma oficial, pero también se habla un criollo vicentino. La
-- economía depende del turismo (especialmente en las Granadinas, popular para la
-- navegación), la agricultura (banano, arrurruz) y los servicios financieros offshore.
-- Parte de las películas "Piratas del Caribe" se filmaron aquí.
--
*/
