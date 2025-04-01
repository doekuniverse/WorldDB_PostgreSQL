-- SQL Script to insert a highly selective sample of major cities and provincial capitals for Indonesia (ID).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Indonesia (ID).

-- NOTE: Indonesia is a vast archipelago with >17,000 islands and is the 4th most populous country.
-- This list includes only a very small fraction, focusing on the national capital, provincial capitals,
-- major cities (kota), and some other very large cities/towns. Listing every locality is ABSOLUTELY IMPOSSIBLE.
-- Postal codes are 5 digits; examples or '00000' placeholder are provided.

-- Inserting cities for Indonesia (ID) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Provincial Capitals / Major Cities
('Jakarta', (SELECT id FROM world_countries WHERE iso_code_2 = 'ID'), '10110'), -- National Capital (DKI Jakarta)
('Surabaya', (SELECT id FROM world_countries WHERE iso_code_2 = 'ID'), '60111'), -- East Java Capital
('Bandung', (SELECT id FROM world_countries WHERE iso_code_2 = 'ID'), '40111'), -- West Java Capital
('Medan', (SELECT id FROM world_countries WHERE iso_code_2 = 'ID'), '20111'), -- North Sumatra Capital
('Semarang', (SELECT id FROM world_countries WHERE iso_code_2 = 'ID'), '50111'), -- Central Java Capital
('Makassar', (SELECT id FROM world_countries WHERE iso_code_2 = 'ID'), '90111'), -- South Sulawesi Capital
('Palembang', (SELECT id FROM world_countries WHERE iso_code_2 = 'ID'), '30111'), -- South Sumatra Capital
('Depok', (SELECT id FROM world_countries WHERE iso_code_2 = 'ID'), '16411'), -- West Java (Jakarta Metro - Jabodetabek)
('Tangerang', (SELECT id FROM world_countries WHERE iso_code_2 = 'ID'), '15111'), -- Banten (Jakarta Metro - Jabodetabek)
('South Tangerang (Tangerang Selatan)', (SELECT id FROM world_countries WHERE iso_code_2 = 'ID'), '15311'), -- Banten (Jakarta Metro - Jabodetabek)
('Bekasi', (SELECT id FROM world_countries WHERE iso_code_2 = 'ID'), '17111'), -- West Java (Jakarta Metro - Jabodetabek)
('Padang', (SELECT id FROM world_countries WHERE iso_code_2 = 'ID'), '25111'), -- West Sumatra Capital
('Denpasar', (SELECT id FROM world_countries WHERE iso_code_2 = 'ID'), '80111'), -- Bali Capital
('Bandar Lampung', (SELECT id FROM world_countries WHERE iso_code_2 = 'ID'), '35111'), -- Lampung Capital
('Pekanbaru', (SELECT id FROM world_countries WHERE iso_code_2 = 'ID'), '28111'), -- Riau Capital
('Bogor', (SELECT id FROM world_countries WHERE iso_code_2 = 'ID'), '16111'), -- West Java (Jakarta Metro - Jabodetabek)
('Malang', (SELECT id FROM world_countries WHERE iso_code_2 = 'ID'), '65111'), -- East Java
('Samarinda', (SELECT id FROM world_countries WHERE iso_code_2 = 'ID'), '75111'), -- East Kalimantan Capital
('Tasikmalaya', (SELECT id FROM world_countries WHERE iso_code_2 = 'ID'), '46111'), -- West Java
('Balikpapan', (SELECT id FROM world_countries WHERE iso_code_2 = 'ID'), '76111'), -- East Kalimantan (Major city)
('Banjarmasin', (SELECT id FROM world_countries WHERE iso_code_2 = 'ID'), '70111'), -- South Kalimantan Capital
('Serang', (SELECT id FROM world_countries WHERE iso_code_2 = 'ID'), '42111'), -- Banten Capital
('Pontianak', (SELECT id FROM world_countries WHERE iso_code_2 = 'ID'), '78111'), -- West Kalimantan Capital
('Cimahi', (SELECT id FROM world_countries WHERE iso_code_2 = 'ID'), '40511'), -- West Java (Bandung Metro)
('Jambi City', (SELECT id FROM world_countries WHERE iso_code_2 = 'ID'), '36111'), -- Jambi Capital
('Surakarta (Solo)', (SELECT id FROM world_countries WHERE iso_code_2 = 'ID'), '57111'), -- Central Java (Major cultural city)
('Manado', (SELECT id FROM world_countries WHERE iso_code_2 = 'ID'), '95111'), -- North Sulawesi Capital
('Yogyakarta', (SELECT id FROM world_countries WHERE iso_code_2 = 'ID'), '55111'), -- Yogyakarta Special Region Capital
('Mataram', (SELECT id FROM world_countries WHERE iso_code_2 = 'ID'), '83111'), -- West Nusa Tenggara Capital
('Kupang', (SELECT id FROM world_countries WHERE iso_code_2 = 'ID'), '85111'), -- East Nusa Tenggara Capital
('Jayapura', (SELECT id FROM world_countries WHERE iso_code_2 = 'ID'), '99111'), -- Papua Capital
('Ambon', (SELECT id FROM world_countries WHERE iso_code_2 = 'ID'), '97111'), -- Maluku Capital
('Bengkulu', (SELECT id FROM world_countries WHERE iso_code_2 = 'ID'), '38111'), -- Bengkulu Capital
('Palu', (SELECT id FROM world_countries WHERE iso_code_2 = 'ID'), '94111'), -- Central Sulawesi Capital
('Kendari', (SELECT id FROM world_countries WHERE iso_code_2 = 'ID'), '93111'), -- Southeast Sulawesi Capital
('Palangka Raya', (SELECT id FROM world_countries WHERE iso_code_2 = 'ID'), '73111'), -- Central Kalimantan Capital
('Tanjung Pinang', (SELECT id FROM world_countries WHERE iso_code_2 = 'ID'), '29111'), -- Riau Islands Capital
('Pangkal Pinang', (SELECT id FROM world_countries WHERE iso_code_2 = 'ID'), '33111'), -- Bangka Belitung Islands Capital
('Gorontalo', (SELECT id FROM world_countries WHERE iso_code_2 = 'ID'), '96111'), -- Gorontalo Capital
('Mamuju', (SELECT id FROM world_countries WHERE iso_code_2 = 'ID'), '91511'), -- West Sulawesi Capital
('Sofifi', (SELECT id FROM world_countries WHERE iso_code_2 = 'ID'), '97818'), -- North Maluku Capital (de jure)
('Ternate', (SELECT id FROM world_countries WHERE iso_code_2 = 'ID'), '97711'), -- North Maluku (Largest city)
('Manokwari', (SELECT id FROM world_countries WHERE iso_code_2 = 'ID'), '98311'), -- West Papua Capital
('Cilegon', (SELECT id FROM world_countries WHERE iso_code_2 = 'ID'), '42411'), -- Banten (Industrial city)
('Batam', (SELECT id FROM world_countries WHERE iso_code_2 = 'ID'), '29411'), -- Riau Islands (Major city near Singapore)
('Pekalongan', (SELECT id FROM world_countries WHERE iso_code_2 = 'ID'), '51111'), -- Central Java
('Cirebon', (SELECT id FROM world_countries WHERE iso_code_2 = 'ID'), '45111'), -- West Java
('Tegal', (SELECT id FROM world_countries WHERE iso_code_2 = 'ID'), '52111'), -- Central Java
('Kediri', (SELECT id FROM world_countries WHERE iso_code_2 = 'ID'), '64111'), -- East Java
('Binjai', (SELECT id FROM world_countries WHERE iso_code_2 = 'ID'), '20711'); -- North Sumatra (Medan Metro)

