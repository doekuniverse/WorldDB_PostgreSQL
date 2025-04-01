-- SQL Script to insert a representative sample of significant cities and towns for Somalia (SO).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Somalia (SO).

-- NOTE: Somalia has a complex political situation with autonomous regions (Puntland, Somaliland - self-declared independence).
-- Data availability is challenging due to conflict and instability. This list includes the capital and major cities/towns
-- across these regions (noted). Listing every single locality is IMPOSSIBLE.
-- Postal codes are not used; using '0000' as a placeholder.

-- Inserting cities for Somalia (SO) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Major Cities / Regional Centers
('Mogadishu', (SELECT id FROM world_countries WHERE iso_code_2 = 'SO'), '0000'), -- National Capital (Banaadir Region)
('Hargeisa', (SELECT id FROM world_countries WHERE iso_code_2 = 'SO'), '0000'), -- Somaliland capital
('Bosaso', (SELECT id FROM world_countries WHERE iso_code_2 = 'SO'), '0000'), -- Puntland (Major port city)
('Kismayo', (SELECT id FROM world_countries WHERE iso_code_2 = 'SO'), '0000'), -- Jubaland State Capital
('Baidoa', (SELECT id FROM world_countries WHERE iso_code_2 = 'SO'), '0000'), -- South West State Capital
('Beledweyne', (SELECT id FROM world_countries WHERE iso_code_2 = 'SO'), '0000'), -- Hirshabelle State (Hiran region capital)
('Garowe', (SELECT id FROM world_countries WHERE iso_code_2 = 'SO'), '0000'), -- Puntland Capital
('Burao', (SELECT id FROM world_countries WHERE iso_code_2 = 'SO'), '0000'), -- Somaliland (Togdheer region capital)
('Berbera', (SELECT id FROM world_countries WHERE iso_code_2 = 'SO'), '0000'), -- Somaliland (Major port)
('Merca (Marka)', (SELECT id FROM world_countries WHERE iso_code_2 = 'SO'), '0000'), -- Lower Shabelle region capital (South West State)
('Jowhar', (SELECT id FROM world_countries WHERE iso_code_2 = 'SO'), '0000'), -- Hirshabelle State Capital
('Galkayo (Gaalkacyo)', (SELECT id FROM world_countries WHERE iso_code_2 = 'SO'), '0000'), -- Mudug region (City divided between Puntland & Galmudug)
('Qardho', (SELECT id FROM world_countries WHERE iso_code_2 = 'SO'), '0000'), -- Puntland
('Afgooye', (SELECT id FROM world_countries WHERE iso_code_2 = 'SO'), '0000'), -- Lower Shabelle region
('Bardera (Baardheere)', (SELECT id FROM world_countries WHERE iso_code_2 = 'SO'), '0000'), -- Gedo region capital (Jubaland State)
('Las Anod (Laascaanood)', (SELECT id FROM world_countries WHERE iso_code_2 = 'SO'), '0000'), -- Sool region capital (Disputed area)
('Erigavo (Ceerigaabo)', (SELECT id FROM world_countries WHERE iso_code_2 = 'SO'), '0000'), -- Sanaag region capital (Disputed area)
('Borama', (SELECT id FROM world_countries WHERE iso_code_2 = 'SO'), '0000'), -- Somaliland (Awdal region capital)
('Gabiley', (SELECT id FROM world_countries WHERE iso_code_2 = 'SO'), '0000'), -- Somaliland
('Afmadow', (SELECT id FROM world_countries WHERE iso_code_2 = 'SO'), '0000'), -- Jubaland State
('Wanlaweyn', (SELECT id FROM world_countries WHERE iso_code_2 = 'SO'), '0000'); -- Lower Shabelle region

-- End of Somalia city list (Representative Sample including regions)

/*
-- ====================================
-- == Información sobre Somalia ==
-- ====================================
--
-- Descripción General:
-- Somalia, oficialmente República Federal de Somalia, es un país ubicado en el
-- Cuerno de África, en África Oriental. Posee la costa más larga de África continental,
-- bordeando el Océano Índico al este y el Golfo de Adén al norte. Limita con Yibuti
-- al noroeste, Etiopía al oeste y Kenia al suroeste. Su geografía varía desde
-- regiones áridas y semiáridas en el norte y centro hasta áreas más húmedas en el sur.
-- El país ha estado marcado por décadas de conflicto civil, inestabilidad política
-- y crisis humanitarias. Incluye regiones autónomas como Puntlandia y la región
-- separatista de Somalilandia, que declaró su independencia pero no es reconocida
-- internacionalmente.
--
-- Ciudades Principales:
-- * Mogadiscio (Mogadishu): La capital y ciudad más grande, ubicada en la costa del Índico.
--   Ha sido gravemente afectada por el conflicto.
-- * Hargeisa: La capital y ciudad más grande de la autoproclamada Somalilandia.
-- * Bosaso: Principal puerto y centro comercial de Puntlandia.
-- * Kismayo: Importante ciudad portuaria en el sur (capital del estado de Jubalandia).
-- * Baidoa: Centro administrativo del estado de Suroeste.
-- * Beledweyne: Ciudad importante en el centro, capital de la región de Hiran.
-- * Garowe: Capital administrativa de Puntlandia.
-- * Burao y Berbera: Otras ciudades importantes en Somalilandia (Berbera es su principal puerto).
-- * La lista incluye también otras ciudades y centros regionales significativos.
--
-- Un Poco de Historia:
-- La región fue un importante centro comercial en la antigüedad y la Edad Media, con
-- ciudades-estado y sultanatos (como el Sultanato de Adal y el Sultanato Ajuran).
-- Fue parcialmente colonizada por potencias europeas a finales del siglo XIX: Italia
-- controló la mayor parte del sur (Somalilandia Italiana) y Gran Bretaña controló
-- el norte (Somalilandia Británica). Ambas partes se unieron y obtuvieron la
-- independencia en 1960 como República Somalí. En 1969, un golpe militar llevó al
-- poder a Siad Barre, quien instauró un régimen socialista autoritario. Su gobierno
-- fue derrocado en 1991, lo que llevó al colapso del estado central y a una prolongada
-- guerra civil entre clanes y señores de la guerra. Somalilandia declaró su
-- independencia en 1991 (no reconocida). Puntlandia se declaró región autónoma en
-- 1998. El país sufrió hambrunas, intervenciones internacionales (incluyendo la de
-- la ONU y EE.UU. en los 90) y el auge de la piratería y grupos islamistas extremistas
-- como Al-Shabaab. Desde 2012, se ha intentado restablecer un gobierno federal, pero
-- la inestabilidad y el conflicto persisten en muchas áreas.
--
-- Datos Adicionales:
-- El somalí y el árabe son los idiomas oficiales. El Islam sunita es la religión
-- casi universal. La economía se basa en la ganadería (camellos, ovejas, cabras),
-- las remesas de la diáspora y, en menor medida, la agricultura. Somalia tiene la
-- costa más larga de África continental.
--
*/
