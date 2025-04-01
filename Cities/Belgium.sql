-- SQL Script to insert a representative sample of significant cities and municipalities for Belgium (BE).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Belgium (BE).

-- NOTE: Belgium is densely populated with many municipalities (communes/gemeenten).
-- This list includes the capital, provincial capitals, and a broad sample of major cities and significant towns.
-- Listing every single locality or sub-municipality (deelgemeente) is IMPOSSIBLE.
-- Postal codes are 4 digits; examples or '0000' placeholder are provided.

-- Inserting cities for Belgium (BE) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Regional/Provincial Capitals
('Brussels (City of)', (SELECT id FROM world_countries WHERE iso_code_2 = 'BE'), '1000'), -- National Capital (Bruxelles/Brussel)
('Antwerp (Antwerpen)', (SELECT id FROM world_countries WHERE iso_code_2 = 'BE'), '2000'), -- Provincial Capital (Antwerp), Largest city in Flanders
('Ghent (Gent)', (SELECT id FROM world_countries WHERE iso_code_2 = 'BE'), '9000'), -- Provincial Capital (East Flanders)
('Charleroi', (SELECT id FROM world_countries WHERE iso_code_2 = 'BE'), '6000'), -- Largest city in Wallonia (Hainaut)
('Liège (Luik)', (SELECT id FROM world_countries WHERE iso_code_2 = 'BE'), '4000'), -- Provincial Capital (Liège)
('Bruges (Brugge)', (SELECT id FROM world_countries WHERE iso_code_2 = 'BE'), '8000'), -- Provincial Capital (West Flanders)
('Namur (Namen)', (SELECT id FROM world_countries WHERE iso_code_2 = 'BE'), '5000'), -- Provincial Capital (Namur), Capital of Wallonia
('Leuven', (SELECT id FROM world_countries WHERE iso_code_2 = 'BE'), '3000'), -- Provincial Capital (Flemish Brabant)
('Mons (Bergen)', (SELECT id FROM world_countries WHERE iso_code_2 = 'BE'), '7000'), -- Provincial Capital (Hainaut)
('Hasselt', (SELECT id FROM world_countries WHERE iso_code_2 = 'BE'), '3500'), -- Provincial Capital (Limburg)
('Aalst', (SELECT id FROM world_countries WHERE iso_code_2 = 'BE'), '9300'), -- East Flanders
('Mechelen', (SELECT id FROM world_countries WHERE iso_code_2 = 'BE'), '2800'), -- Antwerp Province
('La Louvière', (SELECT id FROM world_countries WHERE iso_code_2 = 'BE'), '7100'), -- Hainaut
('Kortrijk', (SELECT id FROM world_countries WHERE iso_code_2 = 'BE'), '8500'), -- West Flanders
('Ostend (Oostende)', (SELECT id FROM world_countries WHERE iso_code_2 = 'BE'), '8400'), -- West Flanders (Coast)
('Tournai (Doornik)', (SELECT id FROM world_countries WHERE iso_code_2 = 'BE'), '7500'), -- Hainaut
('Genk', (SELECT id FROM world_countries WHERE iso_code_2 = 'BE'), '3600'), -- Limburg
('Seraing', (SELECT id FROM world_countries WHERE iso_code_2 = 'BE'), '4100'), -- Liège Province
('Roeselare', (SELECT id FROM world_countries WHERE iso_code_2 = 'BE'), '8800'), -- West Flanders
('Mouscron (Moeskroen)', (SELECT id FROM world_countries WHERE iso_code_2 = 'BE'), '7700'), -- Hainaut
('Verviers', (SELECT id FROM world_countries WHERE iso_code_2 = 'BE'), '4800'), -- Liège Province
('Wavre (Waver)', (SELECT id FROM world_countries WHERE iso_code_2 = 'BE'), '1300'), -- Provincial Capital (Walloon Brabant)
('Arlon (Aarlen)', (SELECT id FROM world_countries WHERE iso_code_2 = 'BE'), '6700'), -- Provincial Capital (Luxembourg)
('Sint-Niklaas', (SELECT id FROM world_countries WHERE iso_code_2 = 'BE'), '9100'), -- East Flanders
('Beveren', (SELECT id FROM world_countries WHERE iso_code_2 = 'BE'), '9120'), -- East Flanders (Port area)
('Dendermonde', (SELECT id FROM world_countries WHERE iso_code_2 = 'BE'), '9200'), -- East Flanders
('Beringen', (SELECT id FROM world_countries WHERE iso_code_2 = 'BE'), '3580'), -- Limburg
('Turnhout', (SELECT id FROM world_countries WHERE iso_code_2 = 'BE'), '2300'), -- Antwerp Province
('Vilvoorde', (SELECT id FROM world_countries WHERE iso_code_2 = 'BE'), '1800'), -- Flemish Brabant
('Herstal', (SELECT id FROM world_countries WHERE iso_code_2 = 'BE'), '4040'), -- Liège Province
('Waregem', (SELECT id FROM world_countries WHERE iso_code_2 = 'BE'), '8790'), -- West Flanders
('Châtelet', (SELECT id FROM world_countries WHERE iso_code_2 = 'BE'), '6200'), -- Hainaut
('Binche', (SELECT id FROM world_countries WHERE iso_code_2 = 'BE'), '7130'), -- Hainaut (Known for Carnival)
('Halle', (SELECT id FROM world_countries WHERE iso_code_2 = 'BE'), '1500'), -- Flemish Brabant
('Ypres (Ieper)', (SELECT id FROM world_countries WHERE iso_code_2 = 'BE'), '8900'), -- West Flanders (WWI site)
('Lier', (SELECT id FROM world_countries WHERE iso_code_2 = 'BE'), '2500'), -- Antwerp Province
('Menen', (SELECT id FROM world_countries WHERE iso_code_2 = 'BE'), '8930'), -- West Flanders
('Tienen (Tirlemont)', (SELECT id FROM world_countries WHERE iso_code_2 = 'BE'), '3300'), -- Flemish Brabant
('Lokeren', (SELECT id FROM world_countries WHERE iso_code_2 = 'BE'), '9160'), -- East Flanders
('Geel', (SELECT id FROM world_countries WHERE iso_code_2 = 'BE'), '2440'), -- Antwerp Province
('Ninove', (SELECT id FROM world_countries WHERE iso_code_2 = 'BE'), '9400'), -- East Flanders
('Knokke-Heist', (SELECT id FROM world_countries WHERE iso_code_2 = 'BE'), '8300'), -- West Flanders (Coast)
('Waterloo', (SELECT id FROM world_countries WHERE iso_code_2 = 'BE'), '1410'), -- Walloon Brabant (Battle site)
('Eupen', (SELECT id FROM world_countries WHERE iso_code_2 = 'BE'), '4700'); -- Capital of German-speaking Community

