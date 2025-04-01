-- SQL Script to insert a representative sample of significant cities and towns for Canada (CA).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Canada (CA).

-- NOTE: Canada is the world's second-largest country. This list includes the national capital,
-- provincial/territorial capitals, and a broad sample of major metropolitan and regional cities.
-- Listing every single locality is IMPOSSIBLE.
-- Postal codes are A#A #A# format; examples or 'A0A 0A0' placeholder are provided.

-- Inserting cities for Canada (CA) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- National & Provincial/Territorial Capitals
('Ottawa', (SELECT id FROM world_countries WHERE iso_code_2 = 'CA'), 'K1A 0A6'), -- National Capital (ON)
('Toronto', (SELECT id FROM world_countries WHERE iso_code_2 = 'CA'), 'M5H 2N2'), -- Provincial Capital (ON), Largest city
('Montreal', (SELECT id FROM world_countries WHERE iso_code_2 = 'CA'), 'H3C 3Z4'), -- Largest city in Quebec
('Quebec City', (SELECT id FROM world_countries WHERE iso_code_2 = 'CA'), 'G1R 4R8'), -- Provincial Capital (QC)
('Vancouver', (SELECT id FROM world_countries WHERE iso_code_2 = 'CA'), 'V6C 3L6'), -- Largest city in BC
('Victoria', (SELECT id FROM world_countries WHERE iso_code_2 = 'CA'), 'V8W 1P6'), -- Provincial Capital (BC)
('Calgary', (SELECT id FROM world_countries WHERE iso_code_2 = 'CA'), 'T2P 2M5'), -- Largest city in Alberta
('Edmonton', (SELECT id FROM world_countries WHERE iso_code_2 = 'CA'), 'T5J 2R7'), -- Provincial Capital (AB)
('Winnipeg', (SELECT id FROM world_countries WHERE iso_code_2 = 'CA'), 'R3C 1S3'), -- Provincial Capital (MB)
('Regina', (SELECT id FROM world_countries WHERE iso_code_2 = 'CA'), 'S4P 3C8'), -- Provincial Capital (SK)
('Saskatoon', (SELECT id FROM world_countries WHERE iso_code_2 = 'CA'), 'S7K 0K6'), -- Largest city in Saskatchewan
('Halifax', (SELECT id FROM world_countries WHERE iso_code_2 = 'CA'), 'B3J 1S9'), -- Provincial Capital (NS - Halifax Regional Municipality)
('Fredericton', (SELECT id FROM world_countries WHERE iso_code_2 = 'CA'), 'E3B 1B5'), -- Provincial Capital (NB)
('St. John''s', (SELECT id FROM world_countries WHERE iso_code_2 = 'CA'), 'A1C 5M2'), -- Provincial Capital (NL)
('Charlottetown', (SELECT id FROM world_countries WHERE iso_code_2 = 'CA'), 'C1A 1R3'), -- Provincial Capital (PE)
('Yellowknife', (SELECT id FROM world_countries WHERE iso_code_2 = 'CA'), 'X1A 1A1'), -- Territorial Capital (NT)
('Whitehorse', (SELECT id FROM world_countries WHERE iso_code_2 = 'CA'), 'Y1A 1A1'), -- Territorial Capital (YT)
('Iqaluit', (SELECT id FROM world_countries WHERE iso_code_2 = 'CA'), 'X0A 0H0'), -- Territorial Capital (NU)

