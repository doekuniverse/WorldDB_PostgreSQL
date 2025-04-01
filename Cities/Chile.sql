-- SQL Script to insert a representative sample of significant cities, towns, and communes for Chile (CL).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Chile (CL).

-- NOTE: Chile is a long country with many localities. This list includes the capital, regional/provincial capitals,
-- and a broad sample of major cities and significant communes. Listing every single locality is IMPOSSIBLE.
-- Postal codes are 7 digits; examples or '0000000' placeholder are provided.

-- Inserting cities for Chile (CL) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Regional Capitals / Major Cities
('Santiago', (SELECT id FROM world_countries WHERE iso_code_2 = 'CL'), '8320000'), -- National Capital (Metropolitan Region)
('Arica', (SELECT id FROM world_countries WHERE iso_code_2 = 'CL'), '1000000'), -- Arica y Parinacota Region Capital
('Iquique', (SELECT id FROM world_countries WHERE iso_code_2 = 'CL'), '1100000'), -- Tarapacá Region Capital
('Antofagasta', (SELECT id FROM world_countries WHERE iso_code_2 = 'CL'), '1240000'), -- Antofagasta Region Capital
('Copiapó', (SELECT id FROM world_countries WHERE iso_code_2 = 'CL'), '1530000'), -- Atacama Region Capital
('La Serena', (SELECT id FROM world_countries WHERE iso_code_2 = 'CL'), '1700000'), -- Coquimbo Region Capital
('Valparaíso', (SELECT id FROM world_countries WHERE iso_code_2 = 'CL'), '2340000'), -- Valparaíso Region Capital, Major Port, UNESCO site
('Rancagua', (SELECT id FROM world_countries WHERE iso_code_2 = 'CL'), '2820000'), -- O'Higgins Region Capital
('Talca', (SELECT id FROM world_countries WHERE iso_code_2 = 'CL'), '3460000'), -- Maule Region Capital
('Chillán', (SELECT id FROM world_countries WHERE iso_code_2 = 'CL'), '3780000'), -- Ñuble Region Capital
('Concepción', (SELECT id FROM world_countries WHERE iso_code_2 = 'CL'), '4030000'), -- Biobío Region Capital
('Temuco', (SELECT id FROM world_countries WHERE iso_code_2 = 'CL'), '4780000'), -- Araucanía Region Capital
('Valdivia', (SELECT id FROM world_countries WHERE iso_code_2 = 'CL'), '5090000'), -- Los Ríos Region Capital
('Puerto Montt', (SELECT id FROM world_countries WHERE iso_code_2 = 'CL'), '5480000'), -- Los Lagos Region Capital
('Coyhaique', (SELECT id FROM world_countries WHERE iso_code_2 = 'CL'), '6000000'), -- Aysén Region Capital
('Punta Arenas', (SELECT id FROM world_countries WHERE iso_code_2 = 'CL'), '6200000'), -- Magallanes Region Capital

-- Major Communes in Santiago Metropolitan Region (Sample)
('Puente Alto', (SELECT id FROM world_countries WHERE iso_code_2 = 'CL'), '8150000'),
('Maipú', (SELECT id FROM world_countries WHERE iso_code_2 = 'CL'), '9250000'), -- User's location
('La Florida', (SELECT id FROM world_countries WHERE iso_code_2 = 'CL'), '8240000'),
('San Bernardo', (SELECT id FROM world_countries WHERE iso_code_2 = 'CL'), '8050000'),
('Las Condes', (SELECT id FROM world_countries WHERE iso_code_2 = 'CL'), '7550000'),
('Peñalolén', (SELECT id FROM world_countries WHERE iso_code_2 = 'CL'), '7910000'),
('Providencia', (SELECT id FROM world_countries WHERE iso_code_2 = 'CL'), '7500000'),
('Ñuñoa', (SELECT id FROM world_countries WHERE iso_code_2 = 'CL'), '7750000'),
('Estación Central', (SELECT id FROM world_countries WHERE iso_code_2 = 'CL'), '9160000'),
('Pudahuel', (SELECT id FROM world_countries WHERE iso_code_2 = 'CL'), '9020000'),
('Recoleta', (SELECT id FROM world_countries WHERE iso_code_2 = 'CL'), '8420000'),
('Quilicura', (SELECT id FROM world_countries WHERE iso_code_2 = 'CL'), '8700000'),

