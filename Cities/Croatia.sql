-- SQL Script to insert a representative sample of significant cities and towns for Croatia (HR).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Croatia (HR).

-- NOTE: This list includes the capital, county seats (županija capitals), and a broad sample of major cities
-- and significant towns. Listing every single settlement (naselje) is IMPOSSIBLE.
-- Postal codes are 5 digits; examples or '00000' placeholder are provided.

-- Inserting cities for Croatia (HR) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & County Seats (Županija Capitals) / Major Cities
('Zagreb', (SELECT id FROM world_countries WHERE iso_code_2 = 'HR'), '10000'), -- National Capital & City of Zagreb
('Split', (SELECT id FROM world_countries WHERE iso_code_2 = 'HR'), '21000'), -- Split-Dalmatia County Capital
('Rijeka', (SELECT id FROM world_countries WHERE iso_code_2 = 'HR'), '51000'), -- Primorje-Gorski Kotar County Capital
('Osijek', (SELECT id FROM world_countries WHERE iso_code_2 = 'HR'), '31000'), -- Osijek-Baranja County Capital
('Zadar', (SELECT id FROM world_countries WHERE iso_code_2 = 'HR'), '23000'), -- Zadar County Capital
('Pula', (SELECT id FROM world_countries WHERE iso_code_2 = 'HR'), '52100'), -- Largest city in Istria County
('Slavonski Brod', (SELECT id FROM world_countries WHERE iso_code_2 = 'HR'), '35000'), -- Brod-Posavina County Capital
('Karlovac', (SELECT id FROM world_countries WHERE iso_code_2 = 'HR'), '47000'), -- Karlovac County Capital
('Varaždin', (SELECT id FROM world_countries WHERE iso_code_2 = 'HR'), '42000'), -- Varaždin County Capital
('Šibenik', (SELECT id FROM world_countries WHERE iso_code_2 = 'HR'), '22000'), -- Šibenik-Knin County Capital
('Sisak', (SELECT id FROM world_countries WHERE iso_code_2 = 'HR'), '44000'), -- Sisak-Moslavina County Capital
('Dubrovnik', (SELECT id FROM world_countries WHERE iso_code_2 = 'HR'), '20000'), -- Dubrovnik-Neretva County Capital, UNESCO site
('Bjelovar', (SELECT id FROM world_countries WHERE iso_code_2 = 'HR'), '43000'), -- Bjelovar-Bilogora County Capital
('Koprivnica', (SELECT id FROM world_countries WHERE iso_code_2 = 'HR'), '48000'), -- Koprivnica-Križevci County Capital
('Požega', (SELECT id FROM world_countries WHERE iso_code_2 = 'HR'), '34000'), -- Požega-Slavonia County Capital
('Čakovec', (SELECT id FROM world_countries WHERE iso_code_2 = 'HR'), '40000'), -- Međimurje County Capital
('Virovitica', (SELECT id FROM world_countries WHERE iso_code_2 = 'HR'), '33000'), -- Virovitica-Podravina County Capital
('Vukovar', (SELECT id FROM world_countries WHERE iso_code_2 = 'HR'), '32000'), -- Vukovar-Syrmia County Capital
('Krapina', (SELECT id FROM world_countries WHERE iso_code_2 = 'HR'), '49000'), -- Krapina-Zagorje County Capital
('Gospić', (SELECT id FROM world_countries WHERE iso_code_2 = 'HR'), '53000'), -- Lika-Senj County Capital
('Pazin', (SELECT id FROM world_countries WHERE iso_code_2 = 'HR'), '52000'), -- Istria County Administrative Seat

