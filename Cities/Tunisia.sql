-- SQL Script to insert a representative sample of significant cities and towns for Tunisia (TN).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Tunisia (TN).

-- NOTE: Tunisia is divided into 24 governorates, which contain numerous delegations, sectors (imadas), towns, and villages.
-- Listing every single settlement is impractical for this format. This list focuses on the national capital,
-- major coastal and interior cities (often governorate capitals), and a sample of other significant towns.
-- Postal codes in Tunisia use a 4-digit format (NNNN). A representative code is provided where possible,
-- but usage/data availability might vary. Using '0000' as a placeholder if unavailable.

-- Inserting cities/towns for Tunisia (TN) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- National Capital & Major Coastal Cities
('Tunis', (SELECT id FROM world_countries WHERE iso_code_2 = 'TN'), '1000'), -- National Capital (Tunis Governorate Capital)
('Sfax', (SELECT id FROM world_countries WHERE iso_code_2 = 'TN'), '3000'), -- Second Largest City / Major Port (Sfax Governorate Capital)
('Sousse', (SELECT id FROM world_countries WHERE iso_code_2 = 'TN'), '4000'), -- Major City / Tourist Hub (Sousse Governorate Capital)
('Bizerte', (SELECT id FROM world_countries WHERE iso_code_2 = 'TN'), '7000'), -- Major Port City (Bizerte Governorate Capital)
('Gabès', (SELECT id FROM world_countries WHERE iso_code_2 = 'TN'), '6000'), -- Coastal Industrial City (Gabès Governorate Capital)
('La Marsa', (SELECT id FROM world_countries WHERE iso_code_2 = 'TN'), '2070'), -- Coastal town / Suburb of Tunis (Tunis Governorate)
('Hammamet', (SELECT id FROM world_countries WHERE iso_code_2 = 'TN'), '8050'), -- Major Tourist Resort Town (Nabeul Governorate)
('Monastir', (SELECT id FROM world_countries WHERE iso_code_2 = 'TN'), '5000'), -- Coastal City / Historic Site (Monastir Governorate Capital)
('Nabeul', (SELECT id FROM world_countries WHERE iso_code_2 = 'TN'), '8000'), -- Coastal City / Crafts Center (Nabeul Governorate Capital)

-- Major Interior Cities / Governorate Capitals (Sample)
('Kairouan', (SELECT id FROM world_countries WHERE iso_code_2 = 'TN'), '3100'), -- Historic Islamic Center (Kairouan Governorate Capital)
('Gafsa', (SELECT id FROM world_countries WHERE iso_code_2 = 'TN'), '2100'), -- Mining Center (Gafsa Governorate Capital)
('Sidi Bouzid', (SELECT id FROM world_countries WHERE iso_code_2 = 'TN'), '9100'), -- Sidi Bouzid Governorate Capital (Origin of Arab Spring)
('Kasserine', (SELECT id FROM world_countries WHERE iso_code_2 = 'TN'), '1200'), -- Kasserine Governorate Capital
('Jendouba', (SELECT id FROM world_countries WHERE iso_code_2 = 'TN'), '8100'), -- Jendouba Governorate Capital
('Béja', (SELECT id FROM world_countries WHERE iso_code_2 = 'TN'), '9000'), -- Béja Governorate Capital
('Le Kef', (SELECT id FROM world_countries WHERE iso_code_2 = 'TN'), '7100'), -- El Kef Governorate Capital
('Médenine', (SELECT id FROM world_countries WHERE iso_code_2 = 'TN'), '4100'), -- Medenine Governorate Capital (Southern Tunisia)
('Tataouine', (SELECT id FROM world_countries WHERE iso_code_2 = 'TN'), '3200'), -- Tataouine Governorate Capital (Southern Tunisia)
('Tozeur', (SELECT id FROM world_countries WHERE iso_code_2 = 'TN'), '2200'), -- Oasis City (Tozeur Governorate Capital)
('Kebili', (SELECT id FROM world_countries WHERE iso_code_2 = 'TN'), '4200'); -- Oasis City (Kebili Governorate Capital)


-- End of Tunisia city/town list (Representative Sample)

/*
-- =============================================
-- ==      Información sobre Túnez           ==
-- =============================================
--
-- Descripción General:
-- Túnez, oficialmente la República Tunecina, es un país ubicado en el norte de África,
-- en la costa del Mar Mediterráneo. Limita con Argelia al oeste y suroeste, y con
-- Libia al sureste. Es el país más septentrional de África. Su geografía incluye
-- una costa mediterránea fértil, el extremo oriental de las montañas del Atlas y el
-- inicio del desierto del Sahara en el sur. Su ubicación lo ha convertido en un
-- cruce de caminos de civilizaciones a lo largo de la historia.
--
-- Ciudades Principales:
-- * Túnez (Tunis): La capital y ciudad más grande, ubicada cerca de la costa noreste.
--   Es el centro político, económico y cultural. Cerca se encuentran las ruinas de Cartago.
-- * Sfax: La segunda ciudad más grande, importante centro industrial y puerto en la costa este.
-- * Susa (Sousse): Tercera ciudad más grande, centro turístico e histórico con una medina
--   declarada Patrimonio de la Humanidad.
-- * Kairuán (Kairouan): Importante centro religioso e histórico en el interior, considerada
--   la cuarta ciudad santa del Islam. Su Gran Mezquita es Patrimonio de la Humanidad.
-- * Bizerta (Bizerte): Ciudad portuaria histórica en el extremo norte del país.
-- * Gabes, Gafsa: Ciudades importantes en el centro y sur, centros industriales o mineros.
-- * Hammamet, Monastir: Populares destinos turísticos costeros.
--
-- Un Poco de Historia:
-- La región fue el centro de la civilización cartaginesa (fundada por fenicios), que
-- rivalizó con Roma hasta su destrucción en las Guerras Púnicas. Se convirtió en la
-- próspera provincia romana de África. Fue conquistada por los vándalos, luego por los
-- bizantinos y finalmente por los árabes musulmanes en el siglo VII, quienes fundaron
-- Kairuán. Formó parte de varios califatos y dinastías árabes y bereberes. Fue
-- incorporada al Imperio Otomano en el siglo XVI, aunque gobernada por beys locales
-- con considerable autonomía. En 1881, Francia estableció un protectorado sobre Túnez.
-- El país obtuvo la independencia de Francia en 1956, convirtiéndose en república bajo
-- el liderazgo de Habib Bourguiba. Zine El Abidine Ben Ali lo sucedió en 1987 y gobernó
-- hasta 2011, cuando fue derrocado durante la Revolución Tunecina (parte de la Primavera
-- Árabe), que comenzó en Sidi Bouzid. Desde entonces, Túnez ha experimentado una
-- transición democrática con desafíos políticos y económicos.
--
-- Datos Adicionales:
-- El árabe es el idioma oficial. El francés es ampliamente utilizado en la educación,
-- los negocios y la administración. El árabe tunecino es el dialecto local. La gran
-- mayoría de la población es árabe-bereber y musulmana sunita. Túnez es conocido por
-- sus sitios arqueológicos romanos y cartagineses, medinas históricas, playas mediterráneas
-- y paisajes desérticos. El turismo, la agricultura (aceite de oliva, dátiles, cítricos),
-- la manufactura (textiles) y los fosfatos son importantes para la economía.
--
*/
