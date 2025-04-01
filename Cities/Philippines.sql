-- SQL Script to insert a highly selective sample of major cities and provincial capitals for the Philippines (PH).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Philippines (PH).

-- NOTE: The Philippines is a vast archipelago with >7000 islands and thousands of localities (barangays).
-- This list includes only a very small fraction, focusing on Metro Manila cities, independent/chartered cities,
-- provincial capitals, and some other very large cities/municipalities. Listing every locality is ABSOLUTELY IMPOSSIBLE.
-- Postal codes are 4 digits; examples or '0000' placeholder are provided.

-- Inserting cities for Philippines (PH) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- National Capital Region (Metro Manila)
('Manila', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '1000'), -- National Capital City
('Quezon City', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '1100'), -- Largest city by population
('Caloocan', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '1400'),
('Las Piñas', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '1740'),
('Makati', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '1200'), -- Major financial center
('Malabon', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '1470'),
('Mandaluyong', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '1550'),
('Marikina', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '1800'),
('Muntinlupa', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '1770'),
('Navotas', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '1485'),
('Parañaque', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '1700'),
('Pasay', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '1300'),
('Pasig', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '1600'),
('San Juan', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '1500'),
('Taguig', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '1630'), -- Includes Bonifacio Global City
('Valenzuela', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '1440'),
('Pateros', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '1620'), -- Municipality within NCR

-- Major Cities / Provincial Capitals (Luzon)
('Baguio', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '2600'), -- Benguet (Chartered City, Summer Capital)
('Angeles', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '2009'), -- Pampanga (Chartered City)
('Olongapo', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '2200'), -- Zambales (Chartered City)
('Dagupan', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '2400'), -- Pangasinan (Independent City)
('San Fernando (Pampanga)', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '2000'), -- Pampanga Provincial Capital
('San Fernando (La Union)', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '2500'), -- La Union Provincial Capital
('Laoag', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '2900'), -- Ilocos Norte Provincial Capital
('Vigan', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '2700'), -- Ilocos Sur Provincial Capital (UNESCO site)
('Tuguegarao', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '3500'), -- Cagayan Provincial Capital
('Ilagan', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '3300'), -- Isabela Provincial Capital
('Santiago', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '3311'), -- Isabela (Independent City)
('Bayombong', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '3700'), -- Nueva Vizcaya Provincial Capital
('Cabanatuan', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '3100'), -- Nueva Ecija (Major city)
('Palayan', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '3132'), -- Nueva Ecija Provincial Capital
('Balanga', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '2100'), -- Bataan Provincial Capital
('Malolos', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '3000'), -- Bulacan Provincial Capital
('Batangas City', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '4200'), -- Batangas Provincial Capital
('Lipa', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '4217'), -- Batangas (Major city)
('Lucena', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '4301'), -- Quezon Provincial Capital (Chartered City)
('Naga', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '4400'), -- Camarines Sur (Independent City)
('Legazpi', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '4500'), -- Albay Provincial Capital
('Sorsogon City', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '4700'), -- Sorsogon Provincial Capital
('Masbate City', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '5400'), -- Masbate Provincial Capital
('Daet', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '4600'), -- Camarines Norte Provincial Capital
('Virac', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '4800'), -- Catanduanes Provincial Capital
('Boac', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '4900'), -- Marinduque Provincial Capital
('Romblon', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '5500'), -- Romblon Provincial Capital
('Calapan', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '5200'), -- Oriental Mindoro Provincial Capital
('Mamburao', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '5106'), -- Occidental Mindoro Provincial Capital
('Puerto Princesa', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '5300'), -- Palawan Provincial Capital (Chartered City)

-- Major Cities / Provincial Capitals (Visayas)
('Cebu City', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '6000'), -- Cebu Provincial Capital (Chartered City)
('Lapu-Lapu', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '6015'), -- Cebu (Chartered City, Mactan Island)
('Mandaue', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '6014'), -- Cebu (Chartered City, Cebu Metro)
('Iloilo City', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '5000'), -- Iloilo Provincial Capital (Chartered City)
('Bacolod', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '6100'), -- Negros Occidental Provincial Capital (Chartered City)
('Tacloban', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '6500'), -- Leyte Provincial Capital (Chartered City)
('Ormoc', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '6541'), -- Leyte (Independent City)
('Tagbilaran', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '6300'), -- Bohol Provincial Capital
('Dumaguete', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '6200'), -- Negros Oriental Provincial Capital
('Roxas City', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '5800'), -- Capiz Provincial Capital
('Kalibo', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '5600'), -- Aklan Provincial Capital
('San Jose de Buenavista', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '5700'), -- Antique Provincial Capital
('Jordan', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '5045'), -- Guimaras Provincial Capital
('Naval', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '6543'), -- Biliran Provincial Capital
('Borongan', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '6800'), -- Eastern Samar Provincial Capital
('Catarman', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '6400'), -- Northern Samar Provincial Capital
('Catbalogan', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '6700'), -- Samar Provincial Capital
('Maasin', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '6600'), -- Southern Leyte Provincial Capital
('Siquijor', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '6225'), -- Siquijor Provincial Capital