-- Other Significant Cities / Provincial Capitals / Communes (Sample)
('Viña del Mar', (SELECT id FROM world_countries WHERE iso_code_2 = 'CL'), '2520000'), -- Valparaíso Region (Major coastal city)
('Talcahuano', (SELECT id FROM world_countries WHERE iso_code_2 = 'CL'), '4260000'), -- Biobío Region (Major port)
('Coquimbo', (SELECT id FROM world_countries WHERE iso_code_2 = 'CL'), '1800000'), -- Coquimbo Region (Near La Serena)
('Osorno', (SELECT id FROM world_countries WHERE iso_code_2 = 'CL'), '5290000'), -- Los Lagos Region
('Los Ángeles', (SELECT id FROM world_countries WHERE iso_code_2 = 'CL'), '4440000'), -- Biobío Region
('Calama', (SELECT id FROM world_countries WHERE iso_code_2 = 'CL'), '1390000'), -- Antofagasta Region (Mining center)
('Puerto Varas', (SELECT id FROM world_countries WHERE iso_code_2 = 'CL'), '5550000'), -- Los Lagos Region (Tourist town)
('Curicó', (SELECT id FROM world_countries WHERE iso_code_2 = 'CL'), '3340000'), -- Maule Region
('Quilpué', (SELECT id FROM world_countries WHERE iso_code_2 = 'CL'), '2430000'), -- Valparaíso Region
('Villa Alemana', (SELECT id FROM world_countries WHERE iso_code_2 = 'CL'), '6500000'), -- Valparaíso Region (Postal code seems off, using example)
('Linares', (SELECT id FROM world_countries WHERE iso_code_2 = 'CL'), '3580000'), -- Maule Region
('Peñaflor', (SELECT id FROM world_countries WHERE iso_code_2 = 'CL'), '9750000'), -- Metropolitan Region
('Melipilla', (SELECT id FROM world_countries WHERE iso_code_2 = 'CL'), '9580000'), -- Metropolitan Region
('San Antonio', (SELECT id FROM world_countries WHERE iso_code_2 = 'CL'), '2660000'), -- Valparaíso Region (Major port)
('Ovalle', (SELECT id FROM world_countries WHERE iso_code_2 = 'CL'), '1840000'), -- Coquimbo Region
('Quillota', (SELECT id FROM world_countries WHERE iso_code_2 = 'CL'), '2260000'), -- Valparaíso Region
('San Felipe', (SELECT id FROM world_countries WHERE iso_code_2 = 'CL'), '2170000'), -- Valparaíso Region
('Los Andes', (SELECT id FROM world_countries WHERE iso_code_2 = 'CL'), '2100000'), -- Valparaíso Region
('San Fernando', (SELECT id FROM world_countries WHERE iso_code_2 = 'CL'), '3070000'), -- O'Higgins Region
('Angol', (SELECT id FROM world_countries WHERE iso_code_2 = 'CL'), '4650000'), -- Araucanía Region
('Villarrica', (SELECT id FROM world_countries WHERE iso_code_2 = 'CL'), '4930000'), -- Araucanía Region (Tourist town)
('Castro', (SELECT id FROM world_countries WHERE iso_code_2 = 'CL'), '5700000'), -- Los Lagos Region (Chiloé Island)
('Ancud', (SELECT id FROM world_countries WHERE iso_code_2 = 'CL'), '5710000'), -- Los Lagos Region (Chiloé Island)
('Puerto Natales', (SELECT id FROM world_countries WHERE iso_code_2 = 'CL'), '6160000'), -- Magallanes Region (Gateway to Torres del Paine)
('Vallenar', (SELECT id FROM world_countries WHERE iso_code_2 = 'CL'), '1610000'), -- Atacama Region
('Coronel', (SELECT id FROM world_countries WHERE iso_code_2 = 'CL'), '4190000'), -- Biobío Region
('Lota', (SELECT id FROM world_countries WHERE iso_code_2 = 'CL'), '4220000'); -- Biobío Region (Former coal mining town)

-- End of Chile city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Chile ==
-- ====================================
--
-- Descripción General:
-- Chile es un país largo y estrecho ubicado en el oeste de América del Sur. Se
-- extiende a lo largo de la costa del Océano Pacífico, con la Cordillera de los
-- Andes al este. Su forma única le otorga una gran diversidad climática y
-- geográfica, desde el Desierto de Atacama (el más árido del mundo) en el norte,
-- pasando por un clima mediterráneo en el centro, climas alpinos en los Andes,
-- hasta climas oceánicos y de tundra en el extremo sur (Patagonia). Chile también
-- administra territorios insulares en el Pacífico, incluyendo la Isla de Pascua
-- (Rapa Nui) y el Archipiélago Juan Fernández.
--
-- Ciudades Principales:
-- * Santiago: La capital y ciudad más grande, ubicada en el valle central, concentra
--   una gran parte de la población y la actividad económica del país.
-- * Valparaíso: Principal puerto y sede del Congreso Nacional, famosa por sus cerros,
--   ascensores y coloridas casas (Patrimonio de la Humanidad). Junto a Viña del Mar
--   forma una gran conurbación costera.
-- * Concepción: Centro industrial y universitario en el sur, corazón de la Región del Biobío.
-- * Antofagasta y Calama: Importantes centros mineros (cobre) en el norte grande.
-- * La Serena/Coquimbo: Conurbación en el norte chico, centro turístico y agrícola.
-- * Temuco y Puerto Montt: Principales ciudades en el sur, puertas de entrada a la
--   Araucanía y la Patagonia, respectivamente.
-- * Punta Arenas: La ciudad más austral importante del continente americano.
-- * La lista incluye también las demás capitales regionales y muchas comunas/ciudades significativas.
--
-- Un Poco de Historia:
-- Habitado por diversos pueblos indígenas, incluyendo los Mapuches en el centro-sur
-- y bajo influencia Inca en el norte. Fue colonizado por España en el siglo XVI.
-- Chile declaró su independencia en 1810 y la consolidó en 1818. El siglo XIX
-- estuvo marcado por la expansión territorial (Guerra del Pacífico) y la
-- consolidación del estado. El siglo XX vio periodos de inestabilidad política,
-- el gobierno de Salvador Allende (1970-1973) y la dictadura militar de Augusto
-- Pinochet (1973-1990). Desde 1990, Chile ha sido una democracia estable con una
-- economía orientada al mercado, aunque ha enfrentado importantes movimientos
-- sociales recientes demandando cambios estructurales.
--
-- Datos Adicionales:
-- El español es el idioma oficial. Chile es el mayor productor mundial de cobre
-- y un importante exportador de frutas, vino y salmón. El Desierto de Atacama es
-- uno de los mejores lugares del mundo para la observación astronómica. La Isla
-- de Pascua es famosa por sus estatuas Moai.
--
*/
