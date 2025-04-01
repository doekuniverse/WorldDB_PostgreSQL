-- SQL Script to insert a representative sample of significant cities and towns for Viet Nam (VN).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Viet Nam (VN).

-- NOTE: Viet Nam is divided into provinces and centrally-controlled municipalities, which contain districts, towns, communes, and wards.
-- Listing every single settlement is impractical for this format. This list focuses on the major centrally-controlled cities,
-- provincial capitals, and a sample of other significant cities/towns.
-- Viet Nam uses 6-digit postal codes (NNNNNN). A representative code for the city/district center is provided where possible,
-- but areas often span multiple codes. Using '000000' as a placeholder if unavailable for this sample.

-- Inserting cities/towns for Viet Nam (VN) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Major Centrally-Controlled Municipalities
('Hanoi', (SELECT id FROM world_countries WHERE iso_code_2 = 'VN'), '100000'), -- National Capital (Municipality)
('Ho Chi Minh City', (SELECT id FROM world_countries WHERE iso_code_2 = 'VN'), '700000'), -- Largest City / Economic Hub (Municipality, formerly Saigon)
('Haiphong', (SELECT id FROM world_countries WHERE iso_code_2 = 'VN'), '180000'), -- Major Port City (Municipality)
('Da Nang', (SELECT id FROM world_countries WHERE iso_code_2 = 'VN'), '550000'), -- Major City in Central Viet Nam (Municipality)
('Can Tho', (SELECT id FROM world_countries WHERE iso_code_2 = 'VN'), '900000'), -- Major City in Mekong Delta (Municipality)

-- Provincial Capitals / Other Major Cities (Sample)
('Biên Hòa', (SELECT id FROM world_countries WHERE iso_code_2 = 'VN'), '810000'), -- Major city near HCMC (Đồng Nai Province Capital)
('Huế', (SELECT id FROM world_countries WHERE iso_code_2 = 'VN'), '530000'), -- Former Imperial Capital (Thừa Thiên Huế Province Capital)
('Nha Trang', (SELECT id FROM world_countries WHERE iso_code_2 = 'VN'), '650000'), -- Coastal Resort City (Khánh Hòa Province Capital)
('Vũng Tàu', (SELECT id FROM world_countries WHERE iso_code_2 = 'VN'), '790000'), -- Coastal City / Oil Industry Hub (Bà Rịa–Vũng Tàu Province)
('Quy Nhơn', (SELECT id FROM world_countries WHERE iso_code_2 = 'VN'), '590000'), -- Coastal City (Bình Định Province Capital)
('Buôn Ma Thuột', (SELECT id FROM world_countries WHERE iso_code_2 = 'VN'), '630000'), -- Central Highlands City (Đắk Lắk Province Capital)
('Thái Nguyên', (SELECT id FROM world_countries WHERE iso_code_2 = 'VN'), '250000'), -- Industrial City (Thái Nguyên Province Capital)
('Hạ Long', (SELECT id FROM world_countries WHERE iso_code_2 = 'VN'), '200000'), -- Gateway to Halong Bay (Quảng Ninh Province Capital)
('Nam Định', (SELECT id FROM world_countries WHERE iso_code_2 = 'VN'), '070000'), -- Red River Delta City (Nam Định Province Capital)
('Vinh', (SELECT id FROM world_countries WHERE iso_code_2 = 'VN'), '460000'), -- North Central Coast City (Nghệ An Province Capital)
('Long Xuyên', (SELECT id FROM world_countries WHERE iso_code_2 = 'VN'), '880000'), -- Mekong Delta City (An Giang Province Capital)
('Rạch Giá', (SELECT id FROM world_countries WHERE iso_code_2 = 'VN'), '920000'), -- Mekong Delta Coastal City (Kiên Giang Province Capital)
('Pleiku', (SELECT id FROM world_countries WHERE iso_code_2 = 'VN'), '600000'); -- Central Highlands City (Gia Lai Province Capital)


-- End of Viet Nam city/town list (Representative Sample)

/*
-- =============================================
-- ==      Información sobre Viet Nam        ==
-- =============================================
--
-- Descripción General:
-- Viet Nam (Việt Nam), oficialmente la República Socialista de Viet Nam, es un país
-- ubicado en el extremo oriental de la península de Indochina en el Sudeste Asiático.
-- Limita con China al norte, Laos al noroeste y Camboya al suroeste. Tiene una larga
-- costa a lo largo del Mar de China Meridional al este y sur. Su geografía es diversa,
-- con montañas en el norte y oeste, las fértiles llanuras de los deltas del Río Rojo
-- (norte) y el Río Mekong (sur), y una estrecha llanura costera en el centro.
--
-- Ciudades Principales:
-- * Hanói (Hanoi): La capital del país, ubicada en el norte. Es el centro político y
--   cultural, con un casco antiguo histórico.
-- * Ciudad Ho Chi Minh (Ho Chi Minh City): Anteriormente Saigón, es la ciudad más
--   grande y el principal centro económico y comercial, ubicada en el sur.
-- * Haiphong: Importante ciudad portuaria en el norte.
-- * Da Nang: Ciudad principal en la costa central, centro económico y turístico.
-- * Can Tho: La ciudad más grande del Delta del Mekong.
-- * Biên Hòa: Gran ciudad industrial cerca de Ciudad Ho Chi Minh.
-- * Huế: Antigua capital imperial, conocida por su ciudadela y tumbas reales.
-- * Nha Trang, Vũng Tàu: Populares ciudades costeras y turísticas.
--
-- Un Poco de Historia:
-- La región tiene una larga historia de reinos vietnamitas (como Âu Lạc, Đại Việt)
-- que a menudo resistieron la dominación china, aunque estuvieron bajo dominio chino
-- durante más de mil años. Obtuvieron una independencia duradera en el siglo X. El
-- país se expandió hacia el sur a lo largo de los siglos. En el siglo XIX, Francia
-- colonizó gradualmente Viet Nam, incorporándolo a la Indochina Francesa. Tras la
-- Segunda Guerra Mundial, Hồ Chí Minh declaró la independencia, pero Francia intentó
-- restablecer su control, lo que llevó a la Primera Guerra de Indochina (1946-1954).
-- La derrota francesa resultó en la división del país en Vietnam del Norte (comunista)
-- y Vietnam del Sur (apoyado por Occidente). La Guerra de Vietnam (Segunda Guerra de
-- Indochina) enfrentó al Norte y al Viet Cong contra el Sur y Estados Unidos, terminando
-- con la victoria del Norte y la reunificación del país bajo el régimen comunista en 1975.
-- Desde finales de los años 80 (Đổi Mới), Viet Nam ha implementado reformas económicas
-- orientadas al mercado, logrando un rápido crecimiento económico.
--
-- Datos Adicionales:
-- El vietnamita es el idioma oficial. El budismo Mahayana, el confucianismo y el taoísmo
-- tienen influencias históricas significativas, junto con religiones populares y el
-- catolicismo. La etnia Kinh (Viet) constituye la mayoría de la población, con numerosas
-- minorías étnicas reconocidas. Viet Nam es conocido por su cocina (pho, bánh mì),
-- paisajes (Bahía de Halong, Delta del Mekong, terrazas de arroz), y sitios históricos.
-- La economía se ha transformado de agrícola a una economía mixta con un fuerte sector
-- manufacturero y de exportación. Es miembro de la ASEAN y la APEC.
--
*/
