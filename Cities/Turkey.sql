-- SQL Script to insert a representative sample of significant cities and towns for Turkey (TR).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Turkey (TR).

-- NOTE: Turkey is divided into 81 provinces, which contain numerous districts ('ilçe') and villages ('köy').
-- Listing every single settlement is impractical for this format. This list focuses on the largest city, the national capital,
-- major metropolitan municipalities, provincial capitals, and a sample of other significant towns/districts.
-- Postal codes in Turkey use a 5-digit format (NNNNN). A representative code for the city/district center is provided where possible,
-- but usage/data availability might vary. Using '00000' as a placeholder if unavailable.

-- Inserting cities/towns for Turkey (TR) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Largest City & National Capital
('Istanbul', (SELECT id FROM world_countries WHERE iso_code_2 = 'TR'), '34000'), -- Largest City / Cultural & Economic Hub (Istanbul Province)
('Ankara', (SELECT id FROM world_countries WHERE iso_code_2 = 'TR'), '06000'), -- National Capital (Ankara Province Capital)

-- Major Metropolitan Cities / Provincial Capitals (Sample)
('İzmir', (SELECT id FROM world_countries WHERE iso_code_2 = 'TR'), '35000'), -- Major Aegean Port City (İzmir Province Capital)
('Bursa', (SELECT id FROM world_countries WHERE iso_code_2 = 'TR'), '16000'), -- Major Industrial City / Former Ottoman Capital (Bursa Province Capital)
('Adana', (SELECT id FROM world_countries WHERE iso_code_2 = 'TR'), '01000'), -- Major City in Southern Turkey (Adana Province Capital)
('Gaziantep', (SELECT id FROM world_countries WHERE iso_code_2 = 'TR'), '27000'), -- Major City in Southeast (Gaziantep Province Capital)
('Konya', (SELECT id FROM world_countries WHERE iso_code_2 = 'TR'), '42000'), -- Major City in Central Anatolia (Konya Province Capital)
('Antalya', (SELECT id FROM world_countries WHERE iso_code_2 = 'TR'), '07000'), -- Major Mediterranean Resort City (Antalya Province Capital)
('Kayseri', (SELECT id FROM world_countries WHERE iso_code_2 = 'TR'), '38000'), -- Major City in Central Anatolia (Kayseri Province Capital)
('Mersin', (SELECT id FROM world_countries WHERE iso_code_2 = 'TR'), '33000'), -- Major Mediterranean Port City (Mersin Province Capital)
('Eskişehir', (SELECT id FROM world_countries WHERE iso_code_2 = 'TR'), '26000'), -- University City (Eskişehir Province Capital)
('Diyarbakır', (SELECT id FROM world_countries WHERE iso_code_2 = 'TR'), '21000'), -- Major City in Southeast (Diyarbakır Province Capital)
('Samsun', (SELECT id FROM world_countries WHERE iso_code_2 = 'TR'), '55000'), -- Major Black Sea Port City (Samsun Province Capital)
('Denizli', (SELECT id FROM world_countries WHERE iso_code_2 = 'TR'), '20000'), -- Industrial City / Near Pamukkale (Denizli Province Capital)
('Şanlıurfa', (SELECT id FROM world_countries WHERE iso_code_2 = 'TR'), '63000'), -- Historic City in Southeast (Şanlıurfa Province Capital)

-- Other Provincial Capitals / Significant Towns (Sample)
('Trabzon', (SELECT id FROM world_countries WHERE iso_code_2 = 'TR'), '61000'), -- Black Sea Port City (Trabzon Province Capital)
('Erzurum', (SELECT id FROM world_countries WHERE iso_code_2 = 'TR'), '25000'), -- Major City in Eastern Anatolia (Erzurum Province Capital)
('Van', (SELECT id FROM world_countries WHERE iso_code_2 = 'TR'), '65000'), -- City by Lake Van (Van Province Capital)
('Edirne', (SELECT id FROM world_countries WHERE iso_code_2 = 'TR'), '22000'), -- City in European Turkey / Former Ottoman Capital (Edirne Province Capital)
('Bodrum', (SELECT id FROM world_countries WHERE iso_code_2 = 'TR'), '48400'), -- Major Aegean Tourist Resort (Muğla Province)
('Mardin', (SELECT id FROM world_countries WHERE iso_code_2 = 'TR'), '47000'), -- Historic Hilltop City (Mardin Province Capital)
('Çanakkale', (SELECT id FROM world_countries WHERE iso_code_2 = 'TR'), '17000'); -- City near Gallipoli / Dardanelles (Çanakkale Province Capital)


