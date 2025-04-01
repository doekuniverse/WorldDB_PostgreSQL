-- SQL Script to insert a representative sample of significant cities and towns for Slovenia (SI).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Slovenia (SI).

-- NOTE: Slovenia has over 200 municipalities (občine). This list includes the capital, urban municipalities,
-- and a broad sample of significant towns/municipal centers. Listing every single settlement (naselje) is IMPOSSIBLE.
-- Postal codes are 4 digits; examples or '0000' placeholder are provided.

-- Inserting cities for Slovenia (SI) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Urban Municipalities (Mestne občine) / Major Cities
('Ljubljana', (SELECT id FROM world_countries WHERE iso_code_2 = 'SI'), '1000'), -- National Capital
('Maribor', (SELECT id FROM world_countries WHERE iso_code_2 = 'SI'), '2000'), -- Second largest city
('Celje', (SELECT id FROM world_countries WHERE iso_code_2 = 'SI'), '3000'),
('Kranj', (SELECT id FROM world_countries WHERE iso_code_2 = 'SI'), '4000'),
('Koper (Capodistria)', (SELECT id FROM world_countries WHERE iso_code_2 = 'SI'), '6000'), -- Main port city
('Velenje', (SELECT id FROM world_countries WHERE iso_code_2 = 'SI'), '3320'),
('Novo Mesto', (SELECT id FROM world_countries WHERE iso_code_2 = 'SI'), '8000'),
('Ptuj', (SELECT id FROM world_countries WHERE iso_code_2 = 'SI'), '2250'), -- Oldest city
('Murska Sobota', (SELECT id FROM world_countries WHERE iso_code_2 = 'SI'), '9000'),
('Nova Gorica', (SELECT id FROM world_countries WHERE iso_code_2 = 'SI'), '5000'), -- Border town with Italy's Gorizia
('Slovenj Gradec', (SELECT id FROM world_countries WHERE iso_code_2 = 'SI'), '2380'),
('Krško', (SELECT id FROM world_countries WHERE iso_code_2 = 'SI'), '8270'), -- Added as Urban Municipality recently

-- Other Significant Towns / Municipal Centers (Sample)
('Jesenice', (SELECT id FROM world_countries WHERE iso_code_2 = 'SI'), '4270'), -- Steel town
('Trbovlje', (SELECT id FROM world_countries WHERE iso_code_2 = 'SI'), '1420'), -- Zasavje region center
('Kamnik', (SELECT id FROM world_countries WHERE iso_code_2 = 'SI'), '1240'),
('Domžale', (SELECT id FROM world_countries WHERE iso_code_2 = 'SI'), '1230'), -- Near Ljubljana
('Izola (Isola)', (SELECT id FROM world_countries WHERE iso_code_2 = 'SI'), '6310'), -- Coastal town
('Škofja Loka', (SELECT id FROM world_countries WHERE iso_code_2 = 'SI'), '4220'), -- Historic town
('Postojna', (SELECT id FROM world_countries WHERE iso_code_2 = 'SI'), '6230'), -- Known for Postojna Cave
('Logatec', (SELECT id FROM world_countries WHERE iso_code_2 = 'SI'), '1370'),
('Kočevje', (SELECT id FROM world_countries WHERE iso_code_2 = 'SI'), '1330'),
('Grosuplje', (SELECT id FROM world_countries WHERE iso_code_2 = 'SI'), '1290'), -- Near Ljubljana
('Ravne na Koroškem', (SELECT id FROM world_countries WHERE iso_code_2 = 'SI'), '2390'), -- Koroška region center
('Zagorje ob Savi', (SELECT id FROM world_countries WHERE iso_code_2 = 'SI'), '1410'), -- Zasavje region
('Slovenska Bistrica', (SELECT id FROM world_countries WHERE iso_code_2 = 'SI'), '2310'),
('Brežice', (SELECT id FROM world_countries WHERE iso_code_2 = 'SI'), '8250'),
('Litija', (SELECT id FROM world_countries WHERE iso_code_2 = 'SI'), '1270'),
('Ajdovščina', (SELECT id FROM world_countries WHERE iso_code_2 = 'SI'), '5270'),
('Hrastnik', (SELECT id FROM world_countries WHERE iso_code_2 = 'SI'), '1430'), -- Zasavje region
('Idrija', (SELECT id FROM world_countries WHERE iso_code_2 = 'SI'), '5280'), -- UNESCO site (Mercury mining heritage)
('Črnomelj', (SELECT id FROM world_countries WHERE iso_code_2 = 'SI'), '8340'), -- Bela Krajina region center
('Bled', (SELECT id FROM world_countries WHERE iso_code_2 = 'SI'), '4260'), -- Major tourist town (Lake Bled)
('Radovljica', (SELECT id FROM world_countries WHERE iso_code_2 = 'SI'), '4240'), -- Near Bled
('Lucija', (SELECT id FROM world_countries WHERE iso_code_2 = 'SI'), '6320'), -- Part of Piran municipality (Coastal town)
('Sevnica', (SELECT id FROM world_countries WHERE iso_code_2 = 'SI'), '8290'),
('Ilirska Bistrica', (SELECT id FROM world_countries WHERE iso_code_2 = 'SI'), '6250'),
('Sežana', (SELECT id FROM world_countries WHERE iso_code_2 = 'SI'), '6210'), -- Near Italian border
('Šentjur', (SELECT id FROM world_countries WHERE iso_code_2 = 'SI'), '3230'),
('Prevalje', (SELECT id FROM world_countries WHERE iso_code_2 = 'SI'), '2391'),
('Tržič', (SELECT id FROM world_countries WHERE iso_code_2 = 'SI'), '4290');

