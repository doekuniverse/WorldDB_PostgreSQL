-- SQL Script to insert a representative sample of significant cities and towns for Israel (IL).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Israel (IL).

-- NOTE: This list includes the capital (Jerusalem, status disputed), major cities, district centers,
-- and significant towns within Israel. Listing every single locality is IMPOSSIBLE.
-- The political status of Jerusalem and certain territories is complex and disputed internationally.
-- Postal codes are 7 digits; 5-digit examples or '00000' placeholder are provided.

-- Inserting cities for Israel (IL) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Major Cities / District Centers
('Jerusalem', (SELECT id FROM world_countries WHERE iso_code_2 = 'IL'), '91000'), -- Declared Capital (status disputed)
('Tel Aviv-Yafo', (SELECT id FROM world_countries WHERE iso_code_2 = 'IL'), '61000'), -- Tel Aviv District (Major economic/cultural hub)
('Haifa', (SELECT id FROM world_countries WHERE iso_code_2 = 'IL'), '31000'), -- Haifa District Capital
('Rishon LeZion', (SELECT id FROM world_countries WHERE iso_code_2 = 'IL'), '75100'), -- Central District
('Petah Tikva', (SELECT id FROM world_countries WHERE iso_code_2 = 'IL'), '49100'), -- Central District
('Ashdod', (SELECT id FROM world_countries WHERE iso_code_2 = 'IL'), '77100'), -- Southern District (Major port)
('Netanya', (SELECT id FROM world_countries WHERE iso_code_2 = 'IL'), '42100'), -- Central District
('Beersheba (Be''er Sheva)', (SELECT id FROM world_countries WHERE iso_code_2 = 'IL'), '84100'), -- Southern District Capital ("Capital of the Negev")
('Bnei Brak', (SELECT id FROM world_countries WHERE iso_code_2 = 'IL'), '51100'), -- Tel Aviv District (Ultra-Orthodox center)
('Holon', (SELECT id FROM world_countries WHERE iso_code_2 = 'IL'), '58100'), -- Tel Aviv District
('Ramat Gan', (SELECT id FROM world_countries WHERE iso_code_2 = 'IL'), '52100'), -- Tel Aviv District
('Ashkelon', (SELECT id FROM world_countries WHERE iso_code_2 = 'IL'), '78100'), -- Southern District
('Rehovot', (SELECT id FROM world_countries WHERE iso_code_2 = 'IL'), '76100'), -- Central District
('Bat Yam', (SELECT id FROM world_countries WHERE iso_code_2 = 'IL'), '59100'), -- Tel Aviv District
('Herzliya', (SELECT id FROM world_countries WHERE iso_code_2 = 'IL'), '46100'), -- Tel Aviv District
('Kfar Saba', (SELECT id FROM world_countries WHERE iso_code_2 = 'IL'), '44100'), -- Central District
('Modi''in-Maccabim-Re''ut', (SELECT id FROM world_countries WHERE iso_code_2 = 'IL'), '71700'), -- Central District
('Nazareth (Natzrat)', (SELECT id FROM world_countries WHERE iso_code_2 = 'IL'), '16000'), -- Northern District (Largest Arab city in Israel)
('Lod', (SELECT id FROM world_countries WHERE iso_code_2 = 'IL'), '71100'), -- Central District (Near Ben Gurion Airport)
('Ramla', (SELECT id FROM world_countries WHERE iso_code_2 = 'IL'), '72100'), -- Central District Capital
('Ra''anana', (SELECT id FROM world_countries WHERE iso_code_2 = 'IL'), '43100'), -- Central District
('Hadera', (SELECT id FROM world_countries WHERE iso_code_2 = 'IL'), '38100'), -- Haifa District
('Beit Shemesh', (SELECT id FROM world_countries WHERE iso_code_2 = 'IL'), '99000'), -- Jerusalem District
('Nahariya', (SELECT id FROM world_countries WHERE iso_code_2 = 'IL'), '22100'), -- Northern District
('Kiryat Gat', (SELECT id FROM world_countries WHERE iso_code_2 = 'IL'), '82100'), -- Southern District
('Eilat', (SELECT id FROM world_countries WHERE iso_code_2 = 'IL'), '88100'), -- Southern District (Red Sea port/resort)
('Acre (Akko)', (SELECT id FROM world_countries WHERE iso_code_2 = 'IL'), '24100'), -- Northern District Capital, UNESCO site
('Tiberias (Tveria)', (SELECT id FROM world_countries WHERE iso_code_2 = 'IL'), '14100'), -- Northern District (Sea of Galilee)
('Karmiel', (SELECT id FROM world_countries WHERE iso_code_2 = 'IL'), '21600'), -- Northern District
('Safed (Tzfat)', (SELECT id FROM world_countries WHERE iso_code_2 = 'IL'), '13100'), -- Northern District (Kabbalah center)
('Dimona', (SELECT id FROM world_countries WHERE iso_code_2 = 'IL'), '86100'), -- Southern District (Near nuclear facility)
('Afula', (SELECT id FROM world_countries WHERE iso_code_2 = 'IL'), '18100'), -- Northern District
('Rosh HaAyin', (SELECT id FROM world_countries WHERE iso_code_2 = 'IL'), '48100'), -- Central District
('Tirat Carmel', (SELECT id FROM world_countries WHERE iso_code_2 = 'IL'), '39100'); -- Haifa District

