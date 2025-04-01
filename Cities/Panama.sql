-- SQL Script to insert a representative sample of significant cities and towns for Panama (PA).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Panama (PA).

-- NOTE: Panama has provinces, comarcas, districts, and many corregimientos. This list includes the capital,
-- provincial/comarca capitals, and a broad sample of major cities and significant towns.
-- Listing every single locality is IMPOSSIBLE.
-- Postal codes are not consistently used; using '0000' as a placeholder.

-- Inserting cities for Panama (PA) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Provincial/Comarca Capitals / Major Cities
('Panama City (Ciudad de Panamá)', (SELECT id FROM world_countries WHERE iso_code_2 = 'PA'), '0000'), -- National Capital (Panamá Province)
('San Miguelito', (SELECT id FROM world_countries WHERE iso_code_2 = 'PA'), '0000'), -- Panamá Province (Part of Panama City Metro)
('Colón', (SELECT id FROM world_countries WHERE iso_code_2 = 'PA'), '0000'), -- Colón Province Capital
('David', (SELECT id FROM world_countries WHERE iso_code_2 = 'PA'), '0000'), -- Chiriquí Province Capital
('La Chorrera', (SELECT id FROM world_countries WHERE iso_code_2 = 'PA'), '0000'), -- Panamá Oeste Province Capital
('Santiago', (SELECT id FROM world_countries WHERE iso_code_2 = 'PA'), '0000'), -- Veraguas Province Capital
('Penonomé', (SELECT id FROM world_countries WHERE iso_code_2 = 'PA'), '0000'), -- Coclé Province Capital
('Chitré', (SELECT id FROM world_countries WHERE iso_code_2 = 'PA'), '0000'), -- Herrera Province Capital
('Las Tablas', (SELECT id FROM world_countries WHERE iso_code_2 = 'PA'), '0000'), -- Los Santos Province Capital
('Bocas del Toro', (SELECT id FROM world_countries WHERE iso_code_2 = 'PA'), '0000'), -- Bocas del Toro Province Capital (on Colón Island)
('Changuinola', (SELECT id FROM world_countries WHERE iso_code_2 = 'PA'), '0000'), -- Bocas del Toro Province (Major town)
('La Palma', (SELECT id FROM world_countries WHERE iso_code_2 = 'PA'), '0000'), -- Darién Province Capital
('Unión Chocó', (SELECT id FROM world_countries WHERE iso_code_2 = 'PA'), '0000'), -- Emberá-Wounaan Comarca Capital
('Gaigirgordub (El Porvenir)', (SELECT id FROM world_countries WHERE iso_code_2 = 'PA'), '0000'), -- Guna Yala Comarca Capital
('Llano Tugrí', (SELECT id FROM world_countries WHERE iso_code_2 = 'PA'), '0000'), -- Ngäbe-Buglé Comarca Capital

-- Other Significant Towns / Areas (Sample)
('Arraiján', (SELECT id FROM world_countries WHERE iso_code_2 = 'PA'), '0000'), -- Panamá Oeste Province (Panama City Metro)
('Tocumen', (SELECT id FROM world_countries WHERE iso_code_2 = 'PA'), '0000'), -- Panamá Province (Location of main airport)
('Vista Alegre', (SELECT id FROM world_countries WHERE iso_code_2 = 'PA'), '0000'), -- Panamá Oeste Province (Arraiján District)
('Pacora', (SELECT id FROM world_countries WHERE iso_code_2 = 'PA'), '0000'), -- Panamá Province
('Chepo', (SELECT id FROM world_countries WHERE iso_code_2 = 'PA'), '0000'), -- Panamá Province
('Aguadulce', (SELECT id FROM world_countries WHERE iso_code_2 = 'PA'), '0000'), -- Coclé Province
('Antón', (SELECT id FROM world_countries WHERE iso_code_2 = 'PA'), '0000'), -- Coclé Province
('Bugaba', (SELECT id FROM world_countries WHERE iso_code_2 = 'PA'), '0000'), -- Chiriquí Province
('Soná', (SELECT id FROM world_countries WHERE iso_code_2 = 'PA'), '0000'), -- Veraguas Province
('Boquete', (SELECT id FROM world_countries WHERE iso_code_2 = 'PA'), '0000'), -- Chiriquí Province (Mountain tourist town)
('Volcán', (SELECT id FROM world_countries WHERE iso_code_2 = 'PA'), '0000'), -- Chiriquí Province
('Pedasí', (SELECT id FROM world_countries WHERE iso_code_2 = 'PA'), '0000'); -- Los Santos Province (Coastal tourist town)

