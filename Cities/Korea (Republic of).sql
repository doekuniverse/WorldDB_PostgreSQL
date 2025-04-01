-- SQL Script to insert a representative sample of significant cities and towns for South Korea (KR).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains South Korea (KR).

-- NOTE: South Korea is densely populated with many administrative levels. This list includes the capital,
-- metropolitan cities, provincial capitals, and a broad sample of major cities (si).
-- Listing every single locality (eup, myeon, ri) is IMPOSSIBLE.
-- Postal codes are 5 digits (new system); examples or '00000' placeholder are provided.

-- Inserting cities for South Korea (KR) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Metropolitan Cities / Provincial Capitals / Major Cities
('Seoul', (SELECT id FROM world_countries WHERE iso_code_2 = 'KR'), '03072'), -- National Capital (Special City)
('Busan', (SELECT id FROM world_countries WHERE iso_code_2 = 'KR'), '46000'), -- Metropolitan City
('Incheon', (SELECT id FROM world_countries WHERE iso_code_2 = 'KR'), '21554'), -- Metropolitan City (Includes airport)
('Daegu', (SELECT id FROM world_countries WHERE iso_code_2 = 'KR'), '41911'), -- Metropolitan City
('Daejeon', (SELECT id FROM world_countries WHERE iso_code_2 = 'KR'), '34140'), -- Metropolitan City
('Gwangju', (SELECT id FROM world_countries WHERE iso_code_2 = 'KR'), '61945'), -- Metropolitan City
('Ulsan', (SELECT id FROM world_countries WHERE iso_code_2 = 'KR'), '44400'), -- Metropolitan City
('Suwon', (SELECT id FROM world_countries WHERE iso_code_2 = 'KR'), '16490'), -- Gyeonggi Province Capital
('Changwon', (SELECT id FROM world_countries WHERE iso_code_2 = 'KR'), '51435'), -- South Gyeongsang Province Capital
('Seongnam', (SELECT id FROM world_countries WHERE iso_code_2 = 'KR'), '13556'), -- Gyeonggi Province (Seoul Metro)
('Goyang', (SELECT id FROM world_countries WHERE iso_code_2 = 'KR'), '10460'), -- Gyeonggi Province (Seoul Metro)
('Yongin', (SELECT id FROM world_countries WHERE iso_code_2 = 'KR'), '16914'), -- Gyeonggi Province (Seoul Metro)
('Cheongju', (SELECT id FROM world_countries WHERE iso_code_2 = 'KR'), '28511'), -- North Chungcheong Province Capital
('Jeonju', (SELECT id FROM world_countries WHERE iso_code_2 = 'KR'), '54994'), -- North Jeolla Province Capital
('Cheonan', (SELECT id FROM world_countries WHERE iso_code_2 = 'KR'), '31162'), -- South Chungcheong Province (Major city)
('Ansan', (SELECT id FROM world_countries WHERE iso_code_2 = 'KR'), '15250'), -- Gyeonggi Province
('Bucheon', (SELECT id FROM world_countries WHERE iso_code_2 = 'KR'), '14547'), -- Gyeonggi Province (Seoul Metro)
('Gimhae', (SELECT id FROM world_countries WHERE iso_code_2 = 'KR'), '50924'), -- South Gyeongsang Province
('Pohang', (SELECT id FROM world_countries WHERE iso_code_2 = 'KR'), '37683'), -- North Gyeongsang Province (Major city)
('Jeju City', (SELECT id FROM world_countries WHERE iso_code_2 = 'KR'), '63219'), -- Jeju Special Self-Governing Province Capital
('Hwaseong', (SELECT id FROM world_countries WHERE iso_code_2 = 'KR'), '18271'), -- Gyeonggi Province
('Uijeongbu', (SELECT id FROM world_countries WHERE iso_code_2 = 'KR'), '11632'), -- Gyeonggi Province Capital (Northern part)
('Anyang', (SELECT id FROM world_countries WHERE iso_code_2 = 'KR'), '14053'), -- Gyeonggi Province (Seoul Metro)
('Namyangju', (SELECT id FROM world_countries WHERE iso_code_2 = 'KR'), '12031'), -- Gyeonggi Province
('Pyeongtaek', (SELECT id FROM world_countries WHERE iso_code_2 = 'KR'), '17866'), -- Gyeonggi Province
('Siheung', (SELECT id FROM world_countries WHERE iso_code_2 = 'KR'), '15000'), -- Gyeonggi Province
('Gumi', (SELECT id FROM world_countries WHERE iso_code_2 = 'KR'), '39281'), -- North Gyeongsang Province (Industrial city)
('Wonju', (SELECT id FROM world_countries WHERE iso_code_2 = 'KR'), '26424'), -- Gangwon Province (Largest city)
('Gimpo', (SELECT id FROM world_countries WHERE iso_code_2 = 'KR'), '10086'), -- Gyeonggi Province
('Paju', (SELECT id FROM world_countries WHERE iso_code_2 = 'KR'), '10861'), -- Gyeonggi Province (Near DMZ)
('Jinju', (SELECT id FROM world_countries WHERE iso_code_2 = 'KR'), '52789'), -- South Gyeongsang Province
('Chuncheon', (SELECT id FROM world_countries WHERE iso_code_2 = 'KR'), '24348'), -- Gangwon Province Capital
('Iksan', (SELECT id FROM world_countries WHERE iso_code_2 = 'KR'), '54524'), -- North Jeolla Province
('Yangsan', (SELECT id FROM world_countries WHERE iso_code_2 = 'KR'), '50624'), -- South Gyeongsang Province
('Gunsan', (SELECT id FROM world_countries WHERE iso_code_2 = 'KR'), '54000'), -- North Jeolla Province
('Suncheon', (SELECT id FROM world_countries WHERE iso_code_2 = 'KR'), '57922'), -- South Jeolla Province Capital (Eastern part)
('Mokpo', (SELECT id FROM world_countries WHERE iso_code_2 = 'KR'), '58613'), -- South Jeolla Province (Major city)
('Yeosu', (SELECT id FROM world_countries WHERE iso_code_2 = 'KR'), '59672'), -- South Jeolla Province
('Gyeongju', (SELECT id FROM world_countries WHERE iso_code_2 = 'KR'), '38102'), -- North Gyeongsang Province (Historic capital of Silla)
('Gyeongsan', (SELECT id FROM world_countries WHERE iso_code_2 = 'KR'), '38541'), -- North Gyeongsang Province (Near Daegu)
('Chungju', (SELECT id FROM world_countries WHERE iso_code_2 = 'KR'), '27339'), -- North Chungcheong Province
('Andong', (SELECT id FROM world_countries WHERE iso_code_2 = 'KR'), '36691'), -- North Gyeongsang Province Capital
('Muan', (SELECT id FROM world_countries WHERE iso_code_2 = 'KR'), '58564'), -- South Jeolla Province Capital (Provincial office location)
('Hongseong', (SELECT id FROM world_countries WHERE iso_code_2 = 'KR'), '32234'); -- South Chungcheong Province Capital (Provincial office location)
-- Sejong Special Self-Governing City is another major administrative center (30064)

