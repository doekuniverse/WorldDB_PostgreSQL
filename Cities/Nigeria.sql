-- SQL Script to insert a highly selective sample of major cities and state capitals for Nigeria (NG).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Nigeria (NG).

-- NOTE: Nigeria is Africa's most populous country with thousands of localities. This list includes only a very small fraction,
-- focusing on the national capital, state capitals, and major cities. Listing every locality is ABSOLUTELY IMPOSSIBLE.
-- Postal codes are 6 digits; examples or '000000' placeholder are provided.

-- Inserting cities for Nigeria (NG) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & State Capitals / Major Cities
('Abuja', (SELECT id FROM world_countries WHERE iso_code_2 = 'NG'), '900001'), -- National Capital (FCT)
('Lagos', (SELECT id FROM world_countries WHERE iso_code_2 = 'NG'), '100001'), -- Lagos State (Largest city, former capital)
('Kano', (SELECT id FROM world_countries WHERE iso_code_2 = 'NG'), '700001'), -- Kano State Capital
('Ibadan', (SELECT id FROM world_countries WHERE iso_code_2 = 'NG'), '200001'), -- Oyo State Capital
('Kaduna', (SELECT id FROM world_countries WHERE iso_code_2 = 'NG'), '800001'), -- Kaduna State Capital
('Port Harcourt', (SELECT id FROM world_countries WHERE iso_code_2 = 'NG'), '500001'), -- Rivers State Capital
('Benin City', (SELECT id FROM world_countries WHERE iso_code_2 = 'NG'), '300001'), -- Edo State Capital
('Maiduguri', (SELECT id FROM world_countries WHERE iso_code_2 = 'NG'), '600001'), -- Borno State Capital
('Zaria', (SELECT id FROM world_countries WHERE iso_code_2 = 'NG'), '810001'), -- Kaduna State (Major city)
('Aba', (SELECT id FROM world_countries WHERE iso_code_2 = 'NG'), '450001'), -- Abia State (Major commercial city)
('Jos', (SELECT id FROM world_countries WHERE iso_code_2 = 'NG'), '930001'), -- Plateau State Capital
('Ilorin', (SELECT id FROM world_countries WHERE iso_code_2 = 'NG'), '240001'), -- Kwara State Capital
('Oyo', (SELECT id FROM world_countries WHERE iso_code_2 = 'NG'), '210001'), -- Oyo State (Historic city)
('Enugu', (SELECT id FROM world_countries WHERE iso_code_2 = 'NG'), '400001'), -- Enugu State Capital
('Abeokuta', (SELECT id FROM world_countries WHERE iso_code_2 = 'NG'), '110001'), -- Ogun State Capital
('Onitsha', (SELECT id FROM world_countries WHERE iso_code_2 = 'NG'), '430001'), -- Anambra State (Major commercial city/port)
('Warri', (SELECT id FROM world_countries WHERE iso_code_2 = 'NG'), '332001'), -- Delta State (Major oil city)
('Sokoto', (SELECT id FROM world_countries WHERE iso_code_2 = 'NG'), '840001'), -- Sokoto State Capital
('Calabar', (SELECT id FROM world_countries WHERE iso_code_2 = 'NG'), '540001'), -- Cross River State Capital
('Katsina', (SELECT id FROM world_countries WHERE iso_code_2 = 'NG'), '820001'), -- Katsina State Capital
('Akure', (SELECT id FROM world_countries WHERE iso_code_2 = 'NG'), '340001'), -- Ondo State Capital
('Bauchi', (SELECT id FROM world_countries WHERE iso_code_2 = 'NG'), '740001'), -- Bauchi State Capital
('Ikeja', (SELECT id FROM world_countries WHERE iso_code_2 = 'NG'), '100001'), -- Lagos State Capital (Part of Lagos metro)
('Makurdi', (SELECT id FROM world_countries WHERE iso_code_2 = 'NG'), '970001'), -- Benue State Capital
('Minna', (SELECT id FROM world_countries WHERE iso_code_2 = 'NG'), '900001'), -- Niger State Capital (Postal code same as Abuja?)
('Uyo', (SELECT id FROM world_countries WHERE iso_code_2 = 'NG'), '520001'), -- Akwa Ibom State Capital
('Ado Ekiti', (SELECT id FROM world_countries WHERE iso_code_2 = 'NG'), '360001'), -- Ekiti State Capital
('Gombe', (SELECT id FROM world_countries WHERE iso_code_2 = 'NG'), '760001'), -- Gombe State Capital
('Owerri', (SELECT id FROM world_countries WHERE iso_code_2 = 'NG'), '460001'), -- Imo State Capital
('Yola', (SELECT id FROM world_countries WHERE iso_code_2 = 'NG'), '640001'), -- Adamawa State Capital
('Lokoja', (SELECT id FROM world_countries WHERE iso_code_2 = 'NG'), '260001'), -- Kogi State Capital
('Osogbo', (SELECT id FROM world_countries WHERE iso_code_2 = 'NG'), '230001'), -- Osun State Capital
('Jalingo', (SELECT id FROM world_countries WHERE iso_code_2 = 'NG'), '660001'), -- Taraba State Capital
('Asaba', (SELECT id FROM world_countries WHERE iso_code_2 = 'NG'), '320001'), -- Delta State Capital
('Lafia', (SELECT id FROM world_countries WHERE iso_code_2 = 'NG'), '950001'), -- Nasarawa State Capital
('Gusau', (SELECT id FROM world_countries WHERE iso_code_2 = 'NG'), '860001'), -- Zamfara State Capital
('Birnin Kebbi', (SELECT id FROM world_countries WHERE iso_code_2 = 'NG'), '860001'), -- Kebbi State Capital (Postal code same as Gusau?)
('Damaturu', (SELECT id FROM world_countries WHERE iso_code_2 = 'NG'), '620001'), -- Yobe State Capital
('Dutse', (SELECT id FROM world_countries WHERE iso_code_2 = 'NG'), '720001'), -- Jigawa State Capital
('Abakaliki', (SELECT id FROM world_countries WHERE iso_code_2 = 'NG'), '480001'), -- Ebonyi State Capital
('Umuahia', (SELECT id FROM world_countries WHERE iso_code_2 = 'NG'), '440001'), -- Abia State Capital
('Yenagoa', (SELECT id FROM world_countries WHERE iso_code_2 = 'NG'), '561001'), -- Bayelsa State Capital
('Awka', (SELECT id FROM world_countries WHERE iso_code_2 = 'NG'), '420001'); -- Anambra State Capital