-- Other Municipalities in Brussels-Capital Region (Examples)
-- ('Schaerbeek (Schaarbeek)', (SELECT id FROM world_countries WHERE iso_code_2 = 'BE'), '1030'),
-- ('Anderlecht', (SELECT id FROM world_countries WHERE iso_code_2 = 'BE'), '1070'),
-- ('Uccle (Ukkel)', (SELECT id FROM world_countries WHERE iso_code_2 = 'BE'), '1180'),
-- ('Molenbeek-Saint-Jean (Sint-Jans-Molenbeek)', (SELECT id FROM world_countries WHERE iso_code_2 = 'BE'), '1080');


-- End of Belgium city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Belgium ==
-- ====================================
--
-- Descripción General:
-- Bélgica (Belgium) es un país de Europa Occidental, miembro fundador de la Unión
-- Europea y sede de importantes organizaciones internacionales como la UE y la
-- OTAN en su capital, Bruselas. Es una monarquía constitucional federal con una
-- estructura compleja dividida en tres regiones (Flandes de habla neerlandesa,
-- Valonia de habla francesa y la Región bilingüe de Bruselas-Capital) y tres
-- comunidades lingüísticas (flamenca, francesa y germanófona).
--
-- Ciudades Principales:
-- * Bruselas (Bruxelles/Brussel): La capital de Bélgica y de facto de la Unión Europea.
--   Es una ciudad bilingüe (francés/neerlandés) y multicultural.
-- * Amberes (Antwerpen): La ciudad más grande de Flandes, importante puerto mundial
--   y centro del comercio de diamantes.
-- * Gante (Gent): Ciudad histórica y universitaria en Flandes.
-- * Brujas (Brugge): Famosa por sus canales y centro medieval bien conservado
--   (Patrimonio de la Humanidad).
-- * Lieja (Liège): La ciudad más grande de Valonia después de Charleroi, centro
--   industrial y cultural.
-- * Charleroi: La ciudad más grande de Valonia.
-- * La lista incluye también las capitales de provincia y otras ciudades importantes.
--
-- Un Poco de Historia:
-- El territorio belga ha sido parte de diversos imperios y estados a lo largo de
-- la historia (romano, franco, Borgoña, Habsburgo españoles y austriacos, Francia,
-- Reino Unido de los Países Bajos). Bélgica obtuvo su independencia de los Países
-- Bajos en 1830 tras la Revolución Belga. El país fue escenario de importantes
-- batallas durante la Primera y Segunda Guerra Mundial. La historia reciente está
-- marcada por la federalización del estado para acomodar las diferencias
-- lingüísticas y culturales entre flamencos y valones.
--
-- Datos Adicionales:
-- Bélgica es famosa por sus chocolates, cervezas (con cientos de variedades),
-- gofres (waffles) y papas fritas (french fries, aunque su origen es disputado).
-- Es también cuna de famosos cómics como Tintín y Los Pitufos.
--
*/
