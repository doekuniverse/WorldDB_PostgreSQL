-- SQL Script to insert a representative sample of significant cities and towns for Poland (PL).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Poland (PL).

-- NOTE: Poland has over 2,400 municipalities (gminas). This list includes the capital, voivodeship capitals,
-- major cities, and a broad sample of significant towns. Listing every single locality is IMPOSSIBLE.
-- Postal codes are ##-### format; examples or '00-000' placeholder are provided.

-- Inserting cities for Poland (PL) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Voivodeship Capitals / Major Cities
('Warsaw (Warszawa)', (SELECT id FROM world_countries WHERE iso_code_2 = 'PL'), '00-001'), -- National Capital & Masovian Voivodeship Capital
('Kraków (Cracow)', (SELECT id FROM world_countries WHERE iso_code_2 = 'PL'), '30-001'), -- Lesser Poland Voivodeship Capital
('Łódź', (SELECT id FROM world_countries WHERE iso_code_2 = 'PL'), '90-001'), -- Łódź Voivodeship Capital
('Wrocław (Breslau)', (SELECT id FROM world_countries WHERE iso_code_2 = 'PL'), '50-001'), -- Lower Silesian Voivodeship Capital
('Poznań', (SELECT id FROM world_countries WHERE iso_code_2 = 'PL'), '60-001'), -- Greater Poland Voivodeship Capital
('Gdańsk (Danzig)', (SELECT id FROM world_countries WHERE iso_code_2 = 'PL'), '80-001'), -- Pomeranian Voivodeship Capital
('Szczecin (Stettin)', (SELECT id FROM world_countries WHERE iso_code_2 = 'PL'), '70-001'), -- West Pomeranian Voivodeship Capital
('Bydgoszcz', (SELECT id FROM world_countries WHERE iso_code_2 = 'PL'), '85-001'), -- Kuyavian-Pomeranian Voivodeship Co-Capital
('Lublin', (SELECT id FROM world_countries WHERE iso_code_2 = 'PL'), '20-001'), -- Lublin Voivodeship Capital
('Białystok', (SELECT id FROM world_countries WHERE iso_code_2 = 'PL'), '15-001'), -- Podlaskie Voivodeship Capital
('Katowice', (SELECT id FROM world_countries WHERE iso_code_2 = 'PL'), '40-001'), -- Silesian Voivodeship Capital
('Gdynia', (SELECT id FROM world_countries WHERE iso_code_2 = 'PL'), '81-001'), -- Pomeranian Voivodeship (Part of Tricity)
('Częstochowa', (SELECT id FROM world_countries WHERE iso_code_2 = 'PL'), '42-200'), -- Silesian Voivodeship (Jasna Góra Monastery)
('Radom', (SELECT id FROM world_countries WHERE iso_code_2 = 'PL'), '26-600'), -- Masovian Voivodeship
('Toruń', (SELECT id FROM world_countries WHERE iso_code_2 = 'PL'), '87-100'), -- Kuyavian-Pomeranian Voivodeship Co-Capital (UNESCO site)
('Sosnowiec', (SELECT id FROM world_countries WHERE iso_code_2 = 'PL'), '41-200'), -- Silesian Voivodeship (Upper Silesian Metro Area)
('Kielce', (SELECT id FROM world_countries WHERE iso_code_2 = 'PL'), '25-001'), -- Świętokrzyskie Voivodeship Capital
('Rzeszów', (SELECT id FROM world_countries WHERE iso_code_2 = 'PL'), '35-001'), -- Subcarpathian Voivodeship Capital
('Gliwice', (SELECT id FROM world_countries WHERE iso_code_2 = 'PL'), '44-100'), -- Silesian Voivodeship (Upper Silesian Metro Area)
('Olsztyn', (SELECT id FROM world_countries WHERE iso_code_2 = 'PL'), '10-001'), -- Warmian-Masurian Voivodeship Capital
('Zabrze', (SELECT id FROM world_countries WHERE iso_code_2 = 'PL'), '41-800'), -- Silesian Voivodeship (Upper Silesian Metro Area)
('Bielsko-Biała', (SELECT id FROM world_countries WHERE iso_code_2 = 'PL'), '43-300'), -- Silesian Voivodeship
('Bytom', (SELECT id FROM world_countries WHERE iso_code_2 = 'PL'), '41-900'), -- Silesian Voivodeship (Upper Silesian Metro Area)
('Zielona Góra', (SELECT id FROM world_countries WHERE iso_code_2 = 'PL'), '65-001'), -- Lubusz Voivodeship Co-Capital
('Rybnik', (SELECT id FROM world_countries WHERE iso_code_2 = 'PL'), '44-200'), -- Silesian Voivodeship
('Ruda Śląska', (SELECT id FROM world_countries WHERE iso_code_2 = 'PL'), '41-700'), -- Silesian Voivodeship (Upper Silesian Metro Area)
('Tychy', (SELECT id FROM world_countries WHERE iso_code_2 = 'PL'), '43-100'), -- Silesian Voivodeship (Upper Silesian Metro Area)
('Gorzów Wielkopolski', (SELECT id FROM world_countries WHERE iso_code_2 = 'PL'), '66-400'), -- Lubusz Voivodeship Co-Capital
('Dąbrowa Górnicza', (SELECT id FROM world_countries WHERE iso_code_2 = 'PL'), '41-300'), -- Silesian Voivodeship (Upper Silesian Metro Area)
('Płock', (SELECT id FROM world_countries WHERE iso_code_2 = 'PL'), '09-400'), -- Masovian Voivodeship
('Elbląg', (SELECT id FROM world_countries WHERE iso_code_2 = 'PL'), '82-300'), -- Warmian-Masurian Voivodeship
('Opole', (SELECT id FROM world_countries WHERE iso_code_2 = 'PL'), '45-001'), -- Opole Voivodeship Capital
('Wałbrzych', (SELECT id FROM world_countries WHERE iso_code_2 = 'PL'), '58-300'), -- Lower Silesian Voivodeship
('Włocławek', (SELECT id FROM world_countries WHERE iso_code_2 = 'PL'), '87-800'), -- Kuyavian-Pomeranian Voivodeship
('Tarnów', (SELECT id FROM world_countries WHERE iso_code_2 = 'PL'), '33-100'), -- Lesser Poland Voivodeship
('Chorzów', (SELECT id FROM world_countries WHERE iso_code_2 = 'PL'), '41-500'), -- Silesian Voivodeship (Upper Silesian Metro Area)
('Kalisz', (SELECT id FROM world_countries WHERE iso_code_2 = 'PL'), '62-800'), -- Greater Poland Voivodeship
('Koszalin', (SELECT id FROM world_countries WHERE iso_code_2 = 'PL'), '75-001'), -- West Pomeranian Voivodeship
('Legnica', (SELECT id FROM world_countries WHERE iso_code_2 = 'PL'), '59-200'), -- Lower Silesian Voivodeship
('Grudziądz', (SELECT id FROM world_countries WHERE iso_code_2 = 'PL'), '86-300'), -- Kuyavian-Pomeranian Voivodeship
('Słupsk', (SELECT id FROM world_countries WHERE iso_code_2 = 'PL'), '76-200'), -- Pomeranian Voivodeship
('Jaworzno', (SELECT id FROM world_countries WHERE iso_code_2 = 'PL'), '43-600'); -- Silesian Voivodeship

