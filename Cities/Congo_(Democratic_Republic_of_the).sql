-- SQL Script to insert a representative sample of significant cities and towns for the Democratic Republic of the Congo (CD).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Democratic Republic of the Congo (CD).

-- NOTE: DRC is immense. This list includes the capital, provincial capitals, and major cities/towns.
-- Listing every single locality is ABSOLUTELY IMPOSSIBLE.
-- Postal codes are not used; using '0000' as a placeholder.

-- Inserting cities for DRC (CD) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Provincial Capitals / Major Cities
('Kinshasa', (SELECT id FROM world_countries WHERE iso_code_2 = 'CD'), '0000'), -- National Capital & Kinshasa Province
('Lubumbashi', (SELECT id FROM world_countries WHERE iso_code_2 = 'CD'), '0000'), -- Haut-Katanga Province Capital
('Mbuji-Mayi', (SELECT id FROM world_countries WHERE iso_code_2 = 'CD'), '0000'), -- Kasaï-Oriental Province Capital
('Kananga', (SELECT id FROM world_countries WHERE iso_code_2 = 'CD'), '0000'), -- Kasaï-Central Province Capital
('Kisangani', (SELECT id FROM world_countries WHERE iso_code_2 = 'CD'), '0000'), -- Tshopo Province Capital
('Bukavu', (SELECT id FROM world_countries WHERE iso_code_2 = 'CD'), '0000'), -- Sud-Kivu Province Capital
('Goma', (SELECT id FROM world_countries WHERE iso_code_2 = 'CD'), '0000'), -- Nord-Kivu Province Capital
('Likasi', (SELECT id FROM world_countries WHERE iso_code_2 = 'CD'), '0000'), -- Haut-Katanga Province city
('Kolwezi', (SELECT id FROM world_countries WHERE iso_code_2 = 'CD'), '0000'), -- Lualaba Province Capital
('Tshikapa', (SELECT id FROM world_countries WHERE iso_code_2 = 'CD'), '0000'), -- Kasaï Province Capital
('Matadi', (SELECT id FROM world_countries WHERE iso_code_2 = 'CD'), '0000'), -- Kongo Central Province Capital (Main port)
('Kikwit', (SELECT id FROM world_countries WHERE iso_code_2 = 'CD'), '0000'), -- Kwilu Province Capital
('Uvira', (SELECT id FROM world_countries WHERE iso_code_2 = 'CD'), '0000'), -- Sud-Kivu Province city
('Bunia', (SELECT id FROM world_countries WHERE iso_code_2 = 'CD'), '0000'), -- Ituri Province Capital
('Mbandaka', (SELECT id FROM world_countries WHERE iso_code_2 = 'CD'), '0000'), -- Équateur Province Capital
('Gemena', (SELECT id FROM world_countries WHERE iso_code_2 = 'CD'), '0000'), -- Sud-Ubangi Province Capital
('Bandundu', (SELECT id FROM world_countries WHERE iso_code_2 = 'CD'), '0000'), -- Kwilu Province city (former provincial capital)
('Isiro', (SELECT id FROM world_countries WHERE iso_code_2 = 'CD'), '0000'), -- Haut-Uele Province Capital
('Kindu', (SELECT id FROM world_countries WHERE iso_code_2 = 'CD'), '0000'), -- Maniema Province Capital
('Boma', (SELECT id FROM world_countries WHERE iso_code_2 = 'CD'), '0000'), -- Kongo Central Province city (port)
('Butembo', (SELECT id FROM world_countries WHERE iso_code_2 = 'CD'), '0000'), -- Nord-Kivu Province city
('Mwene-Ditu', (SELECT id FROM world_countries WHERE iso_code_2 = 'CD'), '0000'), -- Lomami Province city
('Gbadolite', (SELECT id FROM world_countries WHERE iso_code_2 = 'CD'), '0000'), -- Nord-Ubangi Province Capital
('Lisala', (SELECT id FROM world_countries WHERE iso_code_2 = 'CD'), '0000'), -- Mongala Province Capital
('Boende', (SELECT id FROM world_countries WHERE iso_code_2 = 'CD'), '0000'), -- Tshuapa Province Capital
('Kabinda', (SELECT id FROM world_countries WHERE iso_code_2 = 'CD'), '0000'), -- Lomami Province Capital
('Kamina', (SELECT id FROM world_countries WHERE iso_code_2 = 'CD'), '0000'), -- Haut-Lomami Province Capital
('Kalemie', (SELECT id FROM world_countries WHERE iso_code_2 = 'CD'), '0000'), -- Tanganyika Province Capital
('Inongo', (SELECT id FROM world_countries WHERE iso_code_2 = 'CD'), '0000'), -- Mai-Ndombe Province Capital
('Kenge', (SELECT id FROM world_countries WHERE iso_code_2 = 'CD'), '0000'), -- Kwango Province Capital
('Lusambo', (SELECT id FROM world_countries WHERE iso_code_2 = 'CD'), '0000'), -- Sankuru Province Capital

