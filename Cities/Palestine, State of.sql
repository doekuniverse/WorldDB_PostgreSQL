-- SQL Script to insert a representative sample of significant cities and towns for the State of Palestine (PS).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains State of Palestine (PS).

-- NOTE: This list includes major cities and governorate capitals in the West Bank and Gaza Strip.
-- Listing every single village or refugee camp is IMPOSSIBLE due to political complexities and data challenges.
-- East Jerusalem is the claimed capital but under Israeli control.
-- Postal codes usage is limited/inconsistent; using '0000' as a placeholder.

-- Inserting cities for State of Palestine (PS) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Major Cities / Governorate Capitals (West Bank)
('Ramallah', (SELECT id FROM world_countries WHERE iso_code_2 = 'PS'), '0000'), -- De facto administrative center (Ramallah & Al-Bireh Governorate)
('Hebron (Al-Khalil)', (SELECT id FROM world_countries WHERE iso_code_2 = 'PS'), '0000'), -- Hebron Governorate Capital
('Nablus', (SELECT id FROM world_countries WHERE iso_code_2 = 'PS'), '0000'), -- Nablus Governorate Capital
('Jenin', (SELECT id FROM world_countries WHERE iso_code_2 = 'PS'), '0000'), -- Jenin Governorate Capital
('Tulkarm', (SELECT id FROM world_countries WHERE iso_code_2 = 'PS'), '0000'), -- Tulkarm Governorate Capital
('Qalqilya', (SELECT id FROM world_countries WHERE iso_code_2 = 'PS'), '0000'), -- Qalqilya Governorate Capital
('Jericho (Ariha)', (SELECT id FROM world_countries WHERE iso_code_2 = 'PS'), '0000'), -- Jericho Governorate Capital
('Bethlehem (Beit Lahm)', (SELECT id FROM world_countries WHERE iso_code_2 = 'PS'), '0000'), -- Bethlehem Governorate Capital
('Salfit', (SELECT id FROM world_countries WHERE iso_code_2 = 'PS'), '0000'), -- Salfit Governorate Capital
('Tubas', (SELECT id FROM world_countries WHERE iso_code_2 = 'PS'), '0000'), -- Tubas Governorate Capital
('Al-Bireh', (SELECT id FROM world_countries WHERE iso_code_2 = 'PS'), '0000'), -- Ramallah & Al-Bireh Governorate (adjacent to Ramallah)
('East Jerusalem (Al-Quds)', (SELECT id FROM world_countries WHERE iso_code_2 = 'PS'), '0000'), -- Claimed Capital (Jerusalem Governorate - under Israeli control)

-- Major Cities / Governorate Capitals (Gaza Strip)
('Gaza City', (SELECT id FROM world_countries WHERE iso_code_2 = 'PS'), '0000'), -- Gaza Governorate Capital
('Khan Yunis', (SELECT id FROM world_countries WHERE iso_code_2 = 'PS'), '0000'), -- Khan Yunis Governorate Capital
('Rafah', (SELECT id FROM world_countries WHERE iso_code_2 = 'PS'), '0000'), -- Rafah Governorate Capital
('Deir al-Balah', (SELECT id FROM world_countries WHERE iso_code_2 = 'PS'), '0000'), -- Deir al-Balah Governorate Capital (Middle Area)
('Jabalia', (SELECT id FROM world_countries WHERE iso_code_2 = 'PS'), '0000'), -- North Gaza Governorate (Major city/camp)
('Beit Lahia', (SELECT id FROM world_countries WHERE iso_code_2 = 'PS'), '0000'), -- North Gaza Governorate
('Beit Hanoun', (SELECT id FROM world_countries WHERE iso_code_2 = 'PS'), '0000'), -- North Gaza Governorate

-- Other Significant Towns (West Bank - Sample)
('Yatta', (SELECT id FROM world_countries WHERE iso_code_2 = 'PS'), '0000'), -- Hebron Governorate
('Dura', (SELECT id FROM world_countries WHERE iso_code_2 = 'PS'), '0000'), -- Hebron Governorate
('Halhul', (SELECT id FROM world_countries WHERE iso_code_2 = 'PS'), '0000'), -- Hebron Governorate
('Beit Jala', (SELECT id FROM world_countries WHERE iso_code_2 = 'PS'), '0000'), -- Bethlehem Governorate
('Beit Sahour', (SELECT id FROM world_countries WHERE iso_code_2 = 'PS'), '0000'), -- Bethlehem Governorate
('Qabatiya', (SELECT id FROM world_countries WHERE iso_code_2 = 'PS'), '0000'), -- Jenin Governorate
('Ya''bad', (SELECT id FROM world_countries WHERE iso_code_2 = 'PS'), '0000'), -- Jenin Governorate
('Beitunia', (SELECT id FROM world_countries WHERE iso_code_2 = 'PS'), '0000'), -- Ramallah & Al-Bireh Governorate
('Anata', (SELECT id FROM world_countries WHERE iso_code_2 = 'PS'), '0000'); -- Jerusalem Governorate (Suburb)


