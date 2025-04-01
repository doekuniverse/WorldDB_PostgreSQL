-- SQL Script to insert a representative sample of significant cities and towns for Bangladesh (BD).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Bangladesh (BD).

-- NOTE: Bangladesh is extremely densely populated. This list includes the capital, divisional HQs,
-- district HQs (Zilas), and a sample of significant Upazila towns.
-- Listing every single village is IMPOSSIBLE.
-- Postal codes are 4 digits; examples or '0000' placeholder are provided.

-- Inserting cities for Bangladesh (BD) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Divisional Cities
('Dhaka', (SELECT id FROM world_countries WHERE iso_code_2 = 'BD'), '1000'), -- Capital & Divisional HQ
('Chittagong (Chattogram)', (SELECT id FROM world_countries WHERE iso_code_2 = 'BD'), '4000'), -- Divisional HQ & Major Port
('Khulna', (SELECT id FROM world_countries WHERE iso_code_2 = 'BD'), '9000'), -- Divisional HQ
('Rajshahi', (SELECT id FROM world_countries WHERE iso_code_2 = 'BD'), '6000'), -- Divisional HQ
('Sylhet', (SELECT id FROM world_countries WHERE iso_code_2 = 'BD'), '3100'), -- Divisional HQ
('Barisal', (SELECT id FROM world_countries WHERE iso_code_2 = 'BD'), '8200'), -- Divisional HQ
('Rangpur', (SELECT id FROM world_countries WHERE iso_code_2 = 'BD'), '5400'), -- Divisional HQ
('Mymensingh', (SELECT id FROM world_countries WHERE iso_code_2 = 'BD'), '2200'), -- Divisional HQ

-- Major District Capitals & Other Cities (Sample)
('Comilla', (SELECT id FROM world_countries WHERE iso_code_2 = 'BD'), '3500'),
('Bogra (Bogura)', (SELECT id FROM world_countries WHERE iso_code_2 = 'BD'), '5800'),
('Jessore (Jashore)', (SELECT id FROM world_countries WHERE iso_code_2 = 'BD'), '7400'),
('Narayanganj', (SELECT id FROM world_countries WHERE iso_code_2 = 'BD'), '1400'), -- Near Dhaka
('Gazipur', (SELECT id FROM world_countries WHERE iso_code_2 = 'BD'), '1700'), -- Near Dhaka
('Rangamati', (SELECT id FROM world_countries WHERE iso_code_2 = 'BD'), '4500'),
('Cox''s Bazar', (SELECT id FROM world_countries WHERE iso_code_2 = 'BD'), '4700'), -- Tourist city
('Dinajpur', (SELECT id FROM world_countries WHERE iso_code_2 = 'BD'), '5200'),
('Pabna', (SELECT id FROM world_countries WHERE iso_code_2 = 'BD'), '6600'),
('Tangail', (SELECT id FROM world_countries WHERE iso_code_2 = 'BD'), '1900'),
('Feni', (SELECT id FROM world_countries WHERE iso_code_2 = 'BD'), '3900'),
('Brahmanbaria', (SELECT id FROM world_countries WHERE iso_code_2 = 'BD'), '3400'),
('Chandpur', (SELECT id FROM world_countries WHERE iso_code_2 = 'BD'), '3600'),
('Faridpur', (SELECT id FROM world_countries WHERE iso_code_2 = 'BD'), '7800'),
('Kushtia', (SELECT id FROM world_countries WHERE iso_code_2 = 'BD'), '7000'),
('Noakhali (Maijdee)', (SELECT id FROM world_countries WHERE iso_code_2 = 'BD'), '3800'), -- District HQ is Maijdee
('Sirajganj', (SELECT id FROM world_countries WHERE iso_code_2 = 'BD'), '6700'),
('Jamalpur', (SELECT id FROM world_countries WHERE iso_code_2 = 'BD'), '2000'),
('Kishoreganj', (SELECT id FROM world_countries WHERE iso_code_2 = 'BD'), '2300'),
('Netrokona', (SELECT id FROM world_countries WHERE iso_code_2 = 'BD'), '2400'),
('Thakurgaon', (SELECT id FROM world_countries WHERE iso_code_2 = 'BD'), '5100'),
('Naogaon', (SELECT id FROM world_countries WHERE iso_code_2 = 'BD'), '6500'),
('Satkhira', (SELECT id FROM world_countries WHERE iso_code_2 = 'BD'), '9400'),
('Bagerhat', (SELECT id FROM world_countries WHERE iso_code_2 = 'BD'), '9300'), -- UNESCO site nearby
('Patuakhali', (SELECT id FROM world_countries WHERE iso_code_2 = 'BD'), '8600'),
('Bhola', (SELECT id FROM world_countries WHERE iso_code_2 = 'BD'), '8300'),
('Pirojpur', (SELECT id FROM world_countries WHERE iso_code_2 = 'BD'), '8500'),
('Jhalokati', (SELECT id FROM world_countries WHERE iso_code_2 = 'BD'), '8400'),
('Barguna', (SELECT id FROM world_countries WHERE iso_code_2 = 'BD'), '8700'),
('Habiganj', (SELECT id FROM world_countries WHERE iso_code_2 = 'BD'), '3300'),
('Moulvibazar', (SELECT id FROM world_countries WHERE iso_code_2 = 'BD'), '3200'),
('Sunamganj', (SELECT id FROM world_countries WHERE iso_code_2 = 'BD'), '3000'),
('Gaibandha', (SELECT id FROM world_countries WHERE iso_code_2 = 'BD'), '5700'),
('Kurigram', (SELECT id FROM world_countries WHERE iso_code_2 = 'BD'), '5600'),
('Lalmonirhat', (SELECT id FROM world_countries WHERE iso_code_2 = 'BD'), '5500'),
('Nilphamari', (SELECT id FROM world_countries WHERE iso_code_2 = 'BD'), '5300'),
('Panchagarh', (SELECT id FROM world_countries WHERE iso_code_2 = 'BD'), '5000'),
('Sherpur', (SELECT id FROM world_countries WHERE iso_code_2 = 'BD'), '2100'),
('Savar', (SELECT id FROM world_countries WHERE iso_code_2 = 'BD'), '1340'), -- Important Upazila near Dhaka
('Tongi', (SELECT id FROM world_countries WHERE iso_code_2 = 'BD'), '1710'); -- Major industrial town near Dhaka (Gazipur)


