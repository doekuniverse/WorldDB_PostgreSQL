-- SQL Script to insert a representative sample of significant cities and towns for Iran (IR).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Iran (IR).

-- NOTE: Iran is large and populous. This list includes the capital, provincial capitals,
-- and a broad sample of major cities and significant towns. Listing every single locality is IMPOSSIBLE.
-- Postal codes are 10 digits; 5-digit examples or '00000' placeholder are provided.

-- Inserting cities for Iran (IR) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Provincial Capitals / Major Cities
('Tehran', (SELECT id FROM world_countries WHERE iso_code_2 = 'IR'), '11365'), -- National Capital (Tehran Province)
('Mashhad', (SELECT id FROM world_countries WHERE iso_code_2 = 'IR'), '91335'), -- Razavi Khorasan Province Capital
('Isfahan', (SELECT id FROM world_countries WHERE iso_code_2 = 'IR'), '81365'), -- Isfahan Province Capital
('Karaj', (SELECT id FROM world_countries WHERE iso_code_2 = 'IR'), '31365'), -- Alborz Province Capital
('Shiraz', (SELECT id FROM world_countries WHERE iso_code_2 = 'IR'), '71365'), -- Fars Province Capital
('Tabriz', (SELECT id FROM world_countries WHERE iso_code_2 = 'IR'), '51365'), -- East Azerbaijan Province Capital
('Qom', (SELECT id FROM world_countries WHERE iso_code_2 = 'IR'), '37135'), -- Qom Province Capital (Holy city)
('Ahvaz', (SELECT id FROM world_countries WHERE iso_code_2 = 'IR'), '61365'), -- Khuzestan Province Capital
('Kermanshah', (SELECT id FROM world_countries WHERE iso_code_2 = 'IR'), '67135'), -- Kermanshah Province Capital
('Urmia', (SELECT id FROM world_countries WHERE iso_code_2 = 'IR'), '57135'), -- West Azerbaijan Province Capital
('Rasht', (SELECT id FROM world_countries WHERE iso_code_2 = 'IR'), '41365'), -- Gilan Province Capital
('Zahedan', (SELECT id FROM world_countries WHERE iso_code_2 = 'IR'), '98135'), -- Sistan and Baluchestan Province Capital
('Hamadan', (SELECT id FROM world_countries WHERE iso_code_2 = 'IR'), '65135'), -- Hamadan Province Capital
('Kerman', (SELECT id FROM world_countries WHERE iso_code_2 = 'IR'), '76135'), -- Kerman Province Capital
('Yazd', (SELECT id FROM world_countries WHERE iso_code_2 = 'IR'), '89135'), -- Yazd Province Capital (UNESCO site)
('Ardabil', (SELECT id FROM world_countries WHERE iso_code_2 = 'IR'), '56135'), -- Ardabil Province Capital
('Bandar Abbas', (SELECT id FROM world_countries WHERE iso_code_2 = 'IR'), '79135'), -- Hormozgan Province Capital (Major port)
('Arak', (SELECT id FROM world_countries WHERE iso_code_2 = 'IR'), '38135'), -- Markazi Province Capital
('Sanandaj', (SELECT id FROM world_countries WHERE iso_code_2 = 'IR'), '66135'), -- Kurdistan Province Capital
('Qazvin', (SELECT id FROM world_countries WHERE iso_code_2 = 'IR'), '34135'), -- Qazvin Province Capital
('Zanjan', (SELECT id FROM world_countries WHERE iso_code_2 = 'IR'), '45135'), -- Zanjan Province Capital
('Khorramabad', (SELECT id FROM world_countries WHERE iso_code_2 = 'IR'), '68135'), -- Lorestan Province Capital
('Gorgan', (SELECT id FROM world_countries WHERE iso_code_2 = 'IR'), '49135'), -- Golestan Province Capital
('Sari', (SELECT id FROM world_countries WHERE iso_code_2 = 'IR'), '48135'), -- Mazandaran Province Capital
('Bojnord', (SELECT id FROM world_countries WHERE iso_code_2 = 'IR'), '94135'), -- North Khorasan Province Capital
('Birjand', (SELECT id FROM world_countries WHERE iso_code_2 = 'IR'), '97135'), -- South Khorasan Province Capital
('Ilam', (SELECT id FROM world_countries WHERE iso_code_2 = 'IR'), '69311'), -- Ilam Province Capital
('Bushehr', (SELECT id FROM world_countries WHERE iso_code_2 = 'IR'), '75135'), -- Bushehr Province Capital (Port city)
('Yasuj', (SELECT id FROM world_countries WHERE iso_code_2 = 'IR'), '75911'), -- Kohgiluyeh and Boyer-Ahmad Province Capital
('Shahr-e Kord', (SELECT id FROM world_countries WHERE iso_code_2 = 'IR'), '88135'), -- Chaharmahal and Bakhtiari Province Capital
('Semnan', (SELECT id FROM world_countries WHERE iso_code_2 = 'IR'), '35135'), -- Semnan Province Capital

