-- SQL Script to insert a representative sample of significant cities and towns for Eswatini (SZ).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Eswatini (SZ).

-- NOTE: This list includes the capitals, major towns, and regional centers.
-- Listing every single homestead is IMPOSSIBLE.
-- Postal codes are Letter + 3 digits; examples or 'A000' placeholder are provided.

-- Inserting cities for Eswatini (SZ) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capitals & Major Towns / Regional Centers
('Mbabane', (SELECT id FROM world_countries WHERE iso_code_2 = 'SZ'), 'H100'), -- Administrative Capital (Hhohho Region)
('Lobamba', (SELECT id FROM world_countries WHERE iso_code_2 = 'SZ'), 'H101'), -- Legislative/Royal Capital (Hhohho Region)
('Manzini', (SELECT id FROM world_countries WHERE iso_code_2 = 'SZ'), 'M200'), -- Largest urban area, Manzini Region Capital
('Nhlangano', (SELECT id FROM world_countries WHERE iso_code_2 = 'SZ'), 'S400'), -- Shiselweni Region Capital
('Siteki', (SELECT id FROM world_countries WHERE iso_code_2 = 'SZ'), 'L300'), -- Lubombo Region Capital
('Piggs Peak', (SELECT id FROM world_countries WHERE iso_code_2 = 'SZ'), 'H108'), -- Hhohho Region town
('Matsapha', (SELECT id FROM world_countries WHERE iso_code_2 = 'SZ'), 'M202'), -- Manzini Region (Industrial hub near Manzini)
('Malkerns', (SELECT id FROM world_countries WHERE iso_code_2 = 'SZ'), 'M204'), -- Manzini Region (Agricultural area)
('Big Bend', (SELECT id FROM world_countries WHERE iso_code_2 = 'SZ'), 'L311'), -- Lubombo Region (Sugar estate town)
('Simunye', (SELECT id FROM world_countries WHERE iso_code_2 = 'SZ'), 'L301'), -- Lubombo Region (Sugar estate town)
('Mhlume', (SELECT id FROM world_countries WHERE iso_code_2 = 'SZ'), 'L304'), -- Lubombo Region (Sugar estate town)
('Lavumisa', (SELECT id FROM world_countries WHERE iso_code_2 = 'SZ'), 'S405'), -- Shiselweni Region (Border town with South Africa)
('Hlatikulu', (SELECT id FROM world_countries WHERE iso_code_2 = 'SZ'), 'S300'), -- Shiselweni Region
('Bhunya', (SELECT id FROM world_countries WHERE iso_code_2 = 'SZ'), 'M205'), -- Manzini Region (Pulp mill town)
('Kubuta', (SELECT id FROM world_countries WHERE iso_code_2 = 'SZ'), 'S404'); -- Shiselweni Region

-- End of Eswatini city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Eswatini ==
-- ====================================
--
-- Descripción General:
-- El Reino de Eswatini (anteriormente Swazilandia) es un pequeño país sin salida
-- al mar ubicado en el sur de África. Limita con Sudáfrica al norte, oeste y sur,
-- y con Mozambique al este. Es una de las últimas monarquías absolutas que quedan
-- en el mundo. Su geografía varía desde montañas en el oeste (Highveld) hasta
-- sabanas en el este (Lowveld).
--
-- Ciudades Principales:
-- * Mbabane: La capital administrativa y ciudad más grande, ubicada en las tierras altas.
-- * Lobamba: La capital legislativa y tradicional/real, sede del Parlamento y la
--   residencia de la Reina Madre (Indlovukazi).
-- * Manzini: El principal centro comercial e industrial del país.
-- * Nhlangano, Siteki: Capitales de las regiones del sur y este, respectivamente.
-- * Matsapha: Importante corredor industrial entre Mbabane y Manzini.
-- * Big Bend, Simunye, Mhlume: Pueblos asociados a las grandes plantaciones de caña de azúcar.
--
-- Un Poco de Historia:
-- El pueblo Swazi se estableció en la región en el siglo XVIII bajo el liderazgo
-- del rey Ngwane III. El rey Mswati II, en el siglo XIX, consolidó el reino y le
-- dio su nombre (aunque el país volvió a llamarse Eswatini, "tierra de los Swazis",
-- en 2018). A finales del siglo XIX y principios del XX, el reino quedó bajo
-- protección británica como Swazilandia para evitar la anexión por parte de la
-- República Sudafricana (Transvaal). Obtuvo la independencia del Reino Unido en 1968
-- bajo el rey Sobhuza II, quien gobernó durante más de 60 años. Su sucesor, el rey
-- Mswati III, ha mantenido el sistema de monarquía absoluta, aunque ha habido
-- crecientes demandas pro-democracia en años recientes.
--
-- Datos Adicionales:
-- Los idiomas oficiales son el siSwati y el inglés. La cultura Swazi tradicional
-- juega un papel importante en la vida del país, con ceremonias anuales como el
-- Umhlanga (Danza de las Cañas) y el Incwala. La economía depende de la agricultura
-- (azúcar, madera) y la industria ligera, y está estrechamente ligada a la de
-- Sudáfrica. Eswatini tiene una de las tasas de prevalencia de VIH/SIDA más altas
-- del mundo.
--
*/
