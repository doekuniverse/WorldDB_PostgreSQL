-- SQL Script to insert a representative sample of significant cities and towns for North Macedonia (MK).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains North Macedonia (MK).

-- NOTE: This list includes the capital, major cities, and significant towns/municipal centers.
-- Listing every single village is IMPOSSIBLE.
-- Postal codes are 4 digits; examples or '0000' placeholder are provided.

-- Inserting cities for North Macedonia (MK) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Major Cities / Significant Towns
('Skopje', (SELECT id FROM world_countries WHERE iso_code_2 = 'MK'), '1000'), -- National Capital
('Bitola', (SELECT id FROM world_countries WHERE iso_code_2 = 'MK'), '7000'), -- Second largest city
('Kumanovo', (SELECT id FROM world_countries WHERE iso_code_2 = 'MK'), '1300'), -- Third largest city
('Prilep', (SELECT id FROM world_countries WHERE iso_code_2 = 'MK'), '7500'),
('Tetovo', (SELECT id FROM world_countries WHERE iso_code_2 = 'MK'), '1200'), -- Large Albanian population center
('Veles', (SELECT id FROM world_countries WHERE iso_code_2 = 'MK'), '1400'),
('Ohrid', (SELECT id FROM world_countries WHERE iso_code_2 = 'MK'), '6000'), -- Major tourist city, UNESCO site (Lake Ohrid)
('Gostivar', (SELECT id FROM world_countries WHERE iso_code_2 = 'MK'), '1230'),
('Štip', (SELECT id FROM world_countries WHERE iso_code_2 = 'MK'), '2000'), -- Eastern region center
('Strumica', (SELECT id FROM world_countries WHERE iso_code_2 = 'MK'), '2400'), -- Southeastern region center
('Kavadarci', (SELECT id FROM world_countries WHERE iso_code_2 = 'MK'), '1430'), -- Wine region center
('Kočani', (SELECT id FROM world_countries WHERE iso_code_2 = 'MK'), '2300'),
('Kičevo', (SELECT id FROM world_countries WHERE iso_code_2 = 'MK'), '6250'),
('Gevgelija', (SELECT id FROM world_countries WHERE iso_code_2 = 'MK'), '1480'), -- Border town with Greece
('Struga', (SELECT id FROM world_countries WHERE iso_code_2 = 'MK'), '6330'), -- On Lake Ohrid
('Radoviš', (SELECT id FROM world_countries WHERE iso_code_2 = 'MK'), '2420'),
('Kriva Palanka', (SELECT id FROM world_countries WHERE iso_code_2 = 'MK'), '1330'),
('Negotino', (SELECT id FROM world_countries WHERE iso_code_2 = 'MK'), '1440'),
('Debar', (SELECT id FROM world_countries WHERE iso_code_2 = 'MK'), '1250'),
('Sveti Nikole', (SELECT id FROM world_countries WHERE iso_code_2 = 'MK'), '2220'),
('Delčevo', (SELECT id FROM world_countries WHERE iso_code_2 = 'MK'), '2320'),
('Vinica', (SELECT id FROM world_countries WHERE iso_code_2 = 'MK'), '2310'),
('Probištip', (SELECT id FROM world_countries WHERE iso_code_2 = 'MK'), '2210'),
('Resen', (SELECT id FROM world_countries WHERE iso_code_2 = 'MK'), '7310'), -- Near Lake Prespa
('Kratovo', (SELECT id FROM world_countries WHERE iso_code_2 = 'MK'), '1360'),
('Berovo', (SELECT id FROM world_countries WHERE iso_code_2 = 'MK'), '2330'),
('Makedonska Kamenica', (SELECT id FROM world_countries WHERE iso_code_2 = 'MK'), '2315'),
('Valandovo', (SELECT id FROM world_countries WHERE iso_code_2 = 'MK'), '2460'),
('Makedonski Brod', (SELECT id FROM world_countries WHERE iso_code_2 = 'MK'), '6530'),
('Demir Kapija', (SELECT id FROM world_countries WHERE iso_code_2 = 'MK'), '1442'),
('Kruševo', (SELECT id FROM world_countries WHERE iso_code_2 = 'MK'), '7550'), -- Historic town (Ilinden Uprising)
('Demir Hisar', (SELECT id FROM world_countries WHERE iso_code_2 = 'MK'), '7240');

-- End of North Macedonia city list (Representative Sample)

/*
-- ============================================
-- == Información sobre North Macedonia ==
-- ============================================
--
-- Descripción General:
-- La República de Macedonia del Norte (North Macedonia) es un país sin salida al mar
-- ubicado en la Península Balcánica, en el sureste de Europa. Limita con Kosovo al
-- noroeste, Serbia al norte, Bulgaria al este, Grecia al sur y Albania al oeste.
-- Es un país mayormente montañoso, con valles y cuencas profundas, y también posee
-- grandes lagos como el Ohrid y el Prespa. Es una república parlamentaria.
--
-- Ciudades Principales:
-- * Skopie (Skopje): La capital y ciudad más grande, ubicada en el río Vardar.
--   Centro político, cultural, económico y académico.
-- * Bitola: La segunda ciudad más grande, centro cultural e histórico en el sur.
-- * Kumanovo: La tercera ciudad más grande, ubicada en el norte.
-- * Prilep y Tetovo: Otras ciudades importantes. Tetovo es un centro importante de
--   la población de etnia albanesa.
-- * Ohrid: Ciudad histórica a orillas del Lago Ohrid (ambos Patrimonio de la Humanidad
--   por la UNESCO), importante centro turístico y religioso.
-- * Veles, Štip, Strumica: Otros centros regionales significativos.
-- * La lista incluye también las principales ciudades de cada región estadística y
--   otros pueblos importantes.
--
-- Un Poco de Historia:
-- El territorio tiene una historia antigua, formando parte de los reinos de Peonia
-- y Macedonia (incluyendo el imperio de Alejandro Magno, aunque la relación con la
-- Macedonia antigua es tema de disputa histórica y política con Grecia). Fue parte
-- de los imperios Romano, Bizantino y Otomano durante siglos. Tras las Guerras
-- Balcánicas a principios del siglo XX, la región fue dividida y la mayor parte
-- del territorio actual quedó bajo Serbia, formando luego parte de Yugoslavia
-- (como República Socialista de Macedonia). Declaró pacíficamente su independencia
-- de Yugoslavia en 1991 como República de Macedonia. Su reconocimiento internacional
-- se vio obstaculizado por una larga disputa con Grecia sobre el uso del nombre
-- "Macedonia". En 2019, tras el Acuerdo de Prespa, el país cambió oficialmente su
-- nombre a República de Macedonia del Norte, lo que permitió su ingreso en la OTAN
-- en 2020 y avanzó en sus aspiraciones de unirse a la UE. El país también ha
-- enfrentado tensiones interétnicas entre la mayoría macedonia eslava y la minoría
-- albanesa, que llevaron a un conflicto breve en 2001 resuelto con el Acuerdo Marco
-- de Ohrid.
--
-- Datos Adicionales:
-- El macedonio (una lengua eslava meridional) es el idioma oficial principal; el
-- albanés también es oficial a nivel nacional y en municipios donde representa más
-- del 20% de la población. La religión predominante es el cristianismo ortodoxo
-- macedonio, con una importante minoría musulmana (principalmente albaneses). El
-- Lago Ohrid es uno de los lagos más antiguos y profundos de Europa, con una
-- biodiversidad única.
--
*/
