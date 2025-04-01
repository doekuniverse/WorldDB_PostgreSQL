-- SQL Script to insert a representative sample of significant cities and municipalities for Guatemala (GT).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Guatemala (GT).

-- NOTE: Guatemala has many municipalities and smaller settlements (aldeas, caseríos). This list includes the capital,
-- departmental capitals (cabeceras), and a broad sample of major cities and significant municipalities.
-- Listing every single locality is IMPOSSIBLE.
-- Postal codes are 5 digits; examples or '00000' placeholder are provided.

-- Inserting cities for Guatemala (GT) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Departmental Capitals (Cabeceras) / Major Cities
('Guatemala City', (SELECT id FROM world_countries WHERE iso_code_2 = 'GT'), '01001'), -- National Capital (Guatemala Dept.) - Zone 1 example
('Quetzaltenango (Xela)', (SELECT id FROM world_countries WHERE iso_code_2 = 'GT'), '09001'), -- Quetzaltenango Dept. Capital
('Escuintla', (SELECT id FROM world_countries WHERE iso_code_2 = 'GT'), '05001'), -- Escuintla Dept. Capital
('Cobán', (SELECT id FROM world_countries WHERE iso_code_2 = 'GT'), '16001'), -- Alta Verapaz Dept. Capital
('Huehuetenango', (SELECT id FROM world_countries WHERE iso_code_2 = 'GT'), '13001'), -- Huehuetenango Dept. Capital
('San Marcos', (SELECT id FROM world_countries WHERE iso_code_2 = 'GT'), '12001'), -- San Marcos Dept. Capital
('Mazatenango', (SELECT id FROM world_countries WHERE iso_code_2 = 'GT'), '10001'), -- Suchitepéquez Dept. Capital
('Chimaltenango', (SELECT id FROM world_countries WHERE iso_code_2 = 'GT'), '04001'), -- Chimaltenango Dept. Capital
('Chiquimula', (SELECT id FROM world_countries WHERE iso_code_2 = 'GT'), '20001'), -- Chiquimula Dept. Capital
('Puerto Barrios', (SELECT id FROM world_countries WHERE iso_code_2 = 'GT'), '18001'), -- Izabal Dept. Capital
('Jalapa', (SELECT id FROM world_countries WHERE iso_code_2 = 'GT'), '21001'), -- Jalapa Dept. Capital
('Jutiapa', (SELECT id FROM world_countries WHERE iso_code_2 = 'GT'), '22001'), -- Jutiapa Dept. Capital
('Retalhuleu', (SELECT id FROM world_countries WHERE iso_code_2 = 'GT'), '11001'), -- Retalhuleu Dept. Capital
('Santa Cruz del Quiché', (SELECT id FROM world_countries WHERE iso_code_2 = 'GT'), '14001'), -- Quiché Dept. Capital
('Salamá', (SELECT id FROM world_countries WHERE iso_code_2 = 'GT'), '15001'), -- Baja Verapaz Dept. Capital
('Zacapa', (SELECT id FROM world_countries WHERE iso_code_2 = 'GT'), '19001'), -- Zacapa Dept. Capital
('Sololá', (SELECT id FROM world_countries WHERE iso_code_2 = 'GT'), '07001'), -- Sololá Dept. Capital
('Totonicapán', (SELECT id FROM world_countries WHERE iso_code_2 = 'GT'), '08001'), -- Totonicapán Dept. Capital
('Guastatoya', (SELECT id FROM world_countries WHERE iso_code_2 = 'GT'), '02001'), -- El Progreso Dept. Capital
('Flores', (SELECT id FROM world_countries WHERE iso_code_2 = 'GT'), '17001'), -- Petén Dept. Capital (on an island in Lake Petén Itzá)
('Antigua Guatemala', (SELECT id FROM world_countries WHERE iso_code_2 = 'GT'), '03001'), -- Sacatepéquez Dept. Capital, UNESCO site
('Cuilapa', (SELECT id FROM world_countries WHERE iso_code_2 = 'GT'), '06001'), -- Santa Rosa Dept. Capital