-- Other Significant Towns (Sample)
('Velika Gorica', (SELECT id FROM world_countries WHERE iso_code_2 = 'HR'), '10410'), -- Zagreb County
('Samobor', (SELECT id FROM world_countries WHERE iso_code_2 = 'HR'), '10430'), -- Zagreb County
('Kaštela', (SELECT id FROM world_countries WHERE iso_code_2 = 'HR'), '21212'), -- Split-Dalmatia County (Series of towns near Split)
('Solin', (SELECT id FROM world_countries WHERE iso_code_2 = 'HR'), '21210'), -- Split-Dalmatia County (Near Split)
('Vinkovci', (SELECT id FROM world_countries WHERE iso_code_2 = 'HR'), '32100'), -- Vukovar-Syrmia County
('Makarska', (SELECT id FROM world_countries WHERE iso_code_2 = 'HR'), '21300'), -- Split-Dalmatia County (Coastal resort)
('Rovinj', (SELECT id FROM world_countries WHERE iso_code_2 = 'HR'), '52210'), -- Istria County (Coastal resort)
('Poreč', (SELECT id FROM world_countries WHERE iso_code_2 = 'HR'), '52440'), -- Istria County (Coastal resort)
('Trogir', (SELECT id FROM world_countries WHERE iso_code_2 = 'HR'), '21220'), -- Split-Dalmatia County (UNESCO site)
('Đakovo', (SELECT id FROM world_countries WHERE iso_code_2 = 'HR'), '31400'), -- Osijek-Baranja County
('Petrinja', (SELECT id FROM world_countries WHERE iso_code_2 = 'HR'), '44250'), -- Sisak-Moslavina County
('Križevci', (SELECT id FROM world_countries WHERE iso_code_2 = 'HR'), '48260'), -- Koprivnica-Križevci County
('Sinj', (SELECT id FROM world_countries WHERE iso_code_2 = 'HR'), '21230'), -- Split-Dalmatia County
('Knin', (SELECT id FROM world_countries WHERE iso_code_2 = 'HR'), '22300'), -- Šibenik-Knin County (Historic)
('Metković', (SELECT id FROM world_countries WHERE iso_code_2 = 'HR'), '20350'), -- Dubrovnik-Neretva County
('Ogulin', (SELECT id FROM world_countries WHERE iso_code_2 = 'HR'), '47300'), -- Karlovac County
('Našice', (SELECT id FROM world_countries WHERE iso_code_2 = 'HR'), '31500'), -- Osijek-Baranja County
('Ploče', (SELECT id FROM world_countries WHERE iso_code_2 = 'HR'), '20340'), -- Dubrovnik-Neretva County (Port)
('Zaprešić', (SELECT id FROM world_countries WHERE iso_code_2 = 'HR'), '10290'); -- Zagreb County

-- End of Croatia city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Croatia ==
-- ====================================
--
-- Descripción General:
-- Croacia (Croatia) es un país ubicado en la encrucijada de Europa Central y
-- Sudoriental, en la costa del Mar Adriático. Limita con Eslovenia, Hungría,
-- Serbia, Bosnia y Herzegovina, y Montenegro. Es conocida por su extensa y
-- accidentada costa adriática con más de mil islas, sus ciudades históricas y
-- sus parques naturales. Es una república parlamentaria y miembro de la Unión
-- Europea y la OTAN.
--
-- Ciudades Principales:
-- * Zagreb: La capital y ciudad más grande, ubicada en el interior. Centro
--   político, económico y cultural.
-- * Split: La segunda ciudad más grande, principal ciudad de la región de Dalmacia,
--   famosa por el Palacio de Diocleciano (Patrimonio de la Humanidad).
-- * Rijeka: El principal puerto marítimo de Croacia, ubicado en la bahía de Kvarner.
-- * Osijek: La ciudad más grande de la región oriental de Eslavonia.
-- * Zadar: Ciudad histórica en la costa dálmata.
-- * Dubrovnik: Ciudad amurallada histórica en el extremo sur (Patrimonio de la
--   Humanidad), famoso destino turístico.
-- * Pula: Principal ciudad de la península de Istria, conocida por su anfiteatro romano.
-- * La lista incluye también todas las capitales de condado (županija) y otras ciudades importantes.
--
-- Un Poco de Historia:
-- Habitada por tribus ilirias y luego parte del Imperio Romano. Los croatas eslavos
-- llegaron en el siglo VII. Se estableció un reino croata medieval independiente.
-- Posteriormente, Croacia estuvo unida a Hungría, formó parte del Imperio Habsburgo
-- (y brevemente del Imperio Napoleónico) y la República de Venecia controló partes
-- de la costa. Tras la Primera Guerra Mundial, se integró en el Reino de los Serbios,
-- Croatas y Eslovenos (luego Yugoslavia). Durante la Segunda Guerra Mundial, existió
-- un estado títere fascista. Tras la guerra, fue una república dentro de la Yugoslavia
-- socialista. Croacia declaró su independencia en 1991, lo que llevó a la Guerra de
-- Independencia Croata (o Guerra Patria, 1991-1995) contra fuerzas serbias y el
-- ejército yugoslavo. Desde el fin de la guerra, se ha consolidado como democracia
-- y se unió a la UE en 2013.
--
-- Datos Adicionales:
-- El croata es el idioma oficial. El turismo es un sector económico muy importante,
-- especialmente en la costa dálmata. El Parque Nacional de los Lagos de Plitvice
-- es famoso por sus cascadas y lagos interconectados. Partes de Dubrovnik y Split
-- se usaron como localizaciones para la serie "Juego de Tronos".
--
*/