-- End of Turkey city/town list (Representative Sample)

/*
-- =============================================
-- ==      Información sobre Turquía         ==
-- =============================================
--
-- Descripción General:
-- Turquía (Türkiye), oficialmente la República de Turquía, es un país transcontinental
-- ubicado principalmente en la península de Anatolia en Asia Occidental, con una
-- porción más pequeña en la península de los Balcanes en el Sudeste de Europa (Tracia Oriental).
-- Limita con ocho países y tiene costas en el Mar Negro al norte, el Mar Mediterráneo
-- al sur y el Mar Egeo al oeste. El Mar de Mármara y los estrechos del Bósforo y los
-- Dardanelos conectan el Mar Negro con el Egeo y separan la Tracia de Anatolia. Su
-- ubicación estratégica le ha conferido una gran importancia histórica y geopolítica.
--
-- Ciudades Principales:
-- * Estambul (Istanbul): La ciudad más grande del país y su centro cultural, económico
--   y financiero principal. Ubicada a ambos lados del Bósforo, conectando Europa y Asia.
--   Fue capital de los imperios Bizantino y Otomano (como Constantinopla).
-- * Ankara: La capital de Turquía desde 1923, ubicada en el centro de Anatolia.
-- * Esmirna (İzmir): La tercera ciudad más grande, importante puerto en la costa del Egeo.
-- * Bursa: Gran centro industrial y primera capital del Imperio Otomano.
-- * Adana, Gaziantep, Konya, Antalya, Kayseri, Mersin, Diyarbakır: Otras ciudades
--   metropolitanas importantes con roles económicos, industriales o culturales significativos.
--
-- Un Poco de Historia:
-- Anatolia ha sido cuna de algunas de las civilizaciones más antiguas del mundo,
-- incluyendo los hititas, frigios, lidios y otros. Fue colonizada por los antiguos
-- griegos y posteriormente conquistada por los persas, Alejandro Magno y el Imperio
-- Romano. Se convirtió en el corazón del Imperio Bizantino (Imperio Romano de Oriente)
-- con Constantinopla como capital. Tribus túrquicas de Asia Central, especialmente los
-- selyúcidas, conquistaron gran parte de Anatolia a partir del siglo XI. El Imperio
-- Otomano surgió en Anatolia en el siglo XIII, conquistó Constantinopla en 1453 y se
-- expandió hasta convertirse en un vasto imperio que abarcaba partes de Europa, Asia
-- y África. Tras su declive y derrota en la Primera Guerra Mundial, el Imperio Otomano
-- fue disuelto. Mustafa Kemal Atatürk lideró la Guerra de Independencia Turca y fundó
-- la República de Turquía en 1923, implementando reformas radicales para modernizar
-- y secularizar el país.
--
-- Datos Adicionales:
-- El turco es el idioma oficial. El kurdo es hablado por una minoría significativa,
-- principalmente en el sureste. La gran mayoría de la población es musulmana (predominantemente
-- sunita), aunque Turquía es oficialmente un estado secular. El país posee un inmenso
-- patrimonio histórico y arqueológico (Éfeso, Capadocia, Göbekli Tepe, etc.). La cultura
-- turca es una mezcla de influencias túrquicas, anatolias, otomanas, de Asia Occidental
-- y europeas. La cocina turca es reconocida mundialmente. El turismo, la manufactura
-- (textiles, automotriz), la agricultura y los servicios son sectores económicos clave.
-- Turquía es miembro de la OTAN, el G20 y candidato a la Unión Europea.
--
*/
