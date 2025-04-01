-- SQL Script to insert a representative sample of significant cities and towns for Paraguay (PY).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Paraguay (PY).

-- NOTE: Paraguay has over 250 districts/municipalities. This list includes the capital, departmental capitals,
-- major cities, and significant towns. Listing every single locality is IMPOSSIBLE.
-- Postal codes (4 digits) usage is limited; using '0000' as a placeholder or example.

-- Inserting cities for Paraguay (PY) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Departmental Capitals / Major Cities
('Asunción', (SELECT id FROM world_countries WHERE iso_code_2 = 'PY'), '1001'), -- National Capital (Distrito Capital)
('Ciudad del Este', (SELECT id FROM world_countries WHERE iso_code_2 = 'PY'), '7000'), -- Alto Paraná Dept. Capital (Major border city)
('San Lorenzo', (SELECT id FROM world_countries WHERE iso_code_2 = 'PY'), '1101'), -- Central Dept. (Part of Greater Asunción)
('Luque', (SELECT id FROM world_countries WHERE iso_code_2 = 'PY'), '1109'), -- Central Dept. (Part of Greater Asunción, Airport)
('Capiatá', (SELECT id FROM world_countries WHERE iso_code_2 = 'PY'), '1107'), -- Central Dept. (Part of Greater Asunción)
('Lambaré', (SELECT id FROM world_countries WHERE iso_code_2 = 'PY'), '1103'), -- Central Dept. (Part of Greater Asunción)
('Fernando de la Mora', (SELECT id FROM world_countries WHERE iso_code_2 = 'PY'), '1105'), -- Central Dept. (Part of Greater Asunción)
('Limpio', (SELECT id FROM world_countries WHERE iso_code_2 = 'PY'), '1110'), -- Central Dept. (Part of Greater Asunción)
('Nemby (Ñemby)', (SELECT id FROM world_countries WHERE iso_code_2 = 'PY'), '1111'), -- Central Dept. (Part of Greater Asunción)
('Encarnación', (SELECT id FROM world_countries WHERE iso_code_2 = 'PY'), '6000'), -- Itapúa Dept. Capital
('Pedro Juan Caballero', (SELECT id FROM world_countries WHERE iso_code_2 = 'PY'), '13000'), -- Amambay Dept. Capital (Border city)
('Coronel Oviedo', (SELECT id FROM world_countries WHERE iso_code_2 = 'PY'), '0501'), -- Caaguazú Dept. Capital
('Caaguazú', (SELECT id FROM world_countries WHERE iso_code_2 = 'PY'), '0502'), -- Caaguazú Dept. (Major city)
('Itauguá', (SELECT id FROM world_countries WHERE iso_code_2 = 'PY'), '1108'), -- Central Dept. (Known for Ñandutí)
('Villa Elisa', (SELECT id FROM world_countries WHERE iso_code_2 = 'PY'), '1112'), -- Central Dept. (Part of Greater Asunción)
('Concepción', (SELECT id FROM world_countries WHERE iso_code_2 = 'PY'), '0201'), -- Concepción Dept. Capital
('Villarrica', (SELECT id FROM world_countries WHERE iso_code_2 = 'PY'), '0401'), -- Guairá Dept. Capital
('Pilar', (SELECT id FROM world_countries WHERE iso_code_2 = 'PY'), '1201'), -- Ñeembucú Dept. Capital
('Caacupé', (SELECT id FROM world_countries WHERE iso_code_2 = 'PY'), '0301'), -- Cordillera Dept. Capital (Religious center)
('Paraguarí', (SELECT id FROM world_countries WHERE iso_code_2 = 'PY'), '0901'), -- Paraguarí Dept. Capital
('San Juan Bautista', (SELECT id FROM world_countries WHERE iso_code_2 = 'PY'), '0801'), -- Misiones Dept. Capital
('Fuerte Olimpo', (SELECT id FROM world_countries WHERE iso_code_2 = 'PY'), '1701'), -- Alto Paraguay Dept. Capital
('Filadelfia', (SELECT id FROM world_countries WHERE iso_code_2 = 'PY'), '1901'), -- Boquerón Dept. Capital (Mennonite colony center)
('Villa Hayes', (SELECT id FROM world_countries WHERE iso_code_2 = 'PY'), '1501'), -- Presidente Hayes Dept. Capital
('Areguá', (SELECT id FROM world_countries WHERE iso_code_2 = 'PY'), '1101'), -- Central Dept. Capital (Postal code needs check)
('San Estanislao (Santaní)', (SELECT id FROM world_countries WHERE iso_code_2 = 'PY'), '0000'), -- San Pedro Dept. (Major town)
('Salto del Guairá', (SELECT id FROM world_countries WHERE iso_code_2 = 'PY'), '1401'), -- Canindeyú Dept. Capital (Border city)
('San Pedro del Ycuamandiyú', (SELECT id FROM world_countries WHERE iso_code_2 = 'PY'), '0000'), -- San Pedro Dept. Capital

