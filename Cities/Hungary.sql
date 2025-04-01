-- SQL Script to insert a representative sample of significant cities and towns for Hungary (HU).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Hungary (HU).

-- NOTE: Hungary has over 3,000 municipalities. This list includes the capital, county seats,
-- major cities (cities with county rights), and a broad sample of significant towns.
-- Listing every single locality is IMPOSSIBLE.
-- Postal codes are 4 digits; examples or '0000' placeholder are provided.

-- Inserting cities for Hungary (HU) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & County Seats (Megyeszékhelyek) / Major Cities (Megyei jogú városok)
('Budapest', (SELECT id FROM world_countries WHERE iso_code_2 = 'HU'), '1011'), -- National Capital
('Debrecen', (SELECT id FROM world_countries WHERE iso_code_2 = 'HU'), '4000'), -- Hajdú-Bihar County Seat
('Szeged', (SELECT id FROM world_countries WHERE iso_code_2 = 'HU'), '6700'), -- Csongrád-Csanád County Seat
('Miskolc', (SELECT id FROM world_countries WHERE iso_code_2 = 'HU'), '3500'), -- Borsod-Abaúj-Zemplén County Seat
('Pécs', (SELECT id FROM world_countries WHERE iso_code_2 = 'HU'), '7600'), -- Baranya County Seat
('Győr', (SELECT id FROM world_countries WHERE iso_code_2 = 'HU'), '9000'), -- Győr-Moson-Sopron County Seat
('Nyíregyháza', (SELECT id FROM world_countries WHERE iso_code_2 = 'HU'), '4400'), -- Szabolcs-Szatmár-Bereg County Seat
('Kecskemét', (SELECT id FROM world_countries WHERE iso_code_2 = 'HU'), '6000'), -- Bács-Kiskun County Seat
('Székesfehérvár', (SELECT id FROM world_countries WHERE iso_code_2 = 'HU'), '8000'), -- Fejér County Seat
('Szombathely', (SELECT id FROM world_countries WHERE iso_code_2 = 'HU'), '9700'), -- Vas County Seat
('Szolnok', (SELECT id FROM world_countries WHERE iso_code_2 = 'HU'), '5000'), -- Jász-Nagykun-Szolnok County Seat
('Tatabánya', (SELECT id FROM world_countries WHERE iso_code_2 = 'HU'), '2800'), -- Komárom-Esztergom County Seat
('Kaposvár', (SELECT id FROM world_countries WHERE iso_code_2 = 'HU'), '7400'), -- Somogy County Seat
('Veszprém', (SELECT id FROM world_countries WHERE iso_code_2 = 'HU'), '8200'), -- Veszprém County Seat
('Békéscsaba', (SELECT id FROM world_countries WHERE iso_code_2 = 'HU'), '5600'), -- Békés County Seat
('Zalaegerszeg', (SELECT id FROM world_countries WHERE iso_code_2 = 'HU'), '8900'), -- Zala County Seat
('Eger', (SELECT id FROM world_countries WHERE iso_code_2 = 'HU'), '3300'), -- Heves County Seat
('Salgótarján', (SELECT id FROM world_countries WHERE iso_code_2 = 'HU'), '3100'), -- Nógrád County Seat
('Szekszárd', (SELECT id FROM world_countries WHERE iso_code_2 = 'HU'), '7100'), -- Tolna County Seat

-- Other Cities with County Rights (Megyei jogú városok)
('Érd', (SELECT id FROM world_countries WHERE iso_code_2 = 'HU'), '2030'), -- Pest County
('Sopron', (SELECT id FROM world_countries WHERE iso_code_2 = 'HU'), '9400'), -- Győr-Moson-Sopron County
('Nagykanizsa', (SELECT id FROM world_countries WHERE iso_code_2 = 'HU'), '8800'), -- Zala County
('Dunaújváros', (SELECT id FROM world_countries WHERE iso_code_2 = 'HU'), '2400'), -- Fejér County
('Hódmezővásárhely', (SELECT id FROM world_countries WHERE iso_code_2 = 'HU'), '6800'), -- Csongrád-Csanád County