-- End of Nigeria city list (Highly Selective Sample)

/*
-- ====================================
-- == Información sobre Nigeria ==
-- ====================================
--
-- Descripción General:
-- Nigeria, oficialmente República Federal de Nigeria, es un país ubicado en África
-- Occidental, en la costa del Golfo de Guinea. Es el país más poblado de África y
-- el séptimo más poblado del mundo. Limita con Níger al norte, Chad al noreste,
-- Camerún al este y Benín al oeste. Es una república federal presidencialista. Su
-- geografía varía desde manglares y selvas tropicales en el sur, pasando por extensas
-- sabanas en el centro, hasta la región semiárida del Sahel en el norte. El río
-- Níger, el principal del país, forma un gran delta en el sur. Nigeria es
-- extremadamente diversa étnica y lingüísticamente.
--
-- Ciudades Principales:
-- * Abuya (Abuja): La capital federal desde 1991, una ciudad planificada ubicada
--   en el centro del país.
-- * Lagos: La ciudad más grande y antigua capital, principal centro económico,
--   financiero y cultural. Es una de las megaciudades de más rápido crecimiento del mundo.
-- * Kano: La ciudad más grande del norte de Nigeria, centro histórico y comercial Hausa.
-- * Ibadán: Gran ciudad en el suroeste, centro histórico Yoruba.
-- * Kaduna: Importante centro político y de transporte en el norte.
-- * Port Harcourt: Principal ciudad en la región petrolera del Delta del Níger.
-- * Benin City: Centro histórico del Reino de Benín.
-- * Maiduguri: Principal ciudad en el noreste.
-- * La lista incluye también las capitales de los 36 estados y otras ciudades muy grandes.
--
-- Un Poco de Historia:
-- La región fue hogar de antiguas culturas como la Nok y de importantes reinos e
-- imperios como los estados Hausa, el Imperio Kanem-Bornu, el Imperio Oyo y el
-- Reino de Benín. Los europeos (portugueses, británicos) establecieron comercio en
-- la costa (incluyendo el comercio de esclavos). Gran Bretaña consolidó su control
-- sobre el territorio a finales del siglo XIX y principios del XX, creando la Colonia
-- y Protectorado de Nigeria. Obtuvo la independencia en 1960. La historia post-
-- independencia ha estado marcada por tensiones étnicas y religiosas, varios golpes
-- militares, la Guerra Civil de Biafra (1967-1970) y periodos de gobierno democrático
-- interrumpidos. Desde 1999, ha mantenido un gobierno civil multipartidista, aunque
-- enfrenta desafíos significativos como la insurgencia de Boko Haram en el noreste,
-- conflictos entre agricultores y pastores, corrupción y dependencia del petróleo.
--
-- Datos Adicionales:
-- El inglés es el idioma oficial, pero se hablan cientos de lenguas locales, siendo
-- el Hausa, Yoruba e Igbo las más habladas. Las religiones principales son el Islam
-- (predominante en el norte) y el Cristianismo (predominante en el sur), junto con
-- creencias tradicionales. Nigeria es el mayor productor de petróleo de África. Su
-- industria cinematográfica ("Nollywood") es una de las más grandes del mundo.
--
*/