-- Other Significant Towns (Sample)
('Hernandarias', (SELECT id FROM world_countries WHERE iso_code_2 = 'PY'), '0000'), -- Alto Paraná Dept. (Near Itaipu Dam)
('Presidente Franco', (SELECT id FROM world_countries WHERE iso_code_2 = 'PY'), '0000'), -- Alto Paraná Dept. (Near Ciudad del Este)
('Minga Guazú', (SELECT id FROM world_countries WHERE iso_code_2 = 'PY'), '0000'), -- Alto Paraná Dept.
('Ayolas', (SELECT id FROM world_countries WHERE iso_code_2 = 'PY'), '0000'), -- Misiones Dept. (Yacyretá Dam)
('Caazapá', (SELECT id FROM world_countries WHERE iso_code_2 = 'PY'), '0000'), -- Caazapá Dept. Capital
('Carapeguá', (SELECT id FROM world_countries WHERE iso_code_2 = 'PY'), '0000'), -- Paraguarí Dept.
('Villeta', (SELECT id FROM world_countries WHERE iso_code_2 = 'PY'), '0000'), -- Central Dept. (Port town)
('Ypacaraí', (SELECT id FROM world_countries WHERE iso_code_2 = 'PY'), '0000'), -- Central Dept. (Lake Ypacaraí)
('San Antonio', (SELECT id FROM world_countries WHERE iso_code_2 = 'PY'), '0000'), -- Central Dept.
('Mariano Roque Alonso', (SELECT id FROM world_countries WHERE iso_code_2 = 'PY'), '0000'); -- Central Dept. (Part of Greater Asunción)

-- End of Paraguay city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Paraguay ==
-- ====================================
--
-- Descripción General:
-- Paraguay es un país sin salida al mar ubicado en el centro de América del Sur.
-- Limita con Argentina al sur y suroeste, Brasil al este y noreste, y Bolivia al
-- noroeste. El río Paraguay divide el país en dos regiones geográficas distintas:
-- la región oriental (Paraneña), donde vive la mayoría de la población, y la región
-- occidental (Chaco), una vasta llanura semiárida y escasamente poblada. Es una
-- república presidencialista.
--
-- Ciudades Principales:
-- * Asunción: La capital y ciudad más grande, ubicada a orillas del río Paraguay.
--   Es el centro político, económico y cultural. Su área metropolitana incluye
--   ciudades muy pobladas como San Lorenzo, Luque, Capiatá, Lambaré, Fernando de
--   la Mora, Limpio y Nemby.
-- * Ciudad del Este: La segunda ciudad más grande, ubicada en la Triple Frontera
--   con Brasil y Argentina, importante centro comercial y sede (cercana) de la
--   represa de Itaipú.
-- * Encarnación: Tercera ciudad, ubicada en el sur, frente a Posadas (Argentina),
--   conocida por su carnaval.
-- * Pedro Juan Caballero: Importante ciudad fronteriza con Brasil en el norte.
-- * Coronel Oviedo y Caaguazú: Centros importantes en el este de la región oriental.
-- * Villarrica, Concepción, Pilar, Caacupé: Otras capitales departamentales significativas.
--   Caacupé es el principal centro religioso del país (Virgen de Caacupé).
-- * Filadelfia: Principal centro de las colonias menonitas en el Chaco.
-- * La lista incluye también las capitales de todos los departamentos y otras ciudades importantes.
--
-- Un Poco de Historia:
-- Habitada por pueblos Guaraníes. Fue explorada y colonizada por España en el siglo XVI
-- (Asunción fue fundada en 1537). La región fue un centro importante de las misiones
-- jesuíticas guaraníes en los siglos XVII y XVIII. Paraguay declaró su independencia
-- de España en 1811. Bajo líderes como José Gaspar Rodríguez de Francia y los López
-- (Carlos Antonio y Francisco Solano), el país mantuvo una política aislacionista y
-- desarrolló un fuerte poder militar. La devastadora Guerra de la Triple Alianza
-- (1864-1870) contra Brasil, Argentina y Uruguay resultó en enormes pérdidas
-- territoriales y de población masculina. Posteriormente, libró y ganó la Guerra del
-- Chaco (1932-1935) contra Bolivia. El siglo XX estuvo marcado por la inestabilidad
-- política hasta la larga dictadura de Alfredo Stroessner (1954-1989). Desde 1989,
-- Paraguay ha sido una democracia multipartidista.
--
-- Datos Adicionales:
-- El español y el guaraní son los idiomas oficiales; Paraguay es uno de los pocos
-- países americanos donde una lengua indígena es hablada por la mayoría de la
-- población. La represa hidroeléctrica de Itaipú (compartida con Brasil) fue la
-- más grande del mundo por producción de energía durante muchos años. La soja es un
-- importante producto de exportación.
--
*/