-- Other Major/Significant Cities (Highly Selective Sample)
('Islamshahr', (SELECT id FROM world_countries WHERE iso_code_2 = 'IR'), '33135'), -- Tehran Province
('Qods', (SELECT id FROM world_countries WHERE iso_code_2 = 'IR'), '31165'), -- Tehran Province
('Malard', (SELECT id FROM world_countries WHERE iso_code_2 = 'IR'), '31561'), -- Tehran Province
('Shahriar', (SELECT id FROM world_countries WHERE iso_code_2 = 'IR'), '33516'), -- Tehran Province
('Dezful', (SELECT id FROM world_countries WHERE iso_code_2 = 'IR'), '64611'), -- Khuzestan Province
('Kashan', (SELECT id FROM world_countries WHERE iso_code_2 = 'IR'), '87135'), -- Isfahan Province
('Sabzevar', (SELECT id FROM world_countries WHERE iso_code_2 = 'IR'), '96135'), -- Razavi Khorasan Province
('Neyshabur', (SELECT id FROM world_countries WHERE iso_code_2 = 'IR'), '93135'), -- Razavi Khorasan Province
('Borujerd', (SELECT id FROM world_countries WHERE iso_code_2 = 'IR'), '69135'), -- Lorestan Province
('Abadan', (SELECT id FROM world_countries WHERE iso_code_2 = 'IR'), '63135'), -- Khuzestan Province (Oil refinery)
('Varamin', (SELECT id FROM world_countries WHERE iso_code_2 = 'IR'), '33711'), -- Tehran Province
('Babol', (SELECT id FROM world_countries WHERE iso_code_2 = 'IR'), '47135'), -- Mazandaran Province
('Amol', (SELECT id FROM world_countries WHERE iso_code_2 = 'IR'), '46135'), -- Mazandaran Province
('Maragheh', (SELECT id FROM world_countries WHERE iso_code_2 = 'IR'), '55135'), -- East Azerbaijan Province
('Sirjan', (SELECT id FROM world_countries WHERE iso_code_2 = 'IR'), '78135'); -- Kerman Province

-- End of Iran city list (Highly Selective Sample)

/*
-- ====================================
-- == Información sobre Iran ==
-- ====================================
--
-- Descripción General:
-- Irán, oficialmente República Islámica de Irán, y también conocido históricamente
-- como Persia, es un país ubicado en Asia Occidental (Oriente Medio). Limita con
-- Armenia, Azerbaiyán y Turkmenistán al norte, Afganistán y Pakistán al este, y
-- Turquía e Irak al oeste. Tiene costas en el Mar Caspio al norte y en el Golfo
-- Pérsico y el Golfo de Omán al sur. Es un país grande con una geografía diversa
-- que incluye altas cadenas montañosas (Zagros, Elburz), mesetas interiores áridas
-- y costas. Es una potencia regional importante.
--
-- Ciudades Principales:
-- * Teherán (Tehran): La capital y ciudad más grande, centro político, económico y
--   cultural del país, ubicada al pie de los montes Elburz.
-- * Mashhad: La segunda ciudad más grande, importante centro religioso chiita
--   (Santuario del Imán Reza) y capital de la provincia de Jorasán Razaví.
-- * Isfahán (Isfahan): Antigua capital persa, famosa por su impresionante arquitectura
--   islámica (Plaza Naghsh-e Jahan, mezquitas), Patrimonio de la Humanidad.
-- * Karaj, Shiraz, Tabriz, Qom, Ahvaz: Otras grandes metrópolis y centros regionales.
--   Qom es otro centro religioso chiita fundamental. Shiraz es conocida por su
--   asociación con la poesía persa y su proximidad a Persépolis. Tabriz es el
--   principal centro de la región azerí de Irán.
-- * La lista incluye también las capitales de todas las provincias y otras ciudades muy grandes.
--
-- Un Poco de Historia:
-- Irán es heredero de la antigua Persia, cuna de algunas de las civilizaciones y
-- imperios más antiguos e influyentes del mundo (Elamitas, Medos, Imperio Aqueménida
-- de Ciro y Darío, Imperio Sasánida). Fue conquistado por los árabes musulmanes en
-- el siglo VII, adoptando el Islam pero conservando su lengua y cultura persa. El
-- Imperio Safávida en el siglo XVI estableció el chiismo duodecimano como la religión
-- oficial. En el siglo XX, bajo la dinastía Pahlavi, se intentó modernizar y
-- occidentalizar el país. La Revolución Islámica de 1979, liderada por el Ayatolá
-- Jomeini, derrocó al Shah y estableció la actual república islámica teocrática.
-- La historia reciente incluye la guerra Irán-Irak (1980-1988) y tensiones con
-- países occidentales debido a su programa nuclear y su política regional.
--
-- Datos Adicionales:
-- El persa (farsi) es el idioma oficial. El Islam chiita duodecimano es la religión
-- oficial y predominante. Irán tiene importantes reservas de petróleo y gas natural.
-- Es famoso por sus alfombras persas, su poesía clásica (Hafez, Rumi, Ferdowsi),
-- su arquitectura islámica y sus sitios arqueológicos como Persépolis y Pasargada.
-- Nowruz (Año Nuevo Persa) es una festividad importante.
--
*/
