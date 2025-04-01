-- SQL Script to insert a representative sample of significant cities and municipalities for Colombia (CO).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Colombia (CO).

-- NOTE: Colombia is large and populous with over 1100 municipalities. This list includes the capital,
-- departmental capitals, and a broad sample of major cities and significant municipalities.
-- Listing every single locality (corregimiento, vereda) is IMPOSSIBLE.
-- Postal codes are 6 digits; examples or '000000' placeholder are provided.

-- Inserting cities for Colombia (CO) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Departmental Capitals / Major Cities
('Bogotá', (SELECT id FROM world_countries WHERE iso_code_2 = 'CO'), '110000'), -- Capital District
('Medellín', (SELECT id FROM world_countries WHERE iso_code_2 = 'CO'), '050000'), -- Antioquia Capital
('Cali', (SELECT id FROM world_countries WHERE iso_code_2 = 'CO'), '760000'), -- Valle del Cauca Capital
('Barranquilla', (SELECT id FROM world_countries WHERE iso_code_2 = 'CO'), '080000'), -- Atlántico Capital
('Cartagena', (SELECT id FROM world_countries WHERE iso_code_2 = 'CO'), '130000'), -- Bolívar Capital
('Cúcuta', (SELECT id FROM world_countries WHERE iso_code_2 = 'CO'), '540000'), -- Norte de Santander Capital
('Bucaramanga', (SELECT id FROM world_countries WHERE iso_code_2 = 'CO'), '680000'), -- Santander Capital
('Pereira', (SELECT id FROM world_countries WHERE iso_code_2 = 'CO'), '660000'), -- Risaralda Capital
('Santa Marta', (SELECT id FROM world_countries WHERE iso_code_2 = 'CO'), '470000'), -- Magdalena Capital
('Ibagué', (SELECT id FROM world_countries WHERE iso_code_2 = 'CO'), '730000'), -- Tolima Capital
('Villavicencio', (SELECT id FROM world_countries WHERE iso_code_2 = 'CO'), '500000'), -- Meta Capital
('Pasto', (SELECT id FROM world_countries WHERE iso_code_2 = 'CO'), '520000'), -- Nariño Capital (San Juan de Pasto)
('Manizales', (SELECT id FROM world_countries WHERE iso_code_2 = 'CO'), '170000'), -- Caldas Capital
('Montería', (SELECT id FROM world_countries WHERE iso_code_2 = 'CO'), '230000'), -- Córdoba Capital
('Neiva', (SELECT id FROM world_countries WHERE iso_code_2 = 'CO'), '410000'), -- Huila Capital
('Armenia', (SELECT id FROM world_countries WHERE iso_code_2 = 'CO'), '630000'), -- Quindío Capital
('Valledupar', (SELECT id FROM world_countries WHERE iso_code_2 = 'CO'), '200000'), -- Cesar Capital
('Popayán', (SELECT id FROM world_countries WHERE iso_code_2 = 'CO'), '190000'), -- Cauca Capital
('Sincelejo', (SELECT id FROM world_countries WHERE iso_code_2 = 'CO'), '700000'), -- Sucre Capital
('Tunja', (SELECT id FROM world_countries WHERE iso_code_2 = 'CO'), '150000'), -- Boyacá Capital
('Riohacha', (SELECT id FROM world_countries WHERE iso_code_2 = 'CO'), '440000'), -- La Guajira Capital
('Florencia', (SELECT id FROM world_countries WHERE iso_code_2 = 'CO'), '180000'), -- Caquetá Capital
('Quibdó', (SELECT id FROM world_countries WHERE iso_code_2 = 'CO'), '270000'), -- Chocó Capital
('Yopal', (SELECT id FROM world_countries WHERE iso_code_2 = 'CO'), '850000'), -- Casanare Capital
('Arauca', (SELECT id FROM world_countries WHERE iso_code_2 = 'CO'), '810000'), -- Arauca Capital
('San José del Guaviare', (SELECT id FROM world_countries WHERE iso_code_2 = 'CO'), '950000'), -- Guaviare Capital
('Mocoa', (SELECT id FROM world_countries WHERE iso_code_2 = 'CO'), '860000'), -- Putumayo Capital
('Leticia', (SELECT id FROM world_countries WHERE iso_code_2 = 'CO'), '910000'), -- Amazonas Capital
('Puerto Carreño', (SELECT id FROM world_countries WHERE iso_code_2 = 'CO'), '990000'), -- Vichada Capital
('Inírida', (SELECT id FROM world_countries WHERE iso_code_2 = 'CO'), '940000'), -- Guainía Capital (Puerto Inírida)
('Mitú', (SELECT id FROM world_countries WHERE iso_code_2 = 'CO'), '970000'), -- Vaupés Capital
('San Andrés', (SELECT id FROM world_countries WHERE iso_code_2 = 'CO'), '880000'), -- San Andrés y Providencia Capital

