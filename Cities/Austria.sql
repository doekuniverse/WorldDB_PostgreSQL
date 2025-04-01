-- SQL Script to insert a representative sample of significant cities and towns for Austria (AT).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Austria (AT).

-- NOTE: This list includes the national capital, state capitals, and a broad sample of major cities
-- and significant towns/district capitals. It is IMPOSSIBLE to list every single locality.
-- Postal codes are 4 digits; examples or '0000' placeholder are provided.

-- Inserting cities for Austria (AT) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- National & State Capitals (Landeshauptstädte)
('Vienna', (SELECT id FROM world_countries WHERE iso_code_2 = 'AT'), '1010'), -- National Capital & State Capital (Wien)
('Graz', (SELECT id FROM world_countries WHERE iso_code_2 = 'AT'), '8010'), -- State Capital (Styria / Steiermark)
('Linz', (SELECT id FROM world_countries WHERE iso_code_2 = 'AT'), '4020'), -- State Capital (Upper Austria / Oberösterreich)
('Salzburg', (SELECT id FROM world_countries WHERE iso_code_2 = 'AT'), '5020'), -- State Capital (Salzburg)
('Innsbruck', (SELECT id FROM world_countries WHERE iso_code_2 = 'AT'), '6020'), -- State Capital (Tyrol / Tirol)
('Klagenfurt', (SELECT id FROM world_countries WHERE iso_code_2 = 'AT'), '9020'), -- State Capital (Carinthia / Kärnten)
('St. Pölten', (SELECT id FROM world_countries WHERE iso_code_2 = 'AT'), '3100'), -- State Capital (Lower Austria / Niederösterreich)
('Bregenz', (SELECT id FROM world_countries WHERE iso_code_2 = 'AT'), '6900'), -- State Capital (Vorarlberg)
('Eisenstadt', (SELECT id FROM world_countries WHERE iso_code_2 = 'AT'), '7000'), -- State Capital (Burgenland)

-- Other Major Cities & Significant Towns (Sample)
('Villach', (SELECT id FROM world_countries WHERE iso_code_2 = 'AT'), '9500'), -- Carinthia
('Wels', (SELECT id FROM world_countries WHERE iso_code_2 = 'AT'), '4600'), -- Upper Austria
('Dornbirn', (SELECT id FROM world_countries WHERE iso_code_2 = 'AT'), '6850'), -- Vorarlberg (Largest city in Vorarlberg)
('Wiener Neustadt', (SELECT id FROM world_countries WHERE iso_code_2 = 'AT'), '2700'), -- Lower Austria
('Steyr', (SELECT id FROM world_countries WHERE iso_code_2 = 'AT'), '4400'), -- Upper Austria
('Feldkirch', (SELECT id FROM world_countries WHERE iso_code_2 = 'AT'), '6800'), -- Vorarlberg
('Leoben', (SELECT id FROM world_countries WHERE iso_code_2 = 'AT'), '8700'), -- Styria
('Krems an der Donau', (SELECT id FROM world_countries WHERE iso_code_2 = 'AT'), '3500'), -- Lower Austria
('Baden bei Wien', (SELECT id FROM world_countries WHERE iso_code_2 = 'AT'), '2500'), -- Lower Austria
('Wolfsberg', (SELECT id FROM world_countries WHERE iso_code_2 = 'AT'), '9400'), -- Carinthia
('Leonding', (SELECT id FROM world_countries WHERE iso_code_2 = 'AT'), '4060'), -- Upper Austria (Near Linz)
('Klosterneuburg', (SELECT id FROM world_countries WHERE iso_code_2 = 'AT'), '3400'), -- Lower Austria (Near Vienna)
('Traun', (SELECT id FROM world_countries WHERE iso_code_2 = 'AT'), '4050'), -- Upper Austria (Near Linz)
('Kapfenberg', (SELECT id FROM world_countries WHERE iso_code_2 = 'AT'), '8605'), -- Styria
('Lustenau', (SELECT id FROM world_countries WHERE iso_code_2 = 'AT'), '6890'), -- Vorarlberg
('Hallein', (SELECT id FROM world_countries WHERE iso_code_2 = 'AT'), '5400'), -- Salzburg
('Mödling', (SELECT id FROM world_countries WHERE iso_code_2 = 'AT'), '2340'), -- Lower Austria (Near Vienna)
('Kufstein', (SELECT id FROM world_countries WHERE iso_code_2 = 'AT'), '6330'), -- Tyrol
('Braunau am Inn', (SELECT id FROM world_countries WHERE iso_code_2 = 'AT'), '5280'), -- Upper Austria
('Schwechat', (SELECT id FROM world_countries WHERE iso_code_2 = 'AT'), '2320'), -- Lower Austria (Vienna Airport)
('Spittal an der Drau', (SELECT id FROM world_countries WHERE iso_code_2 = 'AT'), '9800'), -- Carinthia
('Saalfelden am Steinernen Meer', (SELECT id FROM world_countries WHERE iso_code_2 = 'AT'), '5760'), -- Salzburg
('Ansfelden', (SELECT id FROM world_countries WHERE iso_code_2 = 'AT'), '4052'), -- Upper Austria
('Ternitz', (SELECT id FROM world_countries WHERE iso_code_2 = 'AT'), '2630'), -- Lower Austria
('Hohenems', (SELECT id FROM world_countries WHERE iso_code_2 = 'AT'), '6845'), -- Vorarlberg
('Perchtoldsdorf', (SELECT id FROM world_countries WHERE iso_code_2 = 'AT'), '2380'), -- Lower Austria (Near Vienna)
('Telfs', (SELECT id FROM world_countries WHERE iso_code_2 = 'AT'), '6410'), -- Tyrol
('Feldkirchen in Kärnten', (SELECT id FROM world_countries WHERE iso_code_2 = 'AT'), '9560'), -- Carinthia
('Bludenz', (SELECT id FROM world_countries WHERE iso_code_2 = 'AT'), '6700'), -- Vorarlberg
('Bad Ischl', (SELECT id FROM world_countries WHERE iso_code_2 = 'AT'), '4820'), -- Upper Austria (Salzkammergut)
('Schwaz', (SELECT id FROM world_countries WHERE iso_code_2 = 'AT'), '6130'), -- Tyrol
('Hall in Tirol', (SELECT id FROM world_countries WHERE iso_code_2 = 'AT'), '6060'), -- Tyrol
('Gmunden', (SELECT id FROM world_countries WHERE iso_code_2 = 'AT'), '4810'), -- Upper Austria (Salzkammergut)
('Wörgl', (SELECT id FROM world_countries WHERE iso_code_2 = 'AT'), '6300'), -- Tyrol
('Sankt Veit an der Glan', (SELECT id FROM world_countries WHERE iso_code_2 = 'AT'), '9300'), -- Carinthia
('Rankweil', (SELECT id FROM world_countries WHERE iso_code_2 = 'AT'), '6830'), -- Vorarlberg
('Lienz', (SELECT id FROM world_countries WHERE iso_code_2 = 'AT'), '9900'), -- East Tyrol
('Hollabrunn', (SELECT id FROM world_countries WHERE iso_code_2 = 'AT'), '2020'), -- Lower Austria
('Enns', (SELECT id FROM world_countries WHERE iso_code_2 = 'AT'), '4470'), -- Upper Austria (Oldest town)
('Bruck an der Mur', (SELECT id FROM world_countries WHERE iso_code_2 = 'AT'), '8600'); -- Styria