-- End of Panama city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Panama ==
-- ====================================
--
-- Descripción General:
-- Panamá es un país ubicado en el extremo sureste de América Central, formando un
-- istmo que conecta América del Norte y del Sur. Limita con Costa Rica al oeste,
-- Colombia al sureste, el Mar Caribe al norte y el Océano Pacífico al sur. Es
-- mundialmente famoso por el Canal de Panamá, una vía de navegación crucial que
-- atraviesa el istmo y conecta los océanos Atlántico y Pacífico.
--
-- Ciudades Principales:
-- * Ciudad de Panamá (Panama City): La capital y ciudad más grande, ubicada cerca
--   de la entrada del Pacífico del Canal. Es un importante centro financiero,
--   comercial y logístico internacional, con un moderno horizonte urbano y un
--   casco antiguo colonial (Patrimonio de la Humanidad). Su área metropolitana
--   incluye distritos como San Miguelito.
-- * Colón: Segunda ciudad principal, ubicada en la entrada caribeña del Canal,
--   sede de la Zona Libre de Colón (una de las más grandes del mundo).
-- * David: Tercera ciudad y principal centro urbano en el oeste del país (provincia
--   de Chiriquí).
-- * La Chorrera y Arraiján: Ciudades importantes en la provincia de Panamá Oeste,
--   parte del área metropolitana de la capital.
-- * Santiago, Penonomé, Chitré, Las Tablas, Bocas del Toro: Otras capitales de
--   provincia significativas.
-- * La lista incluye también las capitales provinciales y de las comarcas indígenas
--   principales, y otras ciudades importantes.
--
-- Un Poco de Historia:
-- Habitada por pueblos indígenas. Fue explorada y colonizada por España a principios
-- del siglo XVI (Vasco Núñez de Balboa cruzó el istmo y avistó el Pacífico en 1513).
-- Formó parte del Virreinato del Perú y luego del Virreinato de Nueva Granada. Tras
-- la independencia de España en 1821, se unió voluntariamente a la Gran Colombia de
-- Simón Bolívar, y permaneció unida a Colombia (con diversos estatus) durante gran
-- parte del siglo XIX. En 1903, Panamá se separó de Colombia con el apoyo de Estados
-- Unidos, que estaba interesado en construir el canal transoceánico. Panamá concedió
-- a EE.UU. derechos a perpetuidad sobre la Zona del Canal. El Canal fue construido
-- por EE.UU. (1904-1914) y administrado por ellos hasta 1999. La historia del siglo
-- XX estuvo marcada por la relación con EE.UU. y la Zona del Canal, así como por
-- periodos de inestabilidad política y gobiernos militares (Omar Torrijos, Manuel
-- Noriega). La invasión estadounidense de 1989 derrocó a Noriega. Desde entonces,
-- Panamá ha sido una democracia estable y ha experimentado un fuerte crecimiento
-- económico, impulsado por el Canal (transferido a Panamá en 1999 y ampliado
-- recientemente), los servicios financieros y la logística.
--
-- Datos Adicionales:
-- El español es el idioma oficial. El dólar estadounidense circula como moneda legal
-- junto con el balboa panameño (vinculado 1:1 al dólar). El Canal de Panamá es una
-- maravilla de la ingeniería y vital para el comercio mundial. Panamá tiene una
-- rica biodiversidad debido a su posición como puente terrestre.
--
*/