-- End of Indonesia city list (Highly Selective Sample)

/*
-- ====================================
-- == Información sobre Indonesia ==
-- ====================================
--
-- Descripción General:
-- La República de Indonesia es un país transcontinental ubicado principalmente en el
-- Sudeste Asiático, con algunos territorios en Oceanía. Es el archipiélago más
-- grande del mundo, compuesto por más de 17,000 islas (incluyendo Sumatra, Java,
-- Borneo/Kalimantan, Sulawesi, Nueva Guinea/Papúa). Es el cuarto país más poblado
-- del mundo y el país con la mayor población musulmana. Se encuentra entre los
-- océanos Índico y Pacífico, en una región de alta actividad volcánica y sísmica
-- ("Anillo de Fuego del Pacífico").
--
-- Ciudades Principales:
-- * Yakarta (Jakarta): La capital y ciudad más grande, ubicada en la isla de Java.
--   Es una megaciudad y el centro político, económico y cultural del país. (Nota:
--   Hay planes para trasladar la capital a Nusantara en Kalimantan).
-- * Surabaya: La segunda ciudad más grande, principal centro industrial y puerto en
--   Java Oriental.
-- * Bandung: Tercera ciudad, capital de Java Occidental, centro universitario y cultural.
-- * Medan: La ciudad más grande fuera de Java, ubicada en Sumatra.
-- * Semarang, Makassar, Palembang, Depok, Tangerang, Bekasi: Otras megaciudades o
--   grandes centros urbanos, muchas formando parte de la vasta área metropolitana
--   de Yakarta (Jabodetabek).
-- * La lista incluye también las capitales de todas las provincias y otras ciudades muy grandes.
--
-- Un Poco de Historia:
-- La región fue hogar de importantes reinos e imperios como Srivijaya y Majapahit.
-- Fue colonizada gradualmente por los neerlandeses a partir del siglo XVII, formando
-- las Indias Orientales Neerlandesas. Durante la Segunda Guerra Mundial, fue ocupada
-- por Japón. Indonesia declaró su independencia en 1945, liderada por Sukarno, lo
-- que fue seguido por una guerra de independencia contra los neerlandeses. Sukarno
-- fue el primer presidente, seguido por el largo régimen autoritario de Suharto
-- ("Nuevo Orden", 1967-1998). Tras la caída de Suharto, Indonesia ha experimentado
-- un proceso de democratización ("Reformasi").
--
-- Datos Adicionales:
-- El indonesio (Bahasa Indonesia, basado en el malayo) es el idioma oficial, pero
-- se hablan cientos de lenguas locales. Indonesia es extremadamente diversa
-- étnica, cultural y lingüísticamente ("Unidad en la Diversidad" es el lema nacional).
-- Es miembro del G20 y la economía más grande del Sudeste Asiático. Es famosa por
-- islas como Bali (destino turístico), su biodiversidad (orangutanes, dragones de
-- Komodo), volcanes y templos como Borobudur.
--
*/