-- End of Slovenia city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Slovenia ==
-- ====================================
--
-- Descripción General:
-- Eslovenia (Slovenia), oficialmente República de Eslovenia, es un país ubicado en
-- Europa Central/Suroriental. Limita con Italia al oeste, Austria al norte, Hungría
-- al noreste, Croacia al sur y este, y tiene una pequeña costa en el Mar Adriático.
-- Es un país mayormente montañoso, con parte de los Alpes (Alpes Julianos) en el
-- noroeste, colinas y llanuras en el este. Es conocido por sus paisajes naturales,
-- incluyendo montañas, lagos, cuevas y bosques. Es una república parlamentaria y
-- miembro de la Unión Europea, la OTAN y la Eurozona.
--
-- Ciudades Principales:
-- * Liubliana (Ljubljana): La capital y ciudad más grande, ubicada en el centro del país.
-- * Maribor: La segunda ciudad más grande, principal centro en el este de Eslovenia.
-- * Celje y Kranj: Otras ciudades importantes y centros regionales.
-- * Koper (Capodistria): Principal puerto marítimo de Eslovenia en el Adriático.
-- * Velenje, Novo Mesto, Ptuj, Murska Sobota, Nova Gorica, Slovenj Gradec, Krško:
--   Son los otros municipios con estatus de "ciudad urbana" (mestna občina).
-- * La lista incluye también otros pueblos importantes y centros municipales.
--
-- Un Poco de Historia:
-- Habitada por tribus ilirias y celtas, luego parte del Imperio Romano. Tribus
-- eslavas (ancestros de los eslovenos) se asentaron en el siglo VI. La región
-- formó parte del Sacro Imperio Romano Germánico y luego estuvo bajo el dominio
-- de los Habsburgo austriacos durante siglos (como parte de Carniola, Estiria, etc.).
-- Tras la Primera Guerra Mundial y la disolución del Imperio Austrohúngaro, Eslovenia
-- se unió al Reino de los Serbios, Croatas y Eslovenos (luego Yugoslavia). Durante
-- la Segunda Guerra Mundial, fue ocupada y dividida entre Alemania, Italia y Hungría.
-- Después de la guerra, fue una de las seis repúblicas de la Yugoslavia socialista.
-- Eslovenia fue la primera república en declarar su independencia de Yugoslavia en
-- junio de 1991, seguida por una breve guerra de diez días que aseguró su secesión.
-- Desde entonces, ha sido una democracia estable y próspera, uniéndose a la OTAN y
-- la UE en 2004 y adoptando el euro en 2007.
--
-- Datos Adicionales:
-- El esloveno es el idioma oficial (una lengua eslava meridional). El catolicismo
-- romano es la religión predominante históricamente. Eslovenia es famosa por el
-- Lago Bled (con su isla y castillo), las Cuevas de Postojna y Škocjan (Patrimonio
-- de la Humanidad), el Parque Nacional Triglav en los Alpes Julianos y los caballos
-- Lipizzaner (originarios de Lipica).
--
*/