-- End of Israel city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Israel ==
-- ====================================
--
-- Descripción General:
-- Israel es un país ubicado en el Oriente Medio, en la costa oriental del Mar
-- Mediterráneo. Limita con Líbano al norte, Siria al noreste, Jordania al este,
-- y Egipto y la Franja de Gaza al suroeste. Se autodefine como un Estado judío y
-- democrático. Es un país desarrollado con una economía avanzada, especialmente
-- en alta tecnología. Su geografía incluye la llanura costera mediterránea, las
-- colinas centrales, el valle del río Jordán y el desierto del Néguev en el sur.
--
-- Ciudades Principales:
-- * Jerusalén: Capital declarada por Israel (estatus internacionalmente disputado,
--   especialmente Jerusalén Este). Centro religioso sagrado para el judaísmo, el
--   cristianismo y el islam.
-- * Tel Aviv-Yafo (a menudo llamada solo Tel Aviv): Centro económico, tecnológico y
--   cultural del país, ubicada en la costa mediterránea. Reconocida internacionalmente
--   como la principal ciudad de negocios y sede de la mayoría de embajadas.
-- * Haifa: Tercera ciudad más grande, principal puerto en el Mediterráneo y centro
--   industrial.
-- * Rishon LeZion, Petah Tikva, Ashdod, Netanya, Beersheba: Otras grandes ciudades
--   y centros regionales. Beersheba es considerada la "capital del Néguev".
-- * Nazaret: La ciudad árabe más grande dentro de Israel.
-- * La lista incluye también las capitales de distrito y otras ciudades importantes.
--
-- Un Poco de Historia:
-- La región es considerada la Tierra Santa bíblica para judíos, cristianos y
-- musulmanes. Fue el sitio de los antiguos reinos de Israel y Judá. Tras diversas
-- conquistas (asiria, babilónica, persa, griega, romana), la mayoría de la población
-- judía fue exiliada (Diáspora). La región fue parte de los imperios bizantino,
-- árabe, cruzado, mameluco y otomano. A finales del siglo XIX, surgió el movimiento
-- sionista buscando establecer un hogar nacional judío en Palestina. Tras la Primera
-- Guerra Mundial, la región quedó bajo Mandato Británico. En 1947, la ONU propuso
-- un plan de partición para crear estados árabe y judío separados, con Jerusalén
-- bajo administración internacional. El plan fue aceptado por los líderes judíos
-- pero rechazado por los líderes árabes. Israel declaró su independencia en 1948,
-- lo que llevó a la primera guerra árabe-israelí. Israel ha librado varias guerras
-- posteriores con sus vecinos árabes (1956, 1967, 1973) y ha firmado tratados de
-- paz con Egipto y Jordania. El conflicto israelí-palestino sobre los territorios
-- ocupados (Cisjordania, Gaza) y el estatus de Jerusalén sigue sin resolverse.
--
-- Datos Adicionales:
-- El hebreo es el idioma oficial principal; el árabe también tiene un estatus especial.
-- Israel tiene una sociedad diversa, con mayoría judía (de diversos orígenes) y una
-- importante minoría árabe (musulmanes, cristianos, drusos). Es líder mundial en
-- innovación tecnológica ("Silicon Wadi"). El servicio militar es obligatorio para
-- la mayoría de los ciudadanos.
--
*/