-- End of Bangladesh city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Bangladesh ==
-- ====================================
--
-- Descripción General:
-- Bangladesh es un país ubicado en el sur de Asia, situado en el delta fértil
-- formado por los ríos Ganges, Brahmaputra y Meghna. Es uno de los países más
-- densamente poblados del mundo. Su geografía es mayormente plana y de baja
-- altitud, lo que lo hace muy vulnerable a las inundaciones monzónicas y a los
-- efectos del cambio climático. Limita con India por casi todos lados, excepto
-- por una pequeña frontera con Myanmar al sureste y la Bahía de Bengala al sur.
--
-- Ciudades Principales:
-- * Dhaka (Daca): La capital y ciudad más grande, un megacentro urbano bullicioso
--   y el corazón político y económico del país.
-- * Chittagong (Chattogram): La segunda ciudad más grande y el principal puerto marítimo.
-- * Khulna: Importante centro industrial y puerta de entrada a los Sundarbans.
-- * Rajshahi: Conocida por su seda y su ubicación junto al río Ganges (Padma).
-- * Sylhet: Centro de la región noreste, conocida por sus plantaciones de té.
-- * La lista incluye también las otras capitales divisionales y muchas capitales de distrito.
--
-- Un Poco de Historia:
-- La región tiene una rica historia como parte de Bengala. Fue parte de la India
-- Británica hasta la partición de 1947, cuando se convirtió en Pakistán Oriental.
-- Debido a diferencias políticas, económicas y lingüísticas con Pakistán Occidental,
-- surgió un movimiento nacionalista que culminó en la Guerra de Liberación de
-- Bangladesh en 1971, logrando la independencia con el apoyo de India. Desde
-- entonces, el país ha enfrentado desafíos como la pobreza y los desastres
-- naturales, pero también ha logrado avances significativos en desarrollo humano
-- y crecimiento económico, especialmente en la industria textil.
--
-- Datos Adicionales:
-- El bengalí es el idioma oficial. Bangladesh es un país predominantemente musulmán.
-- Es extremadamente fluvial, con cientos de ríos que juegan un papel crucial en la
-- vida y la economía. Los Sundarbans, el bosque de manglares más grande del mundo
-- y hogar del tigre de Bengala, se encuentran en parte en Bangladesh.
--
*/