-- Other Significant Towns (Sample)
('Ózd', (SELECT id FROM world_countries WHERE iso_code_2 = 'HU'), '3600'), -- Borsod-Abaúj-Zemplén County
('Vác', (SELECT id FROM world_countries WHERE iso_code_2 = 'HU'), '2600'), -- Pest County
('Gödöllő', (SELECT id FROM world_countries WHERE iso_code_2 = 'HU'), '2100'), -- Pest County
('Cegléd', (SELECT id FROM world_countries WHERE iso_code_2 = 'HU'), '2700'), -- Pest County
('Baja', (SELECT id FROM world_countries WHERE iso_code_2 = 'HU'), '6500'), -- Bács-Kiskun County
('Hajdúböszörmény', (SELECT id FROM world_countries WHERE iso_code_2 = 'HU'), '4220'), -- Hajdú-Bihar County
('Kiskunfélegyháza', (SELECT id FROM world_countries WHERE iso_code_2 = 'HU'), '6100'), -- Bács-Kiskun County
('Esztergom', (SELECT id FROM world_countries WHERE iso_code_2 = 'HU'), '2500'), -- Komárom-Esztergom County (Historic capital, Basilica)
('Gyöngyös', (SELECT id FROM world_countries WHERE iso_code_2 = 'HU'), '3200'), -- Heves County
('Siófok', (SELECT id FROM world_countries WHERE iso_code_2 = 'HU'), '8600'), -- Somogy County (Major town on Lake Balaton)
('Gyula', (SELECT id FROM world_countries WHERE iso_code_2 = 'HU'), '5700'), -- Békés County
('Pápa', (SELECT id FROM world_countries WHERE iso_code_2 = 'HU'), '8500'), -- Veszprém County
('Ajka', (SELECT id FROM world_countries WHERE iso_code_2 = 'HU'), '8400'), -- Veszprém County
('Orosháza', (SELECT id FROM world_countries WHERE iso_code_2 = 'HU'), '5900'), -- Békés County
('Kiskunhalas', (SELECT id FROM world_countries WHERE iso_code_2 = 'HU'), '6400'), -- Bács-Kiskun County
('Mosonmagyaróvár', (SELECT id FROM world_countries WHERE iso_code_2 = 'HU'), '9200'); -- Győr-Moson-Sopron County

-- End of Hungary city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Hungary ==
-- ====================================
--
-- Descripción General:
-- Hungría (Hungary) es un país sin salida al mar ubicado en Europa Central, en la
-- llanura Panónica. Limita con Eslovaquia al norte, Ucrania al noreste, Rumania al
-- este, Serbia y Croacia al sur, y Eslovenia y Austria al oeste. El río Danubio
-- divide el país y su capital, Budapest. Gran parte del país es llano o ligeramente
-- ondulado, con algunas colinas bajas en el oeste y montañas de baja altitud en el
-- norte. Es una república parlamentaria y miembro de la Unión Europea y la OTAN.
--
-- Ciudades Principales:
-- * Budapest: La capital y ciudad más grande, formada por la unión de Buda y Pest a
--   ambos lados del Danubio. Es el centro político, cultural, económico y de
--   transporte del país, famosa por sus baños termales y su arquitectura.
-- * Debrecen: La segunda ciudad más grande, centro regional en el este.
-- * Szeged, Miskolc, Pécs, Győr: Otras ciudades importantes y centros universitarios
--   o industriales.
-- * Nyíregyháza, Kecskemét, Székesfehérvár: Capitales de condado (megyeszékhelyek)
--   significativas.
-- * La lista incluye también las capitales de todos los condados, las ciudades con
--   derechos de condado y otros pueblos importantes.
--
-- Un Poco de Historia:
-- La región fue parte del Imperio Romano (Panonia). Las tribus magiares (húngaras)
-- llegaron a la llanura Panónica a finales del siglo IX. Se estableció el Reino de
-- Hungría alrededor del año 1000 bajo San Esteban I, quien cristianizó el país. El
-- reino fue una potencia importante en Europa Central durante la Edad Media. Sufrió
-- la invasión mongola y luego la ocupación otomana de gran parte de su territorio
-- durante 150 años. Posteriormente, formó parte del Imperio Habsburgo y luego fue
-- socio igualitario en el Imperio Austrohúngaro (1867-1918). Tras la Primera Guerra
-- Mundial, Hungría perdió gran parte de su territorio histórico (Tratado de Trianón).
-- Después de la Segunda Guerra Mundial, cayó bajo la influencia soviética y se
-- estableció un régimen comunista. La Revolución Húngara de 1956 contra el dominio
-- soviético fue aplastada. El régimen comunista terminó en 1989. Hungría se unió
-- a la OTAN en 1999 y a la Unión Europea en 2004.
--
-- Datos Adicionales:
-- El húngaro (magiar) es el idioma oficial, una lengua ugrofinesa única en Europa
-- Central. Hungría es famosa por sus baños termales (Budapest es la "Ciudad de los
-- Balnearios"), el pimentón (paprika) como ingrediente clave en su cocina (goulash),
-- el vino Tokaji y el Lago Balatón (el lago más grande de Europa Central).
--
*/
