-- SQL Script to insert a representative sample of significant cities, towns, and villages for Iceland (IS).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Iceland (IS).

-- NOTE: Iceland is sparsely populated outside the capital area. This list includes the capital,
-- major towns, and significant villages around the coast. Listing every single farm is IMPOSSIBLE.
-- Postal codes are 3 digits; examples or '000' placeholder are provided.

-- Inserting cities/towns for Iceland (IS) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Major Towns / Municipal Centers
('Reykjavík', (SELECT id FROM world_countries WHERE iso_code_2 = 'IS'), '101'), -- National Capital
('Kópavogur', (SELECT id FROM world_countries WHERE iso_code_2 = 'IS'), '200'), -- Capital Region (Largest municipality after Reykjavík)
('Hafnarfjörður', (SELECT id FROM world_countries WHERE iso_code_2 = 'IS'), '220'), -- Capital Region
('Reykjanesbær', (SELECT id FROM world_countries WHERE iso_code_2 = 'IS'), '230'), -- Southern Peninsula (Includes Keflavík airport)
('Akureyri', (SELECT id FROM world_countries WHERE iso_code_2 = 'IS'), '600'), -- North Iceland (Largest town outside capital area)
('Garðabær', (SELECT id FROM world_countries WHERE iso_code_2 = 'IS'), '210'), -- Capital Region
('Mosfellsbær', (SELECT id FROM world_countries WHERE iso_code_2 = 'IS'), '270'), -- Capital Region
('Árborg', (SELECT id FROM world_countries WHERE iso_code_2 = 'IS'), '800'), -- South Iceland (Includes Selfoss town)
('Akranes', (SELECT id FROM world_countries WHERE iso_code_2 = 'IS'), '300'), -- West Iceland
('Fjarðabyggð', (SELECT id FROM world_countries WHERE iso_code_2 = 'IS'), '740'), -- East Iceland (Includes Neskaupstaður, Reyðarfjörður, Eskifjörður)
('Seltjarnarnes', (SELECT id FROM world_countries WHERE iso_code_2 = 'IS'), '170'), -- Capital Region
('Vestmannaeyjar', (SELECT id FROM world_countries WHERE iso_code_2 = 'IS'), '900'), -- Westman Islands (Off south coast)
('Skagafjörður', (SELECT id FROM world_countries WHERE iso_code_2 = 'IS'), '550'), -- Northwest Iceland (Includes Sauðárkrókur town)
('Ísafjarðarbær', (SELECT id FROM world_countries WHERE iso_code_2 = 'IS'), '400'), -- Westfjords (Includes Ísafjörður town)
('Borgarbyggð', (SELECT id FROM world_countries WHERE iso_code_2 = 'IS'), '310'), -- West Iceland (Includes Borgarnes town)
('Fljótsdalshérað', (SELECT id FROM world_countries WHERE iso_code_2 = 'IS'), '700'), -- East Iceland (Includes Egilsstaðir town) - Now Múlaþing
('Norðurþing', (SELECT id FROM world_countries WHERE iso_code_2 = 'IS'), '640'), -- Northeast Iceland (Includes Húsavík town)
('Grindavíkurbær', (SELECT id FROM world_countries WHERE iso_code_2 = 'IS'), '240'), -- Southern Peninsula (Grindavík town)
('Hveragerði', (SELECT id FROM world_countries WHERE iso_code_2 = 'IS'), '810'), -- South Iceland (Geothermal town)
('Suðurnesjabær', (SELECT id FROM world_countries WHERE iso_code_2 = 'IS'), '245'), -- Southern Peninsula (Includes Sandgerði and Garður)
('Hornafjörður', (SELECT id FROM world_countries WHERE iso_code_2 = 'IS'), '780'), -- Southeast Iceland (Includes Höfn town)
('Dalvíkurbyggð', (SELECT id FROM world_countries WHERE iso_code_2 = 'IS'), '620'), -- North Iceland (Includes Dalvík town)
('Fjallabyggð', (SELECT id FROM world_countries WHERE iso_code_2 = 'IS'), '580'), -- North Iceland (Includes Siglufjörður and Ólafsfjörður)
('Snæfellsbær', (SELECT id FROM world_countries WHERE iso_code_2 = 'IS'), '355'), -- West Iceland (Includes Ólafsvík, Hellissandur, Rif)
('Stykkishólmur', (SELECT id FROM world_countries WHERE iso_code_2 = 'IS'), '340'), -- West Iceland (Snæfellsnes peninsula)
('Vogar', (SELECT id FROM world_countries WHERE iso_code_2 = 'IS'), '190'), -- Southern Peninsula
('Bolungarvík', (SELECT id FROM world_countries WHERE iso_code_2 = 'IS'), '415'), -- Westfjords
('Grundarfjörður', (SELECT id FROM world_countries WHERE iso_code_2 = 'IS'), '350'), -- West Iceland (Snæfellsnes peninsula)
('Blönduós', (SELECT id FROM world_countries WHERE iso_code_2 = 'IS'), '540'), -- Northwest Iceland
('Ólafsvík', (SELECT id FROM world_countries WHERE iso_code_2 = 'IS'), '355'), -- Part of Snæfellsbær
('Vík í Mýrdal', (SELECT id FROM world_countries WHERE iso_code_2 = 'IS'), '870'); -- South Iceland (Village)