-- Other Major Metropolitan & Regional Cities (Sample)
('Mississauga', (SELECT id FROM world_countries WHERE iso_code_2 = 'CA'), 'L5B 3C1'), -- ON (Greater Toronto Area)
('Hamilton', (SELECT id FROM world_countries WHERE iso_code_2 = 'CA'), 'L8P 4Y5'), -- ON
('Brampton', (SELECT id FROM world_countries WHERE iso_code_2 = 'CA'), 'L6V 1N6'), -- ON (Greater Toronto Area)
('Surrey', (SELECT id FROM world_countries WHERE iso_code_2 = 'CA'), 'V3T 2W1'), -- BC (Metro Vancouver)
('Laval', (SELECT id FROM world_countries WHERE iso_code_2 = 'CA'), 'H7S 1X2'), -- QC (Greater Montreal)
('London', (SELECT id FROM world_countries WHERE iso_code_2 = 'CA'), 'N6A 1B9'), -- ON
('Markham', (SELECT id FROM world_countries WHERE iso_code_2 = 'CA'), 'L3P 1X3'), -- ON (Greater Toronto Area)
('Vaughan', (SELECT id FROM world_countries WHERE iso_code_2 = 'CA'), 'L4K 1Z7'), -- ON (Greater Toronto Area)
('Gatineau', (SELECT id FROM world_countries WHERE iso_code_2 = 'CA'), 'J8X 1Y4'), -- QC (Across river from Ottawa)
('Longueuil', (SELECT id FROM world_countries WHERE iso_code_2 = 'CA'), 'J4H 1T5'), -- QC (Greater Montreal)
('Burnaby', (SELECT id FROM world_countries WHERE iso_code_2 = 'CA'), 'V5G 1M2'), -- BC (Metro Vancouver)
('Kitchener', (SELECT id FROM world_countries WHERE iso_code_2 = 'CA'), 'N2G 1G7'), -- ON
('Windsor', (SELECT id FROM world_countries WHERE iso_code_2 = 'CA'), 'N9A 1A1'), -- ON
('Richmond', (SELECT id FROM world_countries WHERE iso_code_2 = 'CA'), 'V6Y 2C1'), -- BC (Metro Vancouver)
('Oakville', (SELECT id FROM world_countries WHERE iso_code_2 = 'CA'), 'L6J 1H3'), -- ON (Greater Toronto Area)
('Burlington', (SELECT id FROM world_countries WHERE iso_code_2 = 'CA'), 'L7R 3Y5'), -- ON (Greater Toronto Area)
('Greater Sudbury', (SELECT id FROM world_countries WHERE iso_code_2 = 'CA'), 'P3E 4S4'), -- ON
('Sherbrooke', (SELECT id FROM world_countries WHERE iso_code_2 = 'CA'), 'J1H 1R1'), -- QC
('Oshawa', (SELECT id FROM world_countries WHERE iso_code_2 = 'CA'), 'L1H 1A1'), -- ON (Greater Toronto Area)
('St. Catharines', (SELECT id FROM world_countries WHERE iso_code_2 = 'CA'), 'L2R 3R4'), -- ON
('Lévis', (SELECT id FROM world_countries WHERE iso_code_2 = 'CA'), 'G6V 1P1'), -- QC (Across river from Quebec City)
('Barrie', (SELECT id FROM world_countries WHERE iso_code_2 = 'CA'), 'L4N 1L6'), -- ON
('Trois-Rivières', (SELECT id FROM world_countries WHERE iso_code_2 = 'CA'), 'G9A 1T9'), -- QC
('Guelph', (SELECT id FROM world_countries WHERE iso_code_2 = 'CA'), 'N1H 3A1'), -- ON
('Cambridge', (SELECT id FROM world_countries WHERE iso_code_2 = 'CA'), 'N1R 3C9'), -- ON
('Coquitlam', (SELECT id FROM world_countries WHERE iso_code_2 = 'CA'), 'V3B 7K3'), -- BC (Metro Vancouver)
('Kingston', (SELECT id FROM world_countries WHERE iso_code_2 = 'CA'), 'K7L 1X3'), -- ON
('Kelowna', (SELECT id FROM world_countries WHERE iso_code_2 = 'CA'), 'V1Y 1J4'), -- BC
('Saguenay', (SELECT id FROM world_countries WHERE iso_code_2 = 'CA'), 'G7H 1S3'), -- QC (Merger of Chicoutimi, Jonquière, etc.)
('Terrebonne', (SELECT id FROM world_countries WHERE iso_code_2 = 'CA'), 'J6W 1L1'), -- QC (Greater Montreal)
('Milton', (SELECT id FROM world_countries WHERE iso_code_2 = 'CA'), 'L9T 1Y1'), -- ON (Greater Toronto Area)
('Thunder Bay', (SELECT id FROM world_countries WHERE iso_code_2 = 'CA'), 'P7A 1A1'), -- ON
('Moncton', (SELECT id FROM world_countries WHERE iso_code_2 = 'CA'), 'E1C 1G1'), -- NB
('Saint John', (SELECT id FROM world_countries WHERE iso_code_2 = 'CA'), 'E2L 1E1'), -- NB
('Red Deer', (SELECT id FROM world_countries WHERE iso_code_2 = 'CA'), 'T4N 0A6'), -- AB
('Lethbridge', (SELECT id FROM world_countries WHERE iso_code_2 = 'CA'), 'T1H 0A6'), -- AB
('Prince George', (SELECT id FROM world_countries WHERE iso_code_2 = 'CA'), 'V2L 1R8'), -- BC
('Abbotsford', (SELECT id FROM world_countries WHERE iso_code_2 = 'CA'), 'V2T 1W5'); -- BC