-- Major Cities / Provincial Capitals (Mindanao)
('Davao City', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '8000'), -- Davao del Sur (Chartered City, Largest city by area)
('Zamboanga City', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '7000'), -- Chartered City (Zamboanga Peninsula)
('Cagayan de Oro', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '9000'), -- Misamis Oriental Provincial Capital (Chartered City)
('General Santos', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '9500'), -- South Cotabato (Chartered City)
('Iligan', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '9200'), -- Lanao del Norte (Chartered City)
('Butuan', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '8600'), -- Agusan del Norte Provincial Capital (Chartered City)
('Cotabato City', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '9600'), -- Maguindanao del Norte (Part of BARMM)
('Tagum', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '8100'), -- Davao del Norte Provincial Capital
('Surigao City', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '8400'), -- Surigao del Norte Provincial Capital
('Pagadian', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '7016'), -- Zamboanga del Sur Provincial Capital
('Ozamiz', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '7200'), -- Misamis Occidental
('Dipolog', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '7100'), -- Zamboanga del Norte Provincial Capital
('Valencia', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '8709'), -- Bukidnon
('Malaybalay', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '8700'), -- Bukidnon Provincial Capital
('Marawi', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '9700'), -- Lanao del Sur Provincial Capital (BARMM)
('Kidapawan', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '9400'), -- Cotabato Provincial Capital
('Koronadal', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '9506'), -- South Cotabato Provincial Capital
('Mati', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '8200'), -- Davao Oriental Provincial Capital
('Digos', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '8002'), -- Davao del Sur Provincial Capital
('Tandag', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '8300'), -- Surigao del Sur Provincial Capital
('Prosperidad', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '8500'), -- Agusan del Sur Provincial Capital
('San Jose (Dinagat Islands)', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '8427'), -- Dinagat Islands Provincial Capital
('Cabadbaran', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '8605'), -- Agusan del Norte (City)
('Bayugan', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '8502'), -- Agusan del Sur (City)
('Isulan', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '9805'), -- Sultan Kudarat Provincial Capital
('Alabel', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '9501'), -- Sarangani Provincial Capital
('Ipil', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '7001'), -- Zamboanga Sibugay Provincial Capital
('Isabela City', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '7300'), -- Basilan Province (Administered under Zamboanga Peninsula)
('Bongao', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '7500'), -- Tawi-Tawi Provincial Capital (BARMM)
('Jolo', (SELECT id FROM world_countries WHERE iso_code_2 = 'PH'), '7400'); -- Sulu Provincial Capital (BARMM)

-- End of Philippines city list (Highly Selective Sample)

/*
-- ======================================
-- == Información sobre Philippines ==
-- ======================================
--
-- Descripción General:
-- La República de Filipinas es un país insular ubicado en el Sudeste Asiático, en
-- el Océano Pacífico occidental. Consiste en un archipiélago de más de 7,600 islas,
-- que se clasifican generalmente en tres divisiones geográficas principales: Luzón
-- (norte), Visayas (centro) y Mindanao (sur). Limita al este con el Mar de Filipinas,
-- al oeste con el Mar de China Meridional y al sur con el Mar de Célebes. Es conocido
-- por sus playas tropicales, volcanes activos, rica biodiversidad y una cultura
-- resultante de la mezcla de influencias asiáticas, españolas y estadounidenses.
--
-- Ciudades Principales:
-- * Manila: La capital oficial, ubicada en la bahía de Manila en la isla de Luzón.
--   Forma parte de la vasta Región de la Capital Nacional (Metro Manila).
-- * Quezon City: La ciudad más poblada del país, también parte de Metro Manila.
--   Fue la capital anterior.
-- * Metro Manila: La región metropolitana de la capital, que incluye 16 ciudades
--   altamente urbanizadas (como Makati -centro financiero-, Pasig, Taguig, Caloocan)
--   y un municipio (Pateros).
-- * Cebú (Cebu City): Principal centro urbano en la región de Visayas, la ciudad
--   española más antigua del país. Su área metropolitana incluye Lapu-Lapu y Mandaue.
-- * Dávao (Davao City): La ciudad más grande de la isla de Mindanao y una de las
--   más grandes del mundo por área terrestre.
-- * La lista incluye también las capitales de todas las provincias, ciudades
--   independientes/charteadas y otras ciudades muy grandes o significativas.
--
-- Un Poco de Historia:
-- Habitada por pueblos austronesios. La región tuvo interacciones comerciales con
-- China y reinos vecinos. El Islam se introdujo en el sur. Fernando de Magallanes
-- llegó en 1521 y reclamó las islas para España. La colonización española comenzó
-- en 1565 bajo Miguel López de Legazpi, nombrando las islas en honor al rey Felipe II.
-- Filipinas fue una colonia española durante más de 300 años, administrada desde
-- México (Virreinato de Nueva España). El catolicismo se convirtió en la religión
-- dominante. Un movimiento nacionalista surgió a finales del siglo XIX (José Rizal).
-- Tras la Revolución Filipina y la Guerra Hispano-Estadounidense, España cedió
-- Filipinas a Estados Unidos en 1898. Siguió la Guerra Filipino-Estadounidense.
-- Filipinas fue un territorio estadounidense hasta la ocupación japonesa durante la
-- Segunda Guerra Mundial. Obtuvo la plena independencia en 1946. La historia post-
-- independencia incluye periodos democráticos, la ley marcial bajo Ferdinand Marcos
-- (1972-1981) y su derrocamiento en la Revolución del Poder Popular de 1986. El país
-- ha enfrentado desafíos como la pobreza, la corrupción, insurgencias y desastres naturales.
--
-- Datos Adicionales:
-- El filipino (basado en el tagalo) y el inglés son los idiomas oficiales. Es el
-- país con la mayor población católica de Asia. Son famosos los arrozales en terrazas
-- de Banaue (Patrimonio de la Humanidad), los jeepneys (vehículos de transporte público
-- decorados) y la hospitalidad de su gente.
--
*/