-- End of Iceland city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Iceland ==
-- ====================================
--
-- Descripción General:
-- Islandia (Iceland) es un país insular nórdico ubicado en el Océano Atlántico
-- Norte, entre Groenlandia y Europa continental, sobre la Dorsal Mesoatlántica.
-- Es geológicamente muy activa, con numerosos volcanes, géiseres, fuentes termales
-- y campos de lava. También posee grandes glaciares. A pesar de su latitud justo
-- al sur del Círculo Polar Ártico, su clima es relativamente templado debido a la
-- Corriente del Golfo. Es uno de los países menos poblados de Europa.
--
-- Ciudades Principales:
-- * Reikiavik (Reykjavík): La capital y ciudad más grande, donde vive la mayoría
--   de la población del país (incluyendo su área metropolitana con Kópavogur,
--   Hafnarfjörður, Garðabær, Mosfellsbær). Es la capital nacional más septentrional
--   del mundo.
-- * Akureyri: La segunda área urbana más grande y principal centro del norte de Islandia.
-- * Reykjanesbær: Municipio que incluye Keflavík (sede del principal aeropuerto
--   internacional) y Njarðvík.
-- * Vestmannaeyjar: Principal pueblo en las islas Westman, frente a la costa sur.
-- * Selfoss: Principal pueblo del sur de Islandia (parte del municipio de Árborg).
-- * Ísafjörður: Principal pueblo en la remota región de los Fiordos del Oeste.
-- * Egilsstaðir: Principal pueblo en el este de Islandia.
-- * La lista incluye también otros pueblos y centros municipales importantes.
--
-- Un Poco de Historia:
-- Colonizada por vikingos noruegos (y algunos celtas) a partir del siglo IX d.C.
-- Estableció uno de los primeros parlamentos del mundo, el Alþingi, en 930 d.C.,
-- marcando el inicio de la Mancomunidad Islandesa. Pasó a estar bajo dominio
-- noruego y luego danés a partir del siglo XIII. Sufrió dificultades económicas y
-- desastres naturales en siglos posteriores. Obtuvo una mayor autonomía en el siglo
-- XIX y la plena independencia de Dinamarca en 1944, convirtiéndose en una república.
-- Jugó un papel estratégico durante la Guerra Fría (base de la OTAN en Keflavík).
-- Experimentó un rápido crecimiento económico seguido de una grave crisis financiera
-- en 2008, de la que se ha recuperado en gran medida.
--
-- Datos Adicionales:
-- El islandés es el idioma oficial, notable por haber cambiado muy poco desde el
-- nórdico antiguo. Islandia utiliza ampliamente la energía geotérmica y
-- hidroeléctrica. Es famosa por sus espectaculares paisajes naturales (glaciares,
-- cascadas, géiseres, auroras boreales), las sagas islandesas medievales y su
-- música contemporánea.
--
*/