-- Other Major/Significant Cities & Municipalities (Sample)
('Soacha', (SELECT id FROM world_countries WHERE iso_code_2 = 'CO'), '250051'), -- Cundinamarca (Bogotá Metro)
('Bello', (SELECT id FROM world_countries WHERE iso_code_2 = 'CO'), '051050'), -- Antioquia (Medellín Metro)
('Soledad', (SELECT id FROM world_countries WHERE iso_code_2 = 'CO'), '087001'), -- Atlántico (Barranquilla Metro)
('Itagüí', (SELECT id FROM world_countries WHERE iso_code_2 = 'CO'), '055412'), -- Antioquia (Medellín Metro)
('Envigado', (SELECT id FROM world_countries WHERE iso_code_2 = 'CO'), '055422'), -- Antioquia (Medellín Metro)
('Palmira', (SELECT id FROM world_countries WHERE iso_code_2 = 'CO'), '763530'), -- Valle del Cauca
('Buenaventura', (SELECT id FROM world_countries WHERE iso_code_2 = 'CO'), '764501'), -- Valle del Cauca (Major Pacific Port)
('Dosquebradas', (SELECT id FROM world_countries WHERE iso_code_2 = 'CO'), '661001'), -- Risaralda (Pereira Metro)
('Tuluá', (SELECT id FROM world_countries WHERE iso_code_2 = 'CO'), '763021'), -- Valle del Cauca
('Girardot', (SELECT id FROM world_countries WHERE iso_code_2 = 'CO'), '252410'), -- Cundinamarca
('Floridablanca', (SELECT id FROM world_countries WHERE iso_code_2 = 'CO'), '681001'), -- Santander (Bucaramanga Metro)
('Barrancabermeja', (SELECT id FROM world_countries WHERE iso_code_2 = 'CO'), '687031'), -- Santander (Oil center)
('Maicao', (SELECT id FROM world_countries WHERE iso_code_2 = 'CO'), '442001'), -- La Guajira
('Uribia', (SELECT id FROM world_countries WHERE iso_code_2 = 'CO'), '444001'), -- La Guajira
('Apartadó', (SELECT id FROM world_countries WHERE iso_code_2 = 'CO'), '057040'), -- Antioquia (Urabá region)
('Turbo', (SELECT id FROM world_countries WHERE iso_code_2 = 'CO'), '057890'), -- Antioquia (Urabá region)
('Magangué', (SELECT id FROM world_countries WHERE iso_code_2 = 'CO'), '134001'), -- Bolívar
('Lorica', (SELECT id FROM world_countries WHERE iso_code_2 = 'CO'), '233001'), -- Córdoba
('Ipiales', (SELECT id FROM world_countries WHERE iso_code_2 = 'CO'), '524060'), -- Nariño (Border town with Ecuador)
('Tumaco', (SELECT id FROM world_countries WHERE iso_code_2 = 'CO'), '528501'); -- Nariño (Pacific Port)

-- End of Colombia city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Colombia ==
-- ====================================
--
-- Descripción General:
-- Colombia es un país ubicado en el extremo noroccidental de América del Sur. Es
-- el único país sudamericano con costas en el Océano Pacífico y el Mar Caribe.
-- Su geografía es muy diversa, dominada por la Cordillera de los Andes (que se
-- divide en tres ramas principales dentro del país), las llanuras costeras, la
-- vasta región de los Llanos Orientales (parte de la cuenca del Orinoco) y la
-- selva amazónica en el sur. Colombia es reconocida por su alta biodiversidad,
-- siendo uno de los países megadiversos del mundo.
--
-- Ciudades Principales:
-- * Bogotá: La capital y ciudad más grande, ubicada en una alta meseta andina
--   (Sabana de Bogotá). Es el centro político, económico y cultural del país.
-- * Medellín: Segunda ciudad más grande, capital de Antioquia, conocida por su
--   innovación urbana y clima agradable ("Ciudad de la Eterna Primavera").
-- * Cali: Tercera ciudad, capital del Valle del Cauca, famosa por ser la "Capital
--   Mundial de la Salsa".
-- * Barranquilla: Principal ciudad y puerto en la costa Caribe, famosa por su carnaval.
-- * Cartagena: Ciudad histórica amurallada en la costa Caribe, importante destino
--   turístico y Patrimonio de la Humanidad por la UNESCO.
-- * Bucaramanga, Cúcuta, Pereira, Santa Marta, Ibagué: Otras importantes capitales
--   departamentales y centros regionales.
-- * La lista incluye también las capitales de todos los departamentos y otras ciudades significativas.
--
-- Un Poco de Historia:
-- Habitada por diversas culturas indígenas (Muisca, Tayrona, Quimbaya, etc.). Fue
-- colonizada por España a partir del siglo XVI, formando el núcleo del Virreinato
-- de la Nueva Granada. Logró la independencia de España a principios del siglo XIX,
-- inicialmente como parte de la Gran Colombia (junto con Venezuela, Ecuador y Panamá).
-- Tras la disolución de la Gran Colombia, la historia del país ha estado marcada
-- por conflictos internos entre liberales y conservadores, periodos de violencia
-- ("La Violencia"), el surgimiento de guerrillas (FARC, ELN), el narcotráfico y
-- el conflicto armado interno que ha durado décadas. En años recientes, se han
-- logrado avances con acuerdos de paz (especialmente con las FARC en 2016), aunque
-- persisten desafíos de seguridad y desarrollo.
--
-- Datos Adicionales:
-- El español es el idioma oficial. Colombia es el mayor productor mundial de
-- esmeraldas y uno de los principales productores de café suave, flores y banano.
-- Es famoso por su música (cumbia, vallenato, salsa, etc.) y literatura (Gabriel
-- García Márquez).
--
*/