-- End of Austria city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Austria ==
-- ====================================
--
-- Descripción General:
-- Austria es un país sin salida al mar ubicado en Europa Central, conocido por
-- su impresionante paisaje alpino, su rica historia imperial y su vibrante
-- cultura musical y artística. Es una república federal parlamentaria y miembro
-- de la Unión Europea. Limita con Alemania, República Checa, Eslovaquia,
-- Hungría, Eslovenia, Italia, Suiza y Liechtenstein.
--
-- Ciudades Principales:
-- * Viena (Wien): La capital y ciudad más grande, antigua capital del Imperio
--   Habsburgo, famosa por sus palacios (Schönbrunn, Hofburg), ópera, museos y cafés.
-- * Graz: Segunda ciudad más grande, capital de Estiria, con un centro histórico
--   declarado Patrimonio de la Humanidad por la UNESCO.
-- * Linz: Capital de Alta Austria, importante centro industrial y cultural a orillas del Danubio.
-- * Salzburgo: Ciudad natal de Mozart, famosa por su arquitectura barroca, el festival
--   de música y su fortaleza. Patrimonio de la Humanidad por la UNESCO.
-- * Innsbruck: Capital del Tirol, rodeada por los Alpes, popular destino para
--   deportes de invierno.
-- * La lista también incluye las demás capitales de estado y muchas otras ciudades importantes.
--
-- Un Poco de Historia:
-- El territorio de la actual Austria fue parte del Imperio Romano y luego del
-- Sacro Imperio Romano Germánico. La Casa de Habsburgo gobernó Austria durante
-- siglos, creando un vasto imperio que se convirtió en el Imperio Austrohúngaro.
-- Tras la Primera Guerra Mundial, el imperio se disolvió y se creó la Primera
-- República Austriaca. Austria fue anexionada por la Alemania nazi en 1938
-- (Anschluss). Después de la Segunda Guerra Mundial, fue ocupada por los Aliados
-- y recuperó su plena soberanía en 1955, declarando su neutralidad permanente.
--
-- Datos Adicionales:
-- El alemán es el idioma oficial. Austria es mundialmente famosa por su legado
-- musical (Mozart, Strauss, Haydn, Schubert). Los Alpes cubren una gran parte
-- del país, haciéndolo un destino principal para el esquí y el senderismo.
--
*/