-- Other Significant Towns (Sample)
('Beni', (SELECT id FROM world_countries WHERE iso_code_2 = 'CD'), '0000'), -- Nord-Kivu Province
('Bumba', (SELECT id FROM world_countries WHERE iso_code_2 = 'CD'), '0000'), -- Mongala Province
('Ilebo', (SELECT id FROM world_countries WHERE iso_code_2 = 'CD'), '0000'), -- Kasaï Province (river port)
('Kongolo', (SELECT id FROM world_countries WHERE iso_code_2 = 'CD'), '0000'), -- Tanganyika Province
('Manono', (SELECT id FROM world_countries WHERE iso_code_2 = 'CD'), '0000'), -- Tanganyika Province
('Muanda (Moanda)', (SELECT id FROM world_countries WHERE iso_code_2 = 'CD'), '0000'), -- Kongo Central Province (only coastal town)
('Zongo', (SELECT id FROM world_countries WHERE iso_code_2 = 'CD'), '0000'); -- Sud-Ubangi Province (border town opposite Bangui, CAR)

-- End of DRC city list (Representative Sample)

/*
-- ==================================================================
-- == Información sobre la República Democrática del Congo (RDC) ==
-- ==================================================================
--
-- Descripción General:
-- La República Democrática del Congo (RDC), anteriormente Zaire, es un país ubicado
-- en África Central. Es el segundo país más grande de África por área y el cuarto
-- más poblado. Limita con nueve países y tiene una pequeña salida al Océano Atlántico.
-- El país está dominado por la vasta cuenca del río Congo y su inmensa selva
-- tropical, la segunda más grande del mundo después de la Amazonía. La RDC posee
-- enormes recursos naturales (minerales como cobalto, cobre, diamantes, coltán,
-- oro; potencial hidroeléctrico), pero ha sufrido décadas de colonialismo brutal,
-- dictadura, inestabilidad política y conflictos devastadores, lo que lo convierte
-- en uno de los países más pobres y con mayores desafíos humanitarios del mundo.
--
-- Ciudades Principales:
-- * Kinshasa: La capital y megaciudad más grande, ubicada en el río Congo. Es una
--   de las áreas metropolitanas más grandes de África.
-- * Lubumbashi: Segunda ciudad, centro minero en el sureste (antigua Katanga).
-- * Mbuji-Mayi y Kananga: Principales ciudades en la región central de Kasaï,
--   importantes centros diamantíferos.
-- * Kisangani: Principal ciudad en el noreste, sobre el río Congo.
-- * Goma y Bukavu: Principales ciudades en el este (región de Kivu), en la frontera
--   con Ruanda y Burundi, afectadas por conflictos prolongados.
-- * Matadi: Principal puerto fluvial antes de las cataratas que impiden la
--   navegación hasta Kinshasa.
-- * La lista incluye también las capitales de las 26 provincias y otras ciudades importantes.
--
-- Un Poco de Historia:
-- La región fue hogar de importantes reinos como el Kongo, Luba y Lunda. A finales
-- del siglo XIX, fue reclamada brutalmente como propiedad personal por el rey
-- Leopoldo II de Bélgica (Estado Libre del Congo), un período de explotación
-- infame. Luego se convirtió en el Congo Belga. Obtuvo la independencia en 1960,
-- seguida inmediatamente por crisis, secesiones (Katanga) e intervención extranjera.
-- Mobutu Sese Seko tomó el poder en 1965 y gobernó dictatorialmente durante más
-- de 30 años (renombrando el país como Zaire). Fue derrocado en 1997 al final de
-- la Primera Guerra del Congo. La Segunda Guerra del Congo (1998-2003), a veces
-- llamada la "Guerra Mundial Africana", involucró a numerosos países y dejó millones
-- de muertos. Aunque la guerra terminó formalmente, la violencia y la inestabilidad
-- persisten, especialmente en el este del país.
--
-- Datos Adicionales:
-- El francés es el idioma oficial, pero se hablan cientos de lenguas, siendo el
-- Lingala, Kikongo, Swahili y Tshiluba las lenguas nacionales principales. La RDC
-- es crucial para la biodiversidad mundial, hogar de gorilas de montaña, gorilas
-- de tierras bajas, chimpancés, bonobos y okapis. Posee la mayoría de las reservas
-- mundiales de cobalto, vital para las baterías modernas.
--
*/
