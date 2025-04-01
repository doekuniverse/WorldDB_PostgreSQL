-- SQL Script to insert a representative sample of significant cities and towns for Kazakhstan (KZ).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Kazakhstan (KZ).

-- NOTE: Kazakhstan is the 9th largest country. This list includes the capital, major cities,
-- regional capitals, and a broad sample of significant towns. Listing every single locality is IMPOSSIBLE.
-- Postal codes are 6 digits; examples or '000000' placeholder are provided.

-- Inserting cities for Kazakhstan (KZ) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Cities of Republican Significance / Regional Capitals (Oblast Centers) / Major Cities
('Astana', (SELECT id FROM world_countries WHERE iso_code_2 = 'KZ'), '010000'), -- National Capital (formerly Nur-Sultan)
('Almaty', (SELECT id FROM world_countries WHERE iso_code_2 = 'KZ'), '050000'), -- City of Republican Significance (Former Capital)
('Shymkent', (SELECT id FROM world_countries WHERE iso_code_2 = 'KZ'), '160000'), -- City of Republican Significance
('Karaganda (Karagandy)', (SELECT id FROM world_countries WHERE iso_code_2 = 'KZ'), '100000'), -- Karaganda Region Capital
('Aktobe', (SELECT id FROM world_countries WHERE iso_code_2 = 'KZ'), '030000'), -- Aktobe Region Capital
('Taraz', (SELECT id FROM world_countries WHERE iso_code_2 = 'KZ'), '080000'), -- Jambyl Region Capital
('Pavlodar', (SELECT id FROM world_countries WHERE iso_code_2 = 'KZ'), '140000'), -- Pavlodar Region Capital
('Oskemen (Ust-Kamenogorsk)', (SELECT id FROM world_countries WHERE iso_code_2 = 'KZ'), '070000'), -- East Kazakhstan Region Capital
('Semey (Semipalatinsk)', (SELECT id FROM world_countries WHERE iso_code_2 = 'KZ'), '071400'), -- East Kazakhstan Region (Major city)
('Atyrau', (SELECT id FROM world_countries WHERE iso_code_2 = 'KZ'), '060000'), -- Atyrau Region Capital
('Kostanay', (SELECT id FROM world_countries WHERE iso_code_2 = 'KZ'), '110000'), -- Kostanay Region Capital
('Petropavl (Petropavlovsk)', (SELECT id FROM world_countries WHERE iso_code_2 = 'KZ'), '150000'), -- North Kazakhstan Region Capital
('Oral (Uralsk)', (SELECT id FROM world_countries WHERE iso_code_2 = 'KZ'), '090000'), -- West Kazakhstan Region Capital
('Temirtau', (SELECT id FROM world_countries WHERE iso_code_2 = 'KZ'), '101400'), -- Karaganda Region (Industrial city)
('Aktau', (SELECT id FROM world_countries WHERE iso_code_2 = 'KZ'), '130000'), -- Mangystau Region Capital (Caspian port)
('Kyzylorda', (SELECT id FROM world_countries WHERE iso_code_2 = 'KZ'), '120000'), -- Kyzylorda Region Capital
('Kokshetau', (SELECT id FROM world_countries WHERE iso_code_2 = 'KZ'), '020000'), -- Akmola Region Capital
('Taldykorgan', (SELECT id FROM world_countries WHERE iso_code_2 = 'KZ'), '040000'), -- Almaty Region Capital
('Turkistan', (SELECT id FROM world_countries WHERE iso_code_2 = 'KZ'), '161200'), -- Turkistan Region Capital (Historic city)

