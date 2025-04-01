-- SQL Script to insert a more extensive list of significant villages and areas for Anguilla (AI).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Anguilla (AI).

-- NOTE: This list includes the capital and other main villages/districts, expanded for better coverage.
-- Absolute completeness of every minor settlement is challenging.
-- Anguilla uses a single postal code (AI-2640) for the entire territory.

-- Inserting cities/villages for Anguilla (AI) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
('The Valley', (SELECT id FROM world_countries WHERE iso_code_2 = 'AI'), 'AI-2640'), -- Capital
('George Hill', (SELECT id FROM world_countries WHERE iso_code_2 = 'AI'), 'AI-2640'),
('Stoney Ground', (SELECT id FROM world_countries WHERE iso_code_2 = 'AI'), 'AI-2640'),
('South Hill', (SELECT id FROM world_countries WHERE iso_code_2 = 'AI'), 'AI-2640'),
('Island Harbour', (SELECT id FROM world_countries WHERE iso_code_2 = 'AI'), 'AI-2640'),
('Sandy Ground', (SELECT id FROM world_countries WHERE iso_code_2 = 'AI'), 'AI-2640'), -- Known for beach/restaurants
('Blowing Point', (SELECT id FROM world_countries WHERE iso_code_2 = 'AI'), 'AI-2640'), -- Ferry terminal
('West End Village', (SELECT id FROM world_countries WHERE iso_code_2 = 'AI'), 'AI-2640'),
('North Hill Village', (SELECT id FROM world_countries WHERE iso_code_2 = 'AI'), 'AI-2640'),
('Sandy Hill', (SELECT id FROM world_countries WHERE iso_code_2 = 'AI'), 'AI-2640'),
('East End Village', (SELECT id FROM world_countries WHERE iso_code_2 = 'AI'), 'AI-2640'),
('Welches Hill', (SELECT id FROM world_countries WHERE iso_code_2 = 'AI'), 'AI-2640'),
('Long Bay Village', (SELECT id FROM world_countries WHERE iso_code_2 = 'AI'), 'AI-2640'),
('Shoal Bay Village', (SELECT id FROM world_countries WHERE iso_code_2 = 'AI'), 'AI-2640'); -- Known for Shoal Bay Beach

-- End of Anguilla village list (Extended Sample)

/*
-- ====================================
-- == Información sobre Anguilla ==
-- ====================================
--
-- Descripción General:
-- Anguilla es un Territorio Británico de Ultramar situado en el Caribe oriental,
-- al este de Puerto Rico y las Islas Vírgenes. Es una isla relativamente plana,
-- baja y de piedra caliza/coral, famosa por sus espectaculares playas de arena
-- blanca y aguas turquesas. El turismo de lujo es la base de su economía.
--
-- Ciudades Principales (Localidades):
-- * The Valley: Es la capital y el centro administrativo y comercial de la isla.
-- * Otras localidades importantes incluyen George Hill, Stoney Ground, South Hill,
--   Island Harbour, Sandy Ground (popular por su playa y restaurantes) y
--   Blowing Point (donde se ubica la terminal del ferry a St. Martin). La lista
--   incluye también otros pueblos y distritos reconocidos.
--
-- Un Poco de Historia:
-- Colonizada por ingleses desde St. Kitts en 1650, Anguilla fue administrada
-- por el Reino Unido. Durante un tiempo formó parte de una federación con
-- San Cristóbal y Nieves (St. Kitts and Nevis), pero Anguilla se separó
-- formalmente en 1980 tras un periodo de autoproclamada república y la
-- intervención británica, permaneciendo como territorio británico dependiente.
--
-- Datos Adicionales:
-- El idioma oficial es el inglés. No tiene impuestos directos significativos,
-- lo que atrae a algunas empresas financieras. Es un destino popular para
-- yates y viajeros que buscan exclusividad y tranquilidad.
--
*/