-- End of Canada city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Canada ==
-- ====================================
--
-- Descripción General:
-- Canadá es un país ubicado en América del Norte, que se extiende desde el Océano
-- Atlántico al este, el Océano Pacífico al oeste y el Océano Ártico al norte. Es
-- el segundo país más grande del mundo por área total. Su geografía es
-- extremadamente variada, incluyendo vastas cadenas montañosas (como las Rocosas),
-- extensas praderas, el Escudo Canadiense (una enorme región rocosa alrededor de
-- la Bahía de Hudson), grandes bosques boreales, la región de los Grandes Lagos y
-- la tundra ártica. Es una monarquía constitucional parlamentaria federal y
-- oficialmente bilingüe (inglés y francés).
--
-- Ciudades Principales:
-- * Ottawa: La capital nacional, ubicada en Ontario, cerca de la frontera con Quebec.
-- * Toronto: La ciudad más poblada de Canadá y capital de Ontario, centro financiero global.
-- * Montreal: La segunda ciudad más grande y la mayor ciudad francófona de América del Norte (Quebec).
-- * Vancouver: Principal ciudad de la costa oeste (Columbia Británica), importante puerto y centro cultural.
-- * Calgary y Edmonton: Principales ciudades de Alberta, centros de la industria energética.
-- * Quebec City: Capital de Quebec, famosa por su ciudad vieja amurallada (Patrimonio de la Humanidad).
-- * Winnipeg, Halifax, Regina, Saskatoon, St. John's, etc.: Otras importantes capitales provinciales y centros regionales.
-- * La lista incluye también las capitales territoriales y muchas otras ciudades significativas.
--
-- Un Poco de Historia:
-- Habitada por pueblos indígenas durante milenios (Primeras Naciones, Inuit, Métis).
-- Fue explorada y colonizada por Francia (Nueva Francia) y Gran Bretaña a partir
-- del siglo XVII. Tras la Guerra de los Siete Años (mediados del s. XVIII), Francia
-- cedió casi todas sus posesiones norteamericanas a Gran Bretaña. Las colonias
-- británicas se unieron gradualmente, formando la Confederación Canadiense en 1867
-- con el estatus de Dominio. Canadá se expandió hacia el oeste y el norte, logrando
-- plena soberanía gradualmente a lo largo del siglo XX. Se ha convertido en una
-- nación desarrollada y multicultural.
--
-- Datos Adicionales:
-- Canadá tiene la frontera terrestre no defendida más larga del mundo (con EE.UU.).
-- La hoja de arce es el símbolo nacional. El hockey sobre hielo es el deporte de
-- invierno nacional y una pasión cultural. Es conocido por sus vastos espacios
-- naturales y parques nacionales.
--
*/
