-- SQL Script to insert a representative sample of significant towns and areas for Brunei Darussalam (BN).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Brunei Darussalam (BN).

-- NOTE: This list includes the capital, major towns, district centers, and significant areas/kampongs.
-- Listing every single kampong (village) is IMPOSSIBLE.
-- Postal codes are XX####; examples or 'AA0000' placeholder are provided.

-- Inserting cities/towns for Brunei (BN) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Major Towns / District Centers
('Bandar Seri Begawan', (SELECT id FROM world_countries WHERE iso_code_2 = 'BN'), 'BS8611'), -- Capital (Brunei-Muara District)
('Kuala Belait', (SELECT id FROM world_countries WHERE iso_code_2 = 'BN'), 'KA1131'), -- Belait District Capital
('Seria', (SELECT id FROM world_countries WHERE iso_code_2 = 'BN'), 'KB1133'), -- Major oil town (Belait District)
('Tutong', (SELECT id FROM world_countries WHERE iso_code_2 = 'BN'), 'TA1141'), -- Tutong District Capital (Pekan Tutong)
('Bangar', (SELECT id FROM world_countries WHERE iso_code_2 = 'BN'), 'PA1151'), -- Temburong District Capital

-- Other Significant Areas / Kampongs (Sample)
('Muara', (SELECT id FROM world_countries WHERE iso_code_2 = 'BN'), 'BT1128'), -- Port town (Brunei-Muara District)
('Gadong', (SELECT id FROM world_countries WHERE iso_code_2 = 'BN'), 'BE1118'), -- Major commercial area (Brunei-Muara)
('Sengkurong', (SELECT id FROM world_countries WHERE iso_code_2 = 'BN'), 'BG1121'), -- Mukim/Area (Brunei-Muara)
('Jerudong', (SELECT id FROM world_countries WHERE iso_code_2 = 'BN'), 'BG3122'), -- Area with park/hotel (Brunei-Muara)
('Mentiri', (SELECT id FROM world_countries WHERE iso_code_2 = 'BN'), 'BU1129'), -- Mukim/Area (Brunei-Muara)
('Berakas', (SELECT id FROM world_countries WHERE iso_code_2 = 'BN'), 'BB3713'), -- Mukim/Area (Brunei-Muara, near airport)
('Lumut', (SELECT id FROM world_countries WHERE iso_code_2 = 'BN'), 'KC2935'), -- Town/Area (Belait District)
('Labi', (SELECT id FROM world_countries WHERE iso_code_2 = 'BN'), 'KC1135'), -- Mukim/Area (Belait District)
('Kiudang', (SELECT id FROM world_countries WHERE iso_code_2 = 'BN'), 'TE1543'), -- Mukim/Area (Tutong District)
('Lamunin', (SELECT id FROM world_countries WHERE iso_code_2 = 'BN'), 'TG2141'); -- Mukim/Area (Tutong District)


-- End of Brunei locality list (Representative Sample)

/*
-- ==========================================
-- == Información sobre Brunei Darussalam ==
-- ==========================================
--
-- Descripción General:
-- Brunei Darussalam (Nación de Brunei, Morada de la Paz) es un pequeño sultanato
-- islámico ubicado en la costa norte de la isla de Borneo, en el Sudeste Asiático.
-- Está completamente rodeado por Malasia, excepto por su costa en el Mar de China
-- Meridional. El país está dividido en dos partes separadas por una franja de
-- territorio malasio. Su riqueza proviene principalmente de extensos yacimientos
-- de petróleo y gas natural. Es una monarquía absoluta.
--
-- Ciudades Principales:
-- * Bandar Seri Begawan (BSB): La capital y ciudad más grande, sede del Sultán,
--   conocida por sus mezquitas opulentas (como la Mezquita Omar Ali Saifuddien)
--   y el pueblo flotante de Kampong Ayer.
-- * Kuala Belait: Centro administrativo del distrito de Belait y segunda ciudad
--   más grande.
-- * Seria: El corazón de la industria petrolera de Brunei.
-- * Tutong y Bangar: Centros administrativos de sus respectivos distritos.
--
-- Un Poco de Historia:
-- El Sultanato de Brunei fue una potencia regional importante entre los siglos XV
-- y XVII, controlando gran parte de Borneo y partes de Filipinas. Su poder decayó
-- y perdió territorio frente a potencias europeas y los Rajás Blancos de Sarawak.
-- Se convirtió en un protectorado británico en 1888. El descubrimiento de petróleo
-- en 1929 transformó su economía. Brunei optó por no unirse a Malasia en 1963 y
-- obtuvo la plena independencia del Reino Unido en 1984. El Sultán Hassanal
-- Bolkiah ha gobernado desde 1967.
--
-- Datos Adicionales:
-- El malayo es el idioma oficial y el islam es la religión oficial. Brunei tiene
-- uno de los Índices de Desarrollo Humano más altos del Sudeste Asiático debido
-- a su riqueza petrolera, que financia un estado de bienestar generoso para sus
-- ciudadanos (sin impuesto sobre la renta, educación y salud gratuitas). En 2014
-- implementó una interpretación estricta de la Sharia (ley islámica).
--
*/
