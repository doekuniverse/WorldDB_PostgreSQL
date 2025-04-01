-- SQL Script to insert the main town and significant areas/quartiers for Saint Barthélemy (BL).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Saint Barthélemy (BL).

-- NOTE: Saint Barthélemy is a very small island collectivity, divided into quartiers. This list includes the capital
-- and main recognized areas, providing essentially complete coverage of significant populated places.
-- The entire territory uses the French postal code 97133.

-- Inserting main town and areas for Saint Barthélemy (BL) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
('Gustavia', (SELECT id FROM world_countries WHERE iso_code_2 = 'BL'), '97133'), -- Capital and main port
('Saint-Jean', (SELECT id FROM world_countries WHERE iso_code_2 = 'BL'), '97133'), -- Major area (beach, airport nearby)
('Lorient', (SELECT id FROM world_countries WHERE iso_code_2 = 'BL'), '97133'), -- Village/Area
('Colombier', (SELECT id FROM world_countries WHERE iso_code_2 = 'BL'), '97133'), -- Village/Area
('Corossol', (SELECT id FROM world_countries WHERE iso_code_2 = 'BL'), '97133'), -- Fishing village/Area
('Flamands', (SELECT id FROM world_countries WHERE iso_code_2 = 'BL'), '97133'), -- Area known for beach
('Public', (SELECT id FROM world_countries WHERE iso_code_2 = 'BL'), '97133'), -- Area near Gustavia
('Anse des Cayes', (SELECT id FROM world_countries WHERE iso_code_2 = 'BL'), '97133'); -- Area

-- End of Saint Barthélemy locality list (Main Town and Areas)

/*
-- ============================================
-- == Información sobre Saint Barthélemy ==
-- ============================================
--
-- Descripción General:
-- San Bartolomé (Saint Barthélemy), comúnmente conocida como St. Barts o St. Barths,
-- es una pequeña isla volcánica y una colectividad de ultramar de Francia, ubicada
-- en el Mar Caribe, parte de las Antillas Menores (Islas de Sotavento). Se encuentra
-- cerca de las islas de San Martín, Saba y San Eustaquio. Es mundialmente conocida
-- como un destino turístico de lujo, popular entre celebridades y personas adineradas,
-- famosa por sus playas, tiendas de diseño y restaurantes de alta gama.
--
-- Ciudades Principales (Localidades):
-- La isla funciona como una única colectividad. Las principales áreas son:
-- * Gustavia: La capital y principal puerto, nombrada en honor al rey Gustavo III
--   de Suecia. Conocida por su puerto de yates, tiendas libres de impuestos y
--   arquitectura con reminiscencias suecas.
-- * Saint-Jean (St Jean): Una de las áreas más populares, con una famosa playa,
--   hoteles y tiendas, ubicada cerca del pequeño aeropuerto.
-- * Lorient, Colombier, Corossol, Flamands: Otras áreas residenciales o con playas conocidas.
--
-- Un Poco de Historia:
-- Avistada por Colón en 1493 (nombrada por su hermano Bartolomé). Fue reclamada por
-- Francia en el siglo XVII y colonizada. En 1784, Francia cedió la isla a Suecia a
-- cambio de derechos comerciales en Gotemburgo. Gustavia se convirtió en un puerto
-- franco próspero bajo dominio sueco. En 1878, Suecia vendió la isla de nuevo a
-- Francia. Formó parte administrativamente de Guadalupe hasta 2007, cuando los
-- habitantes votaron en referéndum para convertirse en una colectividad de ultramar
-- separada de Francia, con mayor autonomía fiscal y administrativa.
--
-- Datos Adicionales:
-- Como colectividad de ultramar francesa, utiliza el euro. El francés es el idioma
-- oficial. El turismo de lujo es la base casi exclusiva de su economía. Es conocida
-- por sus estrictas regulaciones de construcción para preservar el carácter de la isla.
--
*/
