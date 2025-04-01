-- SQL Script to insert a representative sample of significant cities and towns for Finland (FI).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Finland (FI).

-- NOTE: Finland has over 300 municipalities (kunta). This list includes the capital, major cities,
-- regional centers, and significant towns. Listing every single locality is IMPOSSIBLE.
-- Postal codes are 5 digits; examples or '00000' placeholder are provided.

-- Inserting cities for Finland (FI) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Major Cities / Regional Centers
('Helsinki (Helsingfors)', (SELECT id FROM world_countries WHERE iso_code_2 = 'FI'), '00100'), -- National Capital
('Espoo (Esbo)', (SELECT id FROM world_countries WHERE iso_code_2 = 'FI'), '02100'), -- Second largest city (Helsinki Metro)
('Tampere (Tammerfors)', (SELECT id FROM world_countries WHERE iso_code_2 = 'FI'), '33100'), -- Third largest city
('Vantaa (Vanda)', (SELECT id FROM world_countries WHERE iso_code_2 = 'FI'), '01300'), -- Fourth largest city (Helsinki Metro, Airport)
('Oulu (Uleåborg)', (SELECT id FROM world_countries WHERE iso_code_2 = 'FI'), '90100'), -- Major city in the North
('Turku (Åbo)', (SELECT id FROM world_countries WHERE iso_code_2 = 'FI'), '20100'), -- Oldest city, former capital
('Jyväskylä', (SELECT id FROM world_countries WHERE iso_code_2 = 'FI'), '40100'), -- Central Finland
('Lahti (Lahtis)', (SELECT id FROM world_countries WHERE iso_code_2 = 'FI'), '15100'), -- Päijänne Tavastia region
('Kuopio', (SELECT id FROM world_countries WHERE iso_code_2 = 'FI'), '70100'), -- Northern Savonia region
('Pori (Björneborg)', (SELECT id FROM world_countries WHERE iso_code_2 = 'FI'), '28100'), -- Satakunta region (West coast)
('Joensuu', (SELECT id FROM world_countries WHERE iso_code_2 = 'FI'), '80100'), -- North Karelia region Capital
('Lappeenranta (Villmanstrand)', (SELECT id FROM world_countries WHERE iso_code_2 = 'FI'), '53100'), -- South Karelia region Capital
('Vaasa (Vasa)', (SELECT id FROM world_countries WHERE iso_code_2 = 'FI'), '65100'), -- Ostrobothnia region Capital (Swedish-speaking majority)
('Rovaniemi', (SELECT id FROM world_countries WHERE iso_code_2 = 'FI'), '96100'), -- Lapland region Capital (Arctic Circle)
('Seinäjoki', (SELECT id FROM world_countries WHERE iso_code_2 = 'FI'), '60100'), -- South Ostrobothnia region Capital
('Mikkeli (Sankt Michel)', (SELECT id FROM world_countries WHERE iso_code_2 = 'FI'), '50100'), -- South Savonia region Capital
('Kotka', (SELECT id FROM world_countries WHERE iso_code_2 = 'FI'), '48100'), -- Kymenlaakso region (Port city)
('Salo', (SELECT id FROM world_countries WHERE iso_code_2 = 'FI'), '24100'), -- Southwest Finland region
('Porvoo (Borgå)', (SELECT id FROM world_countries WHERE iso_code_2 = 'FI'), '06100'), -- Uusimaa region (Historic town)
('Kokkola (Karleby)', (SELECT id FROM world_countries WHERE iso_code_2 = 'FI'), '67100'), -- Central Ostrobothnia region Capital
('Hyvinkää (Hyvinge)', (SELECT id FROM world_countries WHERE iso_code_2 = 'FI'), '05800'), -- Uusimaa region
('Lohja (Lojo)', (SELECT id FROM world_countries WHERE iso_code_2 = 'FI'), '08100'), -- Uusimaa region
('Kajaani (Kajana)', (SELECT id FROM world_countries WHERE iso_code_2 = 'FI'), '87100'), -- Kainuu region Capital
('Rauma (Raumo)', (SELECT id FROM world_countries WHERE iso_code_2 = 'FI'), '26100'), -- Satakunta region (UNESCO site - Old Rauma)
('Järvenpää', (SELECT id FROM world_countries WHERE iso_code_2 = 'FI'), '04400'), -- Uusimaa region
('Kirkkonummi (Kyrkslätt)', (SELECT id FROM world_countries WHERE iso_code_2 = 'FI'), '02400'), -- Uusimaa region (Helsinki Metro)
('Kerava (Kervo)', (SELECT id FROM world_countries WHERE iso_code_2 = 'FI'), '04200'), -- Uusimaa region (Helsinki Metro)
('Nokia', (SELECT id FROM world_countries WHERE iso_code_2 = 'FI'), '37100'), -- Pirkanmaa region (Near Tampere)
('Kaarina (Sankt Karins)', (SELECT id FROM world_countries WHERE iso_code_2 = 'FI'), '20780'), -- Southwest Finland region (Near Turku)
('Ylöjärvi', (SELECT id FROM world_countries WHERE iso_code_2 = 'FI'), '33470'), -- Pirkanmaa region (Near Tampere)
('Savonlinna (Nyslott)', (SELECT id FROM world_countries WHERE iso_code_2 = 'FI'), '57100'), -- South Savonia region (Opera festival, castle)
('Riihimäki', (SELECT id FROM world_countries WHERE iso_code_2 = 'FI'), '11100'), -- Kanta-Häme region
('Imatra', (SELECT id FROM world_countries WHERE iso_code_2 = 'FI'), '55100'), -- South Karelia region
('Varkaus', (SELECT id FROM world_countries WHERE iso_code_2 = 'FI'), '78100'), -- Northern Savonia region
('Kemi', (SELECT id FROM world_countries WHERE iso_code_2 = 'FI'), '94100'), -- Lapland region (Port city)
('Raahe (Brahestad)', (SELECT id FROM world_countries WHERE iso_code_2 = 'FI'), '92100'), -- North Ostrobothnia region
('Tornio (Torneå)', (SELECT id FROM world_countries WHERE iso_code_2 = 'FI'), '95400'), -- Lapland region (Border town with Sweden's Haparanda)
('Iisalmi (Idensalmi)', (SELECT id FROM world_countries WHERE iso_code_2 = 'FI'), '74100'), -- Northern Savonia region
('Hamina (Fredrikshamn)', (SELECT id FROM world_countries WHERE iso_code_2 = 'FI'), '49400'); -- Kymenlaakso region

-- End of Finland city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Finland ==
-- ====================================
--
-- Descripción General:
-- Finlandia (Finland) es un país nórdico ubicado en el norte de Europa. Limita con
-- Suecia al oeste, Noruega al norte, Rusia al este y el Mar Báltico al sur y oeste
-- (con el Golfo de Botnia y el Golfo de Finlandia). Es conocido como "la tierra de
-- los mil lagos" (en realidad, tiene casi 188,000 lagos) y vastos bosques que cubren
-- gran parte de su territorio. También posee numerosas islas, especialmente en el
-- suroeste (Archipiélago de Turku) y las islas Åland (una región autónoma). Es una
-- república parlamentaria y miembro de la Unión Europea y la OTAN.
--
-- Ciudades Principales:
-- * Helsinki (Helsingfors): La capital y ciudad más grande, ubicada en la costa sur.
--   Es el centro político, económico, cultural y de diseño del país.
-- * Espoo (Esbo) y Vantaa (Vanda): Grandes ciudades que forman parte del área
--   metropolitana de Helsinki (Vantaa alberga el principal aeropuerto).
-- * Tampere (Tammerfors): La ciudad interior más grande, ubicada entre dos lagos.
-- * Oulu (Uleåborg): Principal ciudad del norte de Finlandia, centro tecnológico.
-- * Turku (Åbo): La ciudad más antigua de Finlandia y antigua capital, ubicada en la
--   costa suroeste.
-- * Jyväskylä, Lahti, Kuopio, Pori: Otros importantes centros regionales y urbanos.
-- * Rovaniemi: Capital de la Laponia finlandesa, cerca del Círculo Polar Ártico,
--   conocida como la "ciudad natal oficial" de Papá Noel.
-- * La lista incluye también las capitales regionales y otras ciudades significativas.
--
-- Un Poco de Historia:
-- Habitada desde la Edad de Piedra. Formó parte del Reino de Suecia durante siglos
-- (desde la Edad Media hasta 1809). En 1809, fue conquistada por Rusia y se convirtió
-- en un Gran Ducado autónomo dentro del Imperio Ruso. Finlandia declaró su
-- independencia en 1917 tras la Revolución Rusa. Luchó contra la Unión Soviética
-- en la Guerra de Invierno (1939-40) y la Guerra de Continuación (1941-44) durante
-- la Segunda Guerra Mundial, logrando mantener su independencia pero perdiendo
-- territorio. Mantuvo una política de neutralidad durante la Guerra Fría. Se unió
-- a la Unión Europea en 1995 y a la OTAN en 2023.
--
-- Datos Adicionales:
-- Los idiomas oficiales son el finés (una lengua ugrofinesa) y el sueco (hablado
-- por una minoría). Finlandia es famosa por su sistema educativo, su alta calidad
-- de vida (a menudo clasificada como el país más feliz del mundo), la sauna (parte
-- integral de la cultura), el diseño y la naturaleza (bosques, lagos, auroras boreales).
--
*/
