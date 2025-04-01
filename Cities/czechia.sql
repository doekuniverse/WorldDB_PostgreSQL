-- SQL Script to insert a representative sample of significant cities and towns for Czechia (CZ).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Czechia (CZ).

-- NOTE: Czechia has over 6,200 municipalities (obce). This list includes the capital, regional capitals,
-- statutory cities, and a broad sample of significant towns. Listing every single locality is IMPOSSIBLE.
-- Postal codes are 5 digits (sometimes ### ##); examples or '00000' placeholder are provided.

-- Inserting cities for Czechia (CZ) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Regional Capitals (Krajské město) / Major Cities
('Prague (Praha)', (SELECT id FROM world_countries WHERE iso_code_2 = 'CZ'), '11000'), -- National Capital & Capital Region
('Brno', (SELECT id FROM world_countries WHERE iso_code_2 = 'CZ'), '60200'), -- South Moravian Region Capital
('Ostrava', (SELECT id FROM world_countries WHERE iso_code_2 = 'CZ'), '70200'), -- Moravian-Silesian Region Capital
('Plzeň (Pilsen)', (SELECT id FROM world_countries WHERE iso_code_2 = 'CZ'), '30100'), -- Plzeň Region Capital
('Liberec', (SELECT id FROM world_countries WHERE iso_code_2 = 'CZ'), '46001'), -- Liberec Region Capital
('Olomouc', (SELECT id FROM world_countries WHERE iso_code_2 = 'CZ'), '77900'), -- Olomouc Region Capital
('Ústí nad Labem', (SELECT id FROM world_countries WHERE iso_code_2 = 'CZ'), '40001'), -- Ústí nad Labem Region Capital
('Hradec Králové', (SELECT id FROM world_countries WHERE iso_code_2 = 'CZ'), '50002'), -- Hradec Králové Region Capital
('České Budějovice', (SELECT id FROM world_countries WHERE iso_code_2 = 'CZ'), '37001'), -- South Bohemian Region Capital
('Pardubice', (SELECT id FROM world_countries WHERE iso_code_2 = 'CZ'), '53002'), -- Pardubice Region Capital
('Zlín', (SELECT id FROM world_countries WHERE iso_code_2 = 'CZ'), '76001'), -- Zlín Region Capital
('Karlovy Vary', (SELECT id FROM world_countries WHERE iso_code_2 = 'CZ'), '36001'), -- Karlovy Vary Region Capital
('Jihlava', (SELECT id FROM world_countries WHERE iso_code_2 = 'CZ'), '58601'), -- Vysočina Region Capital

-- Other Major/Statutory Cities & Significant Towns (Sample)
('Havířov', (SELECT id FROM world_countries WHERE iso_code_2 = 'CZ'), '73601'), -- Moravian-Silesian Region
('Kladno', (SELECT id FROM world_countries WHERE iso_code_2 = 'CZ'), '27201'), -- Central Bohemian Region
('Most', (SELECT id FROM world_countries WHERE iso_code_2 = 'CZ'), '43401'), -- Ústí nad Labem Region
('Karviná', (SELECT id FROM world_countries WHERE iso_code_2 = 'CZ'), '73301'), -- Moravian-Silesian Region
('Opava', (SELECT id FROM world_countries WHERE iso_code_2 = 'CZ'), '74601'), -- Moravian-Silesian Region
('Frýdek-Místek', (SELECT id FROM world_countries WHERE iso_code_2 = 'CZ'), '73801'), -- Moravian-Silesian Region
('Teplice', (SELECT id FROM world_countries WHERE iso_code_2 = 'CZ'), '41501'), -- Ústí nad Labem Region
('Děčín', (SELECT id FROM world_countries WHERE iso_code_2 = 'CZ'), '40502'), -- Ústí nad Labem Region
('Chomutov', (SELECT id FROM world_countries WHERE iso_code_2 = 'CZ'), '43001'), -- Ústí nad Labem Region
('Jablonec nad Nisou', (SELECT id FROM world_countries WHERE iso_code_2 = 'CZ'), '46601'), -- Liberec Region
('Přerov', (SELECT id FROM world_countries WHERE iso_code_2 = 'CZ'), '75002'), -- Olomouc Region
('Prostějov', (SELECT id FROM world_countries WHERE iso_code_2 = 'CZ'), '79601'), -- Olomouc Region
('Mladá Boleslav', (SELECT id FROM world_countries WHERE iso_code_2 = 'CZ'), '29301'), -- Central Bohemian Region
('Český Krumlov', (SELECT id FROM world_countries WHERE iso_code_2 = 'CZ'), '38101'), -- South Bohemian Region (UNESCO site)
('Třebíč', (SELECT id FROM world_countries WHERE iso_code_2 = 'CZ'), '67401'), -- Vysočina Region (UNESCO site)
('Tábor', (SELECT id FROM world_countries WHERE iso_code_2 = 'CZ'), '39001'), -- South Bohemian Region
('Znojmo', (SELECT id FROM world_countries WHERE iso_code_2 = 'CZ'), '66902'), -- South Moravian Region
('Příbram', (SELECT id FROM world_countries WHERE iso_code_2 = 'CZ'), '26101'), -- Central Bohemian Region
('Cheb', (SELECT id FROM world_countries WHERE iso_code_2 = 'CZ'), '35002'), -- Karlovy Vary Region
('Trutnov', (SELECT id FROM world_countries WHERE iso_code_2 = 'CZ'), '54101'), -- Hradec Králové Region
('Kolín', (SELECT id FROM world_countries WHERE iso_code_2 = 'CZ'), '28002'), -- Central Bohemian Region
('Kutná Hora', (SELECT id FROM world_countries WHERE iso_code_2 = 'CZ'), '28401'), -- Central Bohemian Region (UNESCO site)
('Šumperk', (SELECT id FROM world_countries WHERE iso_code_2 = 'CZ'), '78701'), -- Olomouc Region
('Vsetín', (SELECT id FROM world_countries WHERE iso_code_2 = 'CZ'), '75501'), -- Zlín Region
('Kroměříž', (SELECT id FROM world_countries WHERE iso_code_2 = 'CZ'), '76701'); -- Zlín Region (UNESCO site)


-- End of Czechia city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Czechia ==
-- ====================================
--
-- Descripción General:
-- Chequia (Czechia), oficialmente República Checa, es un país sin salida al mar
-- ubicado en Europa Central. Limita con Alemania al oeste, Austria al sur,
-- Eslovaquia al este y Polonia al noreste. El país está compuesto por las regiones
-- históricas de Bohemia, Moravia y parte de Silesia. Su paisaje es variado, con
-- mesetas, colinas y montañas bajas que rodean las cuencas de los ríos Elba (Labe)
-- y Morava. Es una república parlamentaria y miembro de la Unión Europea y la OTAN.
--
-- Ciudades Principales:
-- * Praga (Praha): La capital y ciudad más grande, una de las ciudades más bellas
--   y visitadas de Europa, con un centro histórico (Puente de Carlos, Castillo de
--   Praga, Plaza de la Ciudad Vieja) declarado Patrimonio de la Humanidad por la UNESCO.
-- * Brno: La segunda ciudad más grande y capital de la región histórica de Moravia.
-- * Ostrava: Principal centro industrial en la región de Moravia-Silesia.
-- * Plzeň (Pilsen): Famosa por ser la cuna de la cerveza Pilsner.
-- * Liberec, Olomouc, Ústí nad Labem, Hradec Králové, České Budějovice, Pardubice,
--   Zlín, Karlovy Vary, Jihlava: Capitales de las demás regiones (kraje).
-- * La lista incluye también otras ciudades estatutarias y pueblos importantes.
--
-- Un Poco de Historia:
-- La región fue habitada por celtas y germanos antes de la llegada de los eslavos.
-- Fue el centro del Reino de Bohemia, una potencia importante dentro del Sacro
-- Imperio Romano Germánico y luego parte del Imperio Habsburgo durante siglos.
-- Tras la Primera Guerra Mundial y la disolución del Imperio Austrohúngaro, se
-- formó Checoslovaquia (junto con Eslovaquia). Fue ocupada por Alemania durante la
-- Segunda Guerra Mundial. Después de la guerra, se convirtió en un estado comunista
-- bajo influencia soviética. La Primavera de Praga de 1968 fue aplastada por la
-- invasión del Pacto de Varsovia. La Revolución de Terciopelo de 1989 puso fin
-- pacíficamente al régimen comunista. Checoslovaquia se disolvió pacíficamente
-- el 1 de enero de 1993, dando lugar a la República Checa y Eslovaquia.
--
-- Datos Adicionales:
-- El checo es el idioma oficial. Chequia tiene una de las tasas de consumo de
-- cerveza per cápita más altas del mundo. El país es famoso por sus numerosos
-- castillos y palacios, su cristal de Bohemia y sus compositores clásicos como
-- Dvořák y Smetana.
--
*/
