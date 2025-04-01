-- SQL Script to insert the main towns and quartiers for Saint Martin (French part) (MF).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Saint Martin (French part) (MF).

-- NOTE: Saint Martin (French side) is very small. This list includes the capital and main recognized areas/quartiers,
-- providing essentially complete coverage of significant populated places.
-- The entire territory uses the French postal code 97150.

-- Inserting main town and areas for Saint Martin (MF) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
('Marigot', (SELECT id FROM world_countries WHERE iso_code_2 = 'MF'), '97150'), -- Capital
('Grand Case', (SELECT id FROM world_countries WHERE iso_code_2 = 'MF'), '97150'), -- Known for restaurants and regional airport
('Quartier d''Orléans', (SELECT id FROM world_countries WHERE iso_code_2 = 'MF'), '97150'), -- Also known as French Quarter
('Colombier', (SELECT id FROM world_countries WHERE iso_code_2 = 'MF'), '97150'),
('Cul-de-Sac', (SELECT id FROM world_countries WHERE iso_code_2 = 'MF'), '97150'),
('Baie Orientale (Orient Bay)', (SELECT id FROM world_countries WHERE iso_code_2 = 'MF'), '97150'), -- Major beach/tourist area
('Anse Marcel', (SELECT id FROM world_countries WHERE iso_code_2 = 'MF'), '97150'), -- Resort area
('Terres Basses', (SELECT id FROM world_countries WHERE iso_code_2 = 'MF'), '97150'); -- Lowlands area

-- End of Saint Martin (French part) locality list (Main Town and Areas)

/*
-- ======================================================
-- == Información sobre Saint Martin (French part) ==
-- ======================================================
--
-- Descripción General:
-- San Martín (Saint Martin) es una Colectividad de Ultramar de Francia que ocupa la
-- mitad norte de la isla caribeña de San Martín, en las Antillas Menores (Islas de
-- Sotavento). La mitad sur de la isla constituye Sint Maarten, un país constituyente
-- del Reino de los Países Bajos. Es la masa terrestre habitada más pequeña del mundo
-- dividida entre dos naciones. Como parte de Francia, es parte de la Unión Europea
-- y utiliza el euro.
--
-- Ciudades Principales (Localidades):
-- La colectividad funciona en gran medida como una entidad única, pero tiene distintos
-- centros poblados y barrios (quartiers).
-- * Marigot: Es la capital y principal centro administrativo y comercial, ubicada en
--   la costa oeste.
-- * Grand Case: Pueblo en la costa norte, famoso por sus restaurantes gourmet ("capital
--   culinaria del Caribe") y su aeropuerto regional.
-- * Quartier d'Orléans (Barrio Francés): El asentamiento más antiguo de la isla,
--   ubicado en la costa este.
-- * Baie Orientale (Orient Bay): Una de las playas más famosas y desarrolladas
--   turísticamente.
-- * Colombier, Cul-de-Sac, Anse Marcel, Terres Basses: Otras áreas residenciales o turísticas.
--
-- Un Poco de Historia:
-- Habitada por pueblos Arawak y Caribes. Fue avistada por Colón en 1493 (en el día
-- de San Martín de Tours, de ahí su nombre). Tras intentos de colonización por varias
-- potencias, franceses y neerlandeses llegaron casi simultáneamente en 1648 y, en
-- lugar de luchar, firmaron el Tratado de Concordia, dividiendo la isla entre ambos,
-- una división que ha perdurado pacíficamente desde entonces. La parte francesa
-- desarrolló una economía de plantación (azúcar, sal) y luego se enfocó en el turismo.
-- Administrativamente, formó parte de Guadalupe hasta 2007, cuando los habitantes
-- votaron en referéndum para convertirse en una Colectividad de Ultramar separada,
-- con mayor autonomía. La isla fue severamente devastada por el huracán Irma en 2017.
--
-- Datos Adicionales:
-- El francés es el idioma oficial, pero el inglés y el criollo local son ampliamente
-- hablados. La economía depende masivamente del turismo. La isla es conocida por sus
-- playas, su gastronomía y sus compras libres de impuestos.
--
*/
