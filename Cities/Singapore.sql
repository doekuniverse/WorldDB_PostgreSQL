-- SQL Script to insert a representative sample of major areas/planning areas for Singapore (SG).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Singapore (SG).

-- NOTE: Singapore is a highly urbanized city-state. This list includes major recognized areas,
-- often corresponding to Planning Areas. Listing every single specific locality is not practical.
-- Postal codes are 6 digits; examples or '000000' placeholder are provided.

-- Inserting areas for Singapore (SG) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Central Region Areas (Sample)
('Downtown Core (Central Business District)', (SELECT id FROM world_countries WHERE iso_code_2 = 'SG'), '018900'), -- Financial district, Marina Bay
('Orchard', (SELECT id FROM world_countries WHERE iso_code_2 = 'SG'), '238800'), -- Major shopping belt
('Singapore River', (SELECT id FROM world_countries WHERE iso_code_2 = 'SG'), '179000'), -- Clarke Quay, Boat Quay area
('Rochor', (SELECT id FROM world_countries WHERE iso_code_2 = 'SG'), '188000'), -- Includes Bugis, Little India
('Kallang', (SELECT id FROM world_countries WHERE iso_code_2 = 'SG'), '3 Kallang'), -- Postal code format varies, using placeholder style
('Geylang', (SELECT id FROM world_countries WHERE iso_code_2 = 'SG'), '387000'),
('Marine Parade', (SELECT id FROM world_countries WHERE iso_code_2 = 'SG'), '449000'),
('Queenstown', (SELECT id FROM world_countries WHERE iso_code_2 = 'SG'), '149000'),
('Bukit Merah', (SELECT id FROM world_countries WHERE iso_code_2 = 'SG'), '159000'),
('Bukit Timah', (SELECT id FROM world_countries WHERE iso_code_2 = 'SG'), '288000'),
('Novena', (SELECT id FROM world_countries WHERE iso_code_2 = 'SG'), '307000'),
('Toa Payoh', (SELECT id FROM world_countries WHERE iso_code_2 = 'SG'), '319000'),
('Bishan', (SELECT id FROM world_countries WHERE iso_code_2 = 'SG'), '579000'),

-- East Region Areas (Sample)
('Bedok', (SELECT id FROM world_countries WHERE iso_code_2 = 'SG'), '460000'), -- Most populous planning area
('Tampines', (SELECT id FROM world_countries WHERE iso_code_2 = 'SG'), '520000'), -- Regional centre
('Pasir Ris', (SELECT id FROM world_countries WHERE iso_code_2 = 'SG'), '519000'),
('Changi', (SELECT id FROM world_countries WHERE iso_code_2 = 'SG'), '819000'), -- Location of Changi Airport

-- North Region Areas (Sample)
('Woodlands', (SELECT id FROM world_countries WHERE iso_code_2 = 'SG'), '730000'), -- Regional centre, causeway to Malaysia
('Yishun', (SELECT id FROM world_countries WHERE iso_code_2 = 'SG'), '760000'),
('Sembawang', (SELECT id FROM world_countries WHERE iso_code_2 = 'SG'), '750000'),
('Ang Mo Kio', (SELECT id FROM world_countries WHERE iso_code_2 = 'SG'), '560000'),

-- North-East Region Areas (Sample)
('Hougang', (SELECT id FROM world_countries WHERE iso_code_2 = 'SG'), '530000'),
('Sengkang', (SELECT id FROM world_countries WHERE iso_code_2 = 'SG'), '540000'),
('Punggol', (SELECT id FROM world_countries WHERE iso_code_2 = 'SG'), '820000'),
('Serangoon', (SELECT id FROM world_countries WHERE iso_code_2 = 'SG'), '550000'),

