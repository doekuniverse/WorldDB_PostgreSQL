-- SQL Script to insert a representative sample of significant cities and towns for Libya (LY).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Libya (LY).

-- NOTE: Libya is vast and mostly desert. This list includes the capital, major coastal cities,
-- district centers, and significant oasis towns. Listing every single locality is IMPOSSIBLE.
-- Postal codes are not generally used; using '0000' as a placeholder.

-- Inserting cities for Libya (LY) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Major Cities / District Centers
('Tripoli (Tarabulus)', (SELECT id FROM world_countries WHERE iso_code_2 = 'LY'), '0000'), -- National Capital
('Benghazi', (SELECT id FROM world_countries WHERE iso_code_2 = 'LY'), '0000'), -- Second largest city
('Misrata', (SELECT id FROM world_countries WHERE iso_code_2 = 'LY'), '0000'), -- Third largest city
('Bayda', (SELECT id FROM world_countries WHERE iso_code_2 = 'LY'), '0000'), -- Major city in the east (Jabal al Akhdar)
('Zawiya', (SELECT id FROM world_countries WHERE iso_code_2 = 'LY'), '0000'), -- West of Tripoli
('Ajdabiya', (SELECT id FROM world_countries WHERE iso_code_2 = 'LY'), '0000'), -- East, south of Benghazi
('Tobruk', (SELECT id FROM world_countries WHERE iso_code_2 = 'LY'), '0000'), -- Eastern port city
('Sebha', (SELECT id FROM world_countries WHERE iso_code_2 = 'LY'), '0000'), -- Main city in the southern Fezzan region
('Sirte', (SELECT id FROM world_countries WHERE iso_code_2 = 'LY'), '0000'), -- Coastal city (Gaddafi's birthplace)
('Zliten', (SELECT id FROM world_countries WHERE iso_code_2 = 'LY'), '0000'), -- West, between Misrata and Khoms
('Sabratha', (SELECT id FROM world_countries WHERE iso_code_2 = 'LY'), '0000'), -- West of Tripoli (UNESCO Roman ruins)
('Gharyan', (SELECT id FROM world_countries WHERE iso_code_2 = 'LY'), '0000'), -- Nafusa Mountains (Jabal al Gharbi)
('Khoms (Al Khums)', (SELECT id FROM world_countries WHERE iso_code_2 = 'LY'), '0000'), -- Coastal city near Leptis Magna
('Derna', (SELECT id FROM world_countries WHERE iso_code_2 = 'LY'), '0000'), -- Eastern coastal city
('Zuwara', (SELECT id FROM world_countries WHERE iso_code_2 = 'LY'), '0000'), -- Western coastal city (Berber population)
('Murzuq', (SELECT id FROM world_countries WHERE iso_code_2 = 'LY'), '0000'), -- Oasis town in Fezzan
('Bani Walid', (SELECT id FROM world_countries WHERE iso_code_2 = 'LY'), '0000'), -- Inland town southeast of Tripoli
('Nalut', (SELECT id FROM world_countries WHERE iso_code_2 = 'LY'), '0000'), -- Nafusa Mountains (Jabal al Gharbi)
('Ghat', (SELECT id FROM world_countries WHERE iso_code_2 = 'LY'), '0000'), -- Remote oasis town in southwest near Algeria
('Kufra', (SELECT id FROM world_countries WHERE iso_code_2 = 'LY'), '0000'), -- Remote oasis group in southeast
('Ubari (Awbari)', (SELECT id FROM world_countries WHERE iso_code_2 = 'LY'), '0000'); -- Oasis town in Fezzan

-- End of Libya city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Libya ==
-- ====================================
--
-- Descripción General:
-- Libia es un país ubicado en el norte de África, formando parte del Magreb. Limita
-- con el Mar Mediterráneo al norte, Egipto al este, Sudán al sureste, Chad y Níger
-- al sur, y Argelia y Túnez al oeste. Es el cuarto país más grande de África por
-- área, y gran parte de su territorio está cubierto por el Desierto del Sahara. La
-- mayoría de la población vive en la estrecha franja costera mediterránea. Posee
-- importantes reservas de petróleo y gas natural.
--
-- Ciudades Principales:
-- * Trípoli (Tripoli / Tarabulus): La capital y ciudad más grande, ubicada en la
--   costa occidental (Tripolitania).
-- * Bengasi (Benghazi): La segunda ciudad más grande, principal centro urbano en la
--   costa oriental (Cirenaica).
-- * Misrata: Tercera ciudad, importante centro comercial y portuario en la costa
--   entre Trípoli y Sirte.
-- * Bayda: Ciudad importante en la región montañosa oriental de Jebel Akhdar.
-- * Sebha: Principal ciudad en la vasta región desértica del sur (Fezzan).
-- * Tobruk, Sirte, Zawiya, Ajdabiya: Otras ciudades costeras significativas.
-- * La lista incluye también los principales centros de distrito (shabiyah) y oasis.
--
-- Un Poco de Historia:
-- La costa libia fue colonizada por fenicios, griegos y romanos (con importantes
-- ruinas como Leptis Magna y Sabratha). Formó parte del imperio Vándalo, Bizantino,
-- y luego de los califatos árabes y el Imperio Otomano (como las regencias de
-- Trípoli y Cirenaica). Italia conquistó Libia a principios del siglo XX,
-- convirtiéndola en una colonia. Tras la Segunda Guerra Mundial, quedó bajo
-- administración aliada y obtuvo la independencia como Reino de Libia en 1951. En
-- 1969, un golpe militar liderado por Muammar Gaddafi derrocó la monarquía e instauró
-- un régimen peculiar (la Jamahiriya). Gaddafi gobernó durante más de 40 años hasta
-- que fue derrocado y asesinado durante la Primavera Árabe y la intervención militar
-- de la OTAN en 2011. Desde entonces, Libia ha estado sumida en una profunda
-- inestabilidad y conflicto entre facciones rivales basadas en Trípoli y el este
-- del país, con diversas milicias e interferencia extranjera.
--
-- Datos Adicionales:
-- El árabe es el idioma oficial. El Islam sunita es la religión predominante. La
-- economía depende casi exclusivamente del petróleo y el gas. Las ruinas romanas de
-- Leptis Magna y Sabratha, y el sitio prehistórico de Tadrart Acacus son Patrimonio
-- de la Humanidad por la UNESCO.
--
*/