-- End of Poland city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Poland ==
-- ====================================
--
-- Descripción General:
-- Polonia (Poland), oficialmente República de Polonia, es un país ubicado en Europa
-- Central. Limita con Alemania al oeste, Chequia y Eslovaquia al sur, Ucrania y
-- Bielorrusia al este, y Lituania y el exclave ruso de Kaliningrado al noreste.
-- Tiene una costa en el Mar Báltico al norte. Es el quinto país más poblado de la
-- Unión Europea. Su geografía es mayormente llana en el norte y centro (parte de la
-- Gran Llanura Europea), con montañas (Sudetes y Cárpatos) en el sur. Es una
-- república parlamentaria y miembro de la UE y la OTAN.
--
-- Ciudades Principales:
-- * Varsovia (Warsaw / Warszawa): La capital y ciudad más grande. Centro político,
--   económico y cultural. Su centro histórico fue reconstruido meticulosamente
--   después de la Segunda Guerra Mundial (Patrimonio de la Humanidad).
-- * Cracovia (Kraków): Segunda ciudad, antigua capital real, importante centro
--   cultural y académico con un centro histórico bien conservado (Patrimonio de la Humanidad).
-- * Łódź: Tercera ciudad, importante centro industrial histórico (textil).
-- * Breslavia (Wrocław): Principal ciudad de Baja Silesia, con una rica historia multicultural.
-- * Poznań: Importante centro comercial e histórico en el oeste.
-- * Gdansk (Gdańsk): Principal puerto marítimo en el Báltico, cuna del movimiento
--   Solidaridad. Forma una aglomeración (Triciudad) con Gdynia y Sopot.
-- * Szczecin (Stettin), Bydgoszcz, Lublin, Białystok, Katowice (centro de una gran
--   conurbación industrial en Silesia): Otras grandes ciudades y capitales de voivodato.
-- * La lista incluye también las capitales de todos los 16 voivodatos y otras ciudades importantes.
--
-- Un Poco de Historia:
-- El estado polaco surgió en el siglo X bajo la dinastía Piast, adoptando el
-- cristianismo. En la Edad Media tardía, se unió a Lituania (Unión de Krewo, luego
-- Mancomunidad Polaco-Lituana), formando uno de los estados más grandes y poblados
-- de Europa. La Mancomunidad decayó y fue repartida entre Rusia, Prusia y Austria
-- a finales del siglo XVIII (Particiones de Polonia). Polonia recuperó su
-- independencia en 1918 tras la Primera Guerra Mundial. Fue invadida y dividida
-- entre la Alemania nazi y la Unión Soviética al inicio de la Segunda Guerra Mundial,
-- sufriendo una ocupación brutal y el Holocausto. Después de la guerra, sus fronteras
-- se desplazaron hacia el oeste y se estableció la República Popular de Polonia, un
-- estado comunista satélite de la URSS. El movimiento sindical Solidaridad (Solidarność),
-- liderado por Lech Wałęsa, jugó un papel crucial en la caída del comunismo en Polonia
-- y Europa del Este en 1989. Desde entonces, Polonia se ha consolidado como una
-- democracia multipartidista y ha experimentado un fuerte crecimiento económico.
--
-- Datos Adicionales:
-- El polaco es el idioma oficial (una lengua eslava occidental). El catolicismo romano
-- es la religión predominante y tiene una fuerte influencia cultural. Polonia es
-- conocida por figuras históricas como Copérnico, Chopin, Marie Curie (nacida en
-- Varsovia) y el Papa Juan Pablo II.
--
*/