-- End of Palestine city list (Representative Sample)

/*
-- ============================================
-- == Información sobre Palestine, State of ==
-- ============================================
--
-- Descripción General:
-- El Estado de Palestina es un estado parcialmente reconocido internacionalmente en
-- el Oriente Medio, que reclama los territorios de Cisjordania (West Bank) y la
-- Franja de Gaza, con Jerusalén Este como su capital designada. Estos territorios
-- están actualmente bajo diferentes grados de control y ocupación israelí. Cisjordania
-- está separada de Gaza por territorio israelí. La Autoridad Nacional Palestina
-- (ANP) ejerce funciones administrativas limitadas en partes de Cisjordania, mientras
-- que Hamás ha controlado de facto la Franja de Gaza desde 2007.
--
-- Ciudades Principales:
-- * Jerusalén Este (Al-Quds): Reclamada como capital, pero actualmente bajo control
--   y anexión israelí (no reconocida internacionalmente). Alberga importantes sitios
--   religiosos para el Islam, el Cristianismo y el Judaísmo.
-- * Ramallah: Centro administrativo de facto de la Autoridad Nacional Palestina,
--   ubicada en Cisjordania, al norte de Jerusalén.
-- * Gaza (Gaza City): La ciudad más grande de la Franja de Gaza.
-- * Hebrón (Al-Khalil): Ciudad importante en el sur de Cisjordania, con sitios
--   religiosos sagrados y una compleja situación de división y presencia militar israelí.
-- * Nablus: Centro económico y cultural en el norte de Cisjordania.
-- * Belén (Bethlehem): Ciudad al sur de Jerusalén, lugar tradicional del nacimiento
--   de Jesús.
-- * Jenin, Tulkarm, Qalqilya, Jericó (Jericho), Salfit, Tubas: Otras capitales de
--   gobernación en Cisjordania.
-- * Khan Yunis, Rafah, Deir al-Balah, Jabalia: Principales ciudades y centros de
--   población (incluyendo campos de refugiados) en la Franja de Gaza.
--
-- Un Poco de Historia:
-- La región histórica de Palestina tiene una historia milenaria. Formó parte del
-- Imperio Otomano hasta la Primera Guerra Mundial. Quedó bajo Mandato Británico
-- (1920-1948), un período marcado por la creciente inmigración judía (sionismo) y
-- el conflicto con la población árabe palestina. En 1947, la ONU propuso un plan de
-- partición para crear estados árabe y judío. El plan fue rechazado por los árabes.
-- Tras la retirada británica en 1948, se declaró el Estado de Israel, seguido por la
-- primera guerra árabe-israelí. Cientos de miles de palestinos fueron desplazados
-- (Nakba). Cisjordania fue anexada por Jordania y Gaza administrada por Egipto. En la
-- Guerra de los Seis Días de 1967, Israel ocupó Cisjordania, Gaza, Jerusalén Este,
-- los Altos del Golán y el Sinaí. La Organización para la Liberación de Palestina (OLP)
-- lideró el movimiento nacional palestino. Los Acuerdos de Oslo de 1993 establecieron
-- la Autoridad Nacional Palestina con autonomía limitada en partes de Cisjordania y
-- Gaza. El proceso de paz se estancó y hubo periodos de conflicto (Intifadas). En
-- 2005, Israel se retiró unilateralmente de Gaza, pero mantiene un bloqueo. Hamás
-- tomó el control de Gaza en 2007 tras un conflicto con Fatah (que domina la ANP en
-- Cisjordania). El conflicto israelí-palestino sigue sin resolverse. Palestina es
-- reconocida como estado observador no miembro por la ONU.
--
-- Datos Adicionales:
-- El árabe es el idioma oficial. El Islam sunita es la religión mayoritaria, con una
-- minoría cristiana. La situación humanitaria, especialmente en Gaza, es a menudo
-- precaria debido al conflicto y el bloqueo.
--
*/