-- West Region Areas (Sample)
('Jurong West', (SELECT id FROM world_countries WHERE iso_code_2 = 'SG'), '640000'), -- Major residential/industrial area
('Jurong East', (SELECT id FROM world_countries WHERE iso_code_2 = 'SG'), '600000'), -- Regional centre
('Bukit Batok', (SELECT id FROM world_countries WHERE iso_code_2 = 'SG'), '650000'),
('Bukit Panjang', (SELECT id FROM world_countries WHERE iso_code_2 = 'SG'), '670000'),
('Choa Chu Kang', (SELECT id FROM world_countries WHERE iso_code_2 = 'SG'), '680000'),
('Clementi', (SELECT id FROM world_countries WHERE iso_code_2 = 'SG'), '120000');

-- End of Singapore locality list (Representative Sample of Planning Areas/Districts)

/*
-- ====================================
-- == Información sobre Singapore ==
-- ====================================
--
-- Descripción General:
-- La República de Singapur es una ciudad-estado insular soberana ubicada en el
-- extremo sur de la Península Malaya, en el Sudeste Asiático. Consiste en la isla
-- principal de Singapur y más de 60 islotes más pequeños. Se encuentra separada de
-- Malasia por el Estrecho de Johor y de Indonesia por el Estrecho de Singapur. Es
-- un centro global líder en finanzas, comercio y transporte (su puerto es uno de
-- los más activos del mundo). Es un país muy desarrollado, densamente poblado y
-- multicultural.
--
-- Ciudades Principales (Áreas):
-- Singapur funciona como una única ciudad-estado integrada. Se divide para fines
-- de planificación y administración en regiones y áreas de planificación (Planning Areas).
-- * Central Area: El corazón histórico, financiero y comercial, que incluye el
--   Distrito Central de Negocios (CBD), Orchard Road (compras), Marina Bay, etc.
-- * Áreas Residenciales/Nuevas Ciudades (HDB Towns): Gran parte de la población vive
--   en ciudades planificadas de alta densidad desarrolladas por el Housing & Development
--   Board (HDB), como Bedok, Tampines, Jurong West, Woodlands, Hougang, Sengkang,
--   Ang Mo Kio, Toa Payoh, etc.
-- * Jurong: Importante área industrial y ahora también comercial en el oeste.
-- * Changi: Ubicación del Aeropuerto Internacional de Changi, uno de los mejores del mundo.
-- * La lista incluye las principales áreas de planificación y distritos reconocidos.
--
-- Un Poco de Historia:
-- La isla tiene una historia temprana como parte de imperios como Srivijaya y
-- Majapahit, y luego del Sultanato de Malaca y Johor. La ciudad moderna fue fundada
-- en 1819 por Sir Stamford Raffles de la Compañía Británica de las Indias Orientales
-- como un puesto comercial estratégico. Se convirtió en parte de los Establecimientos
-- del Estrecho (Straits Settlements) bajo control británico. Creció rápidamente como
-- un importante puerto y centro comercial. Fue ocupada por Japón durante la Segunda
-- Guerra Mundial. Después de la guerra, obtuvo el autogobierno y se unió brevemente
-- a la Federación de Malasia en 1963. Debido a diferencias políticas e ideológicas,
-- Singapur fue expulsado de la federación y se convirtió en una república independiente
-- en 1965. Bajo el liderazgo de Lee Kuan Yew y el Partido de Acción Popular (PAP),
-- Singapur experimentó una transformación económica espectacular, pasando de ser un
-- país en desarrollo a uno de los más ricos y desarrollados del mundo.
--
-- Datos Adicionales:
-- Singapur tiene cuatro idiomas oficiales: inglés (lengua de trabajo), malayo (lengua
-- nacional), mandarín y tamil, reflejando su población multiétnica (mayoría china,
-- minorías malaya, india y otras). Es conocido por su limpieza, eficiencia, leyes
-- estrictas y su horizonte urbano moderno (Marina Bay Sands, Gardens by the Bay).
-- El Merlion (mitad león, mitad pez) es un símbolo nacional.
--
*/
