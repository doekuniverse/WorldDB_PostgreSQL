-- SQL Script regarding localities for the French Southern Territories (TF).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains French Southern Territories (TF).

-- NOTE: The French Southern Territories are largely UNINHABITED except for research personnel
-- at scientific bases or small military detachments on some islands. There are NO civilian cities or towns.
-- This list includes the main bases and island groups.
-- Postal codes are not applicable in a standard way; using '00000' as a placeholder.

-- Inserting main bases / island groups for French Southern Territories (TF) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Subantarctic Islands (Main Bases)
('Port-aux-Français', (SELECT id FROM world_countries WHERE iso_code_2 = 'TF'), '00000'), -- Main base on Kerguelen Islands
('Alfred Faure Station', (SELECT id FROM world_countries WHERE iso_code_2 = 'TF'), '00000'), -- Base on Île de la Possession, Crozet Islands
('Martin-de-Viviès Station', (SELECT id FROM world_countries WHERE iso_code_2 = 'TF'), '00000'), -- Base on Île Amsterdam (Amsterdam & St Paul Islands)

-- Adélie Land (Antarctic Claim - Main Base)
('Dumont d''Urville Station', (SELECT id FROM world_countries WHERE iso_code_2 = 'TF'), '00000'), -- Base in Adélie Land, Antarctica

-- Scattered Islands (Îles Éparses) in the Indian Ocean (Main Islands/Locations with minimal presence)
('Europa Island', (SELECT id FROM world_countries WHERE iso_code_2 = 'TF'), '00000'), -- Îles Éparses (Military detachment/weather station)
('Bassas da India', (SELECT id FROM world_countries WHERE iso_code_2 = 'TF'), '00000'), -- Îles Éparses (Uninhabited atoll)
('Juan de Nova Island', (SELECT id FROM world_countries WHERE iso_code_2 = 'TF'), '00000'), -- Îles Éparses (Military detachment/weather station)
('Glorioso Islands (Îles Glorieuses)', (SELECT id FROM world_countries WHERE iso_code_2 = 'TF'), '00000'), -- Îles Éparses (Military detachment/weather station)
('Tromelin Island', (SELECT id FROM world_countries WHERE iso_code_2 = 'TF'), '00000'); -- Îles Éparses (Weather station)


-- End of French Southern Territories locality list (Bases & Main Islands)

/*
-- =====================================================================
-- == Información sobre French Southern Territories (Tierras Australes y Antárticas Francesas - TAAF) ==
-- =====================================================================
--
-- Descripción General:
-- Las Tierras Australes y Antárticas Francesas (TAAF) son un territorio de ultramar
-- de Francia. Consisten en cinco distritos muy dispersos geográficamente:
-- 1. Islas Kerguelen (archipiélago subantártico en el sur del Océano Índico).
-- 2. Islas Crozet (archipiélago subantártico en el sur del Océano Índico).
-- 3. Islas de San Pablo y Ámsterdam (islas subantárticas en el sur del Océano Índico).
-- 4. Tierra Adelia (Adélie Land): Reclamación territorial francesa en la Antártida
--    (no reconocida internacionalmente bajo el Tratado Antártico).
-- 5. Islas Dispersas del Océano Índico (Îles Éparses): Un grupo de islas tropicales
--    alrededor de Madagascar (Europa, Bassas da India, Juan de Nova, Gloriosas, Tromelin).
-- Estos territorios están prácticamente deshabitados, sin población civil permanente.
--
-- Ciudades Principales (Localidades / Bases):
-- No existen ciudades ni pueblos. La presencia humana se limita a:
-- * Bases científicas en las islas subantárticas y Tierra Adelia, operadas por el
--   Instituto Polar Francés Paul-Émile Victor (IPEV): Port-aux-Français (Kerguelen),
--   Alfred Faure (Crozet), Martin-de-Viviès (Ámsterdam), Dumont d'Urville (Tierra Adelia).
-- * Pequeños destacamentos militares y personal de estaciones meteorológicas en
--   algunas de las Islas Dispersas (Europa, Juan de Nova, Gloriosas, Tromelin).
-- * Bassas da India es un atolón deshabitado.
--
-- Un Poco de Historia:
-- Las diversas islas fueron descubiertas por exploradores europeos (franceses,
-- británicos, etc.) entre los siglos XVI y XIX. Francia afirmó su soberanía sobre
-- ellas en diferentes momentos. Las TAAF fueron establecidas formalmente como un
-- territorio de ultramar en 1955. Tierra Adelia es parte de la reclamación
-- antártica francesa desde 1924. Las Islas Dispersas fueron administradas desde
-- Madagascar o Reunión hasta que se unieron a las TAAF en 2007. La principal
-- actividad en estos territorios es la investigación científica (clima, biología,
-- geofísica) y la vigilancia de las zonas económicas exclusivas.
--
-- Datos Adicionales:
-- Estos territorios albergan importantes poblaciones de aves marinas, pingüinos,
-- focas y elefantes marinos. Son áreas de gran interés para la conservación y la
-- investigación del cambio climático. El acceso a la mayoría de estos lugares es
-- extremadamente restringido y logísticamente complejo.
--
*/