-- Other Major/Significant Municipalities & Towns (Sample)
('Mixco', (SELECT id FROM world_countries WHERE iso_code_2 = 'GT'), '01057'), -- Guatemala Dept. (Metro Area)
('Villa Nueva', (SELECT id FROM world_countries WHERE iso_code_2 = 'GT'), '01064'), -- Guatemala Dept. (Metro Area)
('Petapa', (SELECT id FROM world_countries WHERE iso_code_2 = 'GT'), '01066'), -- Guatemala Dept. (Metro Area) (San Miguel Petapa)
('San Juan Sacatepéquez', (SELECT id FROM world_countries WHERE iso_code_2 = 'GT'), '01059'), -- Guatemala Dept.
('Villa Canales', (SELECT id FROM world_countries WHERE iso_code_2 = 'GT'), '01065'), -- Guatemala Dept.
('Chinautla', (SELECT id FROM world_countries WHERE iso_code_2 = 'GT'), '01055'), -- Guatemala Dept. (Metro Area)
('Amatitlán', (SELECT id FROM world_countries WHERE iso_code_2 = 'GT'), '01063'), -- Guatemala Dept.
('Coatepeque', (SELECT id FROM world_countries WHERE iso_code_2 = 'GT'), '09004'), -- Quetzaltenango Dept.
('Puerto San José', (SELECT id FROM world_countries WHERE iso_code_2 = 'GT'), '05009'), -- Escuintla Dept. (Pacific Port)
('Livingston', (SELECT id FROM world_countries WHERE iso_code_2 = 'GT'), '18002'), -- Izabal Dept. (Caribbean coast, Garifuna culture)
('Chichicastenango', (SELECT id FROM world_countries WHERE iso_code_2 = 'GT'), '14006'), -- Quiché Dept. (Famous market town)
('Panajachel', (SELECT id FROM world_countries WHERE iso_code_2 = 'GT'), '07010'), -- Sololá Dept. (On Lake Atitlán)
('Esquipulas', (SELECT id FROM world_countries WHERE iso_code_2 = 'GT'), '20007'), -- Chiquimula Dept. (Religious center, Black Christ)
('Tecpán Guatemala', (SELECT id FROM world_countries WHERE iso_code_2 = 'GT'), '04004'), -- Chimaltenango Dept. (First capital founded by Spanish)
('Santiago Atitlán', (SELECT id FROM world_countries WHERE iso_code_2 = 'GT'), '07011'); -- Sololá Dept. (On Lake Atitlán)

-- End of Guatemala city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Guatemala ==
-- ====================================
--
-- Descripción General:
-- Guatemala es un país ubicado en América Central. Limita con México al norte y
-- oeste, Belice al noreste, Honduras al este, El Salvador al sureste, y el Océano
-- Pacífico al sur. Es el país más poblado de Centroamérica. Su geografía es muy
-- variada, con tierras altas volcánicas en el centro y sur, llanuras costeras en
-- el Pacífico y el Caribe, y la vasta selva tropical de Petén en el norte. Es
-- considerado el corazón del mundo Maya.
--
-- Ciudades Principales:
-- * Ciudad de Guatemala: La capital y ciudad más grande, ubicada en un valle de
--   las tierras altas. Es el centro económico, político y cultural del país,
--   formando una gran área metropolitana con municipios como Mixco y Villa Nueva.
-- * Quetzaltenango (Xela): La segunda ciudad más grande, principal centro urbano
--   en las tierras altas occidentales.
-- * Escuintla: Importante ciudad en la costa del Pacífico.
-- * Cobán: Principal ciudad en la región de las Verapaces.
-- * Puerto Barrios: Principal puerto en la costa del Caribe.
-- * Antigua Guatemala: Antigua capital colonial, famosa por su arquitectura barroca
--   bien conservada (Patrimonio de la Humanidad) y rodeada de volcanes.
-- * Flores: Capital del departamento de Petén, ubicada en una isla del lago Petén
--   Itzá, puerta de entrada a las ruinas mayas de Tikal.
-- * La lista incluye también las cabeceras de todos los departamentos y otras ciudades significativas.
--
-- Un Poco de Historia:
-- Guatemala fue el centro de la civilización Maya clásica, con ciudades-estado
-- importantes como Tikal y El Mirador. Fue conquistada por los españoles bajo
-- Pedro de Alvarado en el siglo XVI. Formó parte de la Capitanía General de
-- Guatemala (que abarcaba gran parte de Centroamérica) durante el período colonial.
-- Se independizó de España en 1821 y formó parte brevemente del Imperio Mexicano
-- y luego de la República Federal de Centroamérica, antes de convertirse en una
-- república independiente. La historia posterior estuvo marcada por la inestabilidad
-- política, dictaduras, y una larga y brutal guerra civil (aproximadamente 1960-1996)
-- entre el gobierno y guerrillas izquierdistas, con graves violaciones a los
-- derechos humanos, especialmente contra la población indígena Maya. Los acuerdos
-- de paz se firmaron en 1996. La democracia ha enfrentado desafíos de corrupción,
-- violencia y desigualdad.
--
-- Datos Adicionales:
-- El español es el idioma oficial, pero se hablan numerosas lenguas mayas. Guatemala
-- tiene la mayor proporción de población indígena de Centroamérica. Es famosa por
-- sus espectaculares ruinas mayas (Tikal, Quiriguá), el Lago de Atitlán, sus
-- coloridos mercados indígenas (como Chichicastenango) y sus volcanes activos.
-- El café es un importante producto de exportación.
--
*/