-- End of South Korea city list (Representative Sample)

/*
-- ==========================================================
-- == Información sobre Korea (Republic of) (South Korea) ==
-- ==========================================================
--
-- Descripción General:
-- La República de Corea, comúnmente conocida como Corea del Sur, ocupa la mitad sur
-- de la Península de Corea en Asia Oriental. Limita con Corea del Norte al norte
-- (separados por la Zona Desmilitarizada, DMZ), el Mar Amarillo al oeste, el Mar
-- de China Oriental al sur y el Mar de Japón (Mar del Este) al este. Es un país
-- densamente poblado, con un terreno mayormente montañoso y costas muy desarrolladas.
-- Es una potencia económica global, líder en tecnología (electrónica, semiconductores,
-- automóviles) y con una influyente cultura popular (K-pop, K-drama). Es una
-- república presidencialista.
--
-- Ciudades Principales:
-- * Seúl (Seoul): La capital y ciudad más grande, una vasta megaciudad que es el
--   centro político, económico y cultural del país. Su área metropolitana es una
--   de las más pobladas del mundo.
-- * Busán (Busan): La segunda ciudad más grande y principal puerto marítimo.
-- * Incheon: Tercera ciudad, sede del principal aeropuerto internacional y ciudad portuaria.
-- * Daegu, Daejeon, Gwangju, Ulsan: Otras importantes ciudades metropolitanas con
--   funciones administrativas y económicas clave.
-- * Suwon, Changwon, Seongnam, Goyang, Yongin: Grandes ciudades que a menudo forman
--   parte de extensas áreas metropolitanas (especialmente alrededor de Seúl).
-- * La lista incluye también las capitales de provincia y otras ciudades importantes (designadas como 'si').
--
-- Un Poco de Historia:
-- Tras siglos de historia coreana unificada (reinos como Silla, Goryeo, Joseon),
-- la península fue anexada por Japón a principios del siglo XX. Después de la
-- derrota de Japón en la Segunda Guerra Mundial (1945), Corea fue dividida en dos
-- zonas de ocupación: la soviética al norte y la estadounidense al sur. La República
-- de Corea fue establecida en el sur en 1948. La Guerra de Corea (1950-1953),
-- iniciada por la invasión norcoreana, devastó la península y terminó en un
-- armisticio que solidificó la división. Corea del Sur experimentó un período de
-- gobierno autoritario y un crecimiento económico espectacular ("Milagro del río Han")
-- bajo Park Chung-hee. Logró una transición a la democracia en la década de 1980.
-- Hoy es una democracia vibrante y una economía avanzada.
--
-- Datos Adicionales:
-- El coreano es el idioma oficial (utiliza el alfabeto Hangul). Corea del Sur tiene
-- una de las tasas de penetración de Internet más altas del mundo. La cultura
-- popular surcoreana (Hallyu - Ola Coreana) tiene un gran impacto global. Es famosa
-- por su gastronomía (kimchi, bulgogi), artes marciales (Taekwondo) y su rápido
-- desarrollo tecnológico.
--
*/
