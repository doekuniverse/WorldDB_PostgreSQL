-- SQL Script to insert a representative sample of significant cities and towns for Trinidad and Tobago (TT).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Trinidad and Tobago (TT).

-- NOTE: Trinidad and Tobago is divided into Cities, Boroughs, and Regional Corporations, which contain numerous communities and villages.
-- Listing every single settlement is impractical for this format. This list focuses on the national capital,
-- designated Cities and Boroughs, and major towns/administrative centers within the Regional Corporations.
-- Trinidad and Tobago has a postal code system (NNNNNN), but usage/data availability can be inconsistent; using '000000' as a placeholder.

-- Inserting cities/towns for Trinidad and Tobago (TT) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- National Capital, Cities & Boroughs
('Port of Spain', (SELECT id FROM world_countries WHERE iso_code_2 = 'TT'), '000000'), -- National Capital (City Corporation)
('San Fernando', (SELECT id FROM world_countries WHERE iso_code_2 = 'TT'), '000000'), -- Second largest city (City Corporation)
('Chaguanas', (SELECT id FROM world_countries WHERE iso_code_2 = 'TT'), '000000'), -- Largest Borough (functions as a major city)
('Arima', (SELECT id FROM world_countries WHERE iso_code_2 = 'TT'), '000000'), -- Borough (Royal Charter)
('Point Fortin', (SELECT id FROM world_countries WHERE iso_code_2 = 'TT'), '000000'), -- Borough (Industrial town)

-- Major Towns / Regional Centers (Sample)
('Tunapuna', (SELECT id FROM world_countries WHERE iso_code_2 = 'TT'), '000000'), -- Major town in Tunapuna–Piarco Regional Corporation
('Sangre Grande', (SELECT id FROM world_countries WHERE iso_code_2 = 'TT'), '000000'), -- Main town in Sangre Grande Regional Corporation
('Scarborough', (SELECT id FROM world_countries WHERE iso_code_2 = 'TT'), '000000'), -- Main town and administrative center of Tobago (Tobago House of Assembly)
('Couva', (SELECT id FROM world_countries WHERE iso_code_2 = 'TT'), '000000'), -- Major town in Couva–Tabaquite–Talparo Regional Corporation
('Princes Town', (SELECT id FROM world_countries WHERE iso_code_2 = 'TT'), '000000'), -- Main town in Princes Town Regional Corporation
('Siparia', (SELECT id FROM world_countries WHERE iso_code_2 = 'TT'), '000000'), -- Main town in Siparia Regional Corporation
('Penal', (SELECT id FROM world_countries WHERE iso_code_2 = 'TT'), '000000'), -- Town in Penal–Debe Regional Corporation
('Rio Claro', (SELECT id FROM world_countries WHERE iso_code_2 = 'TT'), '000000'); -- Town in Rio Claro–Mayaro Regional Corporation


-- End of Trinidad and Tobago city/town list (Representative Sample)

/*
-- ======================================================
-- ==    Información sobre Trinidad y Tobago           ==
-- ======================================================
--
-- Descripción General:
-- Trinidad y Tobago, oficialmente la República de Trinidad y Tobago, es un país
-- insular situado en el extremo sur del Mar Caribe, frente a la costa noreste de
-- Venezuela. Consiste en dos islas principales, Trinidad y Tobago, y numerosas
-- islas más pequeñas. Trinidad es la isla más grande y poblada, mientras que Tobago
-- es más pequeña y conocida por sus playas y turismo. El país es conocido por su
-- diversidad cultural y sus festivales, especialmente el Carnaval.
--
-- Ciudades y Centros Principales:
-- * Port of Spain: La capital, ubicada en Trinidad. Es el centro administrativo,
--   financiero y portuario principal.
-- * San Fernando: La segunda ciudad más grande, centro industrial en el sur de Trinidad.
-- * Chaguanas: El borough más grande y de más rápido crecimiento, importante centro
--   comercial en el centro de Trinidad.
-- * Arima, Point Fortin: Otros boroughs con estatus municipal.
-- * Scarborough: El principal pueblo y centro administrativo de la isla de Tobago.
-- * Tunapuna, Sangre Grande, Couva: Importantes centros urbanos dentro de las
--   Corporaciones Regionales en Trinidad.
--
-- Un Poco de Historia:
-- Habitadas originalmente por pueblos amerindios (caribes y arawaks). Trinidad fue
-- avistada por Cristóbal Colón en 1498 y colonizada por España. Fue cedida a Gran
-- Bretaña en 1802. Tobago cambió de manos entre varias potencias europeas (incluyendo
-- Curlandia) antes de quedar finalmente bajo control británico y ser unida
-- administrativamente a Trinidad en 1889. La economía colonial se basó en plantaciones
-- (azúcar, cacao) trabajadas por esclavos africanos y, tras la abolición, por
-- trabajadores contratados, principalmente de la India Británica, lo que creó una
-- sociedad muy diversa étnicamente. El país obtuvo la independencia del Reino Unido
-- en 1962 y se convirtió en república en 1976.
--
-- Datos Adicionales:
-- El inglés es el idioma oficial. También se hablan criollos basados en el inglés,
-- hindi caribeño (bhojpuri), español y otros. Los dos grupos étnicos principales
-- son los descendientes de africanos y los descendientes de indios (indo-trinitenses),
-- con minorías significativas de origen mixto, europeo, chino y sirio-libanés. Las
-- religiones principales son el cristianismo (católico, anglicano, pentecostal) y el
-- hinduismo, con una minoría musulmana. Trinidad y Tobago es famosa por ser la cuna
-- del steelpan (tambor metálico), el calipso y la soca. Su Carnaval es uno de los más
-- grandes y famosos del mundo. La economía se basa en gran medida en el petróleo y el
-- gas natural, siendo uno de los países más ricos del Caribe.
--
*/