-- Other Significant Towns (Sample)
('Ekibastuz', (SELECT id FROM world_countries WHERE iso_code_2 = 'KZ'), '141200'), -- Pavlodar Region (Coal mining/Power plants)
('Rudny', (SELECT id FROM world_countries WHERE iso_code_2 = 'KZ'), '111500'), -- Kostanay Region (Mining town)
('Jezkazgan (Zhezkazgan)', (SELECT id FROM world_countries WHERE iso_code_2 = 'KZ'), '100600'), -- Karaganda Region (Mining center)
('Satpayev', (SELECT id FROM world_countries WHERE iso_code_2 = 'KZ'), '101300'), -- Karaganda Region (Near Jezkazgan)
('Balkhash', (SELECT id FROM world_countries WHERE iso_code_2 = 'KZ'), '100300'), -- Karaganda Region (Lake Balkhash, copper)
('Kentau', (SELECT id FROM world_countries WHERE iso_code_2 = 'KZ'), '160400'), -- Turkistan Region
('Arkalyk', (SELECT id FROM world_countries WHERE iso_code_2 = 'KZ'), '110300'), -- Kostanay Region
('Zhanaozen', (SELECT id FROM world_countries WHERE iso_code_2 = 'KZ'), '130200'), -- Mangystau Region (Oil town)
('Stepnogorsk', (SELECT id FROM world_countries WHERE iso_code_2 = 'KZ'), '021500'), -- Akmola Region
('Kapchagay (Konaev)', (SELECT id FROM world_countries WHERE iso_code_2 = 'KZ'), '040800'), -- Almaty Region (Reservoir, casinos) - Renamed Konaev, new Almaty Region capital
('Ayagoz', (SELECT id FROM world_countries WHERE iso_code_2 = 'KZ'), '070200'), -- East Kazakhstan Region
('Aksu', (SELECT id FROM world_countries WHERE iso_code_2 = 'KZ'), '140100'); -- Pavlodar Region

-- End of Kazakhstan city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Kazakhstan ==
-- ====================================
--
-- Descripción General:
-- Kazajistán (Kazakhstan) es un país transcontinental sin salida al mar, ubicado
-- principalmente en el norte de Asia Central y parcialmente en Europa del Este
-- (al oeste del río Ural). Es el noveno país más grande del mundo por área. Limita
-- con Rusia al norte y oeste, China al este, y Kirguistán, Uzbekistán y Turkmenistán
-- al sur. Tiene costa en el Mar Caspio. Gran parte del país está cubierta por vastas
-- estepas semiáridas, con desiertos al sur y montañas al este y sureste. Es rico
-- en recursos naturales, especialmente petróleo, gas natural y minerales.
--
-- Ciudades Principales:
-- * Astaná (Astana, antes Nur-Sultan): La capital desde 1997, conocida por su
--   arquitectura moderna y futurista.
-- * Almaty: La ciudad más grande y antigua capital, sigue siendo el principal centro
--   comercial y cultural del país, ubicada al pie de las montañas Tian Shan.
-- * Shymkent: Tercera ciudad más grande, importante centro en el sur.
-- * Karaganda (Karagandy): Centro industrial y minero (carbón) en el centro del país.
-- * Aktobe, Taraz, Pavlodar, Oskemen (Ust-Kamenogorsk), Semey (Semipalatinsk):
--   Otras ciudades importantes y capitales regionales (óblast).
-- * Atyrau y Aktau: Principales centros petroleros en la costa del Mar Caspio.
-- * La lista incluye también las capitales de todas las regiones y otras ciudades significativas.
--
-- Un Poco de Historia:
-- Históricamente habitada por pueblos nómadas túrquicos. Formó parte de diversos
-- imperios y kanatos, incluyendo la Horda de Oro y luego el Kanato Kazajo. Fue
-- gradualmente incorporado al Imperio Ruso en los siglos XVIII y XIX. Tras la
-- Revolución Rusa, se estableció la República Socialista Soviética de Kazajistán
-- dentro de la URSS. Durante la era soviética, experimentó colectivización forzada,
-- hambrunas, industrialización, campañas agrícolas (Tierras Vírgenes) y fue sitio
-- de pruebas nucleares (Semipalatinsk) y el cosmódromo de Baikonur. Kazajistán
-- declaró su independencia en 1991 tras la disolución de la URSS. Nursultan
-- Nazarbayev fue el primer presidente y dominó la política durante casi tres décadas.
-- El país ha desarrollado sus vastos recursos energéticos y minerales.
--
-- Datos Adicionales:
-- El kazajo (una lengua túrquica) y el ruso son los idiomas oficiales. El Islam y
-- el cristianismo ortodoxo son las religiones principales. El cosmódromo de Baikonur,
-- aunque en territorio kazajo, es arrendado y administrado por Rusia. Kazajistán
-- es étnicamente diverso, con mayoría kazaja y una importante minoría rusa, además
-- de otros grupos.
--
*/
