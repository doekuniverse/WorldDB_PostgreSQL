-- SQL Script to insert a representative sample of significant towns and villages for the Isle of Man (IM).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Isle of Man (IM).

-- NOTE: This list includes the capital, official towns, and significant villages.
-- Listing every single tiny settlement or farmstead is IMPOSSIBLE.
-- Postal codes are IM# #AA format; representative IM# examples are provided.

-- Inserting cities/towns for Isle of Man (IM) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Official Towns
('Douglas', (SELECT id FROM world_countries WHERE iso_code_2 = 'IM'), 'IM1'), -- Capital
('Ramsey', (SELECT id FROM world_countries WHERE iso_code_2 = 'IM'), 'IM8'), -- Town
('Peel', (SELECT id FROM world_countries WHERE iso_code_2 = 'IM'), 'IM5'), -- Town
('Castletown', (SELECT id FROM world_countries WHERE iso_code_2 = 'IM'), 'IM9'), -- Town (Former capital)

-- Significant Villages
('Port Erin', (SELECT id FROM world_countries WHERE iso_code_2 = 'IM'), 'IM9'), -- Village
('Port St Mary', (SELECT id FROM world_countries WHERE iso_code_2 = 'IM'), 'IM9'), -- Village
('Onchan', (SELECT id FROM world_countries WHERE iso_code_2 = 'IM'), 'IM3'), -- Large village / Douglas suburb
('Laxey', (SELECT id FROM world_countries WHERE iso_code_2 = 'IM'), 'IM4'), -- Village (Known for Laxey Wheel)
('Ballasalla', (SELECT id FROM world_countries WHERE iso_code_2 = 'IM'), 'IM9'), -- Village (Near airport)
('Kirk Michael', (SELECT id FROM world_countries WHERE iso_code_2 = 'IM'), 'IM6'), -- Village
('Jurby', (SELECT id FROM world_countries WHERE iso_code_2 = 'IM'), 'IM7'), -- Parish/Village
('Andreas', (SELECT id FROM world_countries WHERE iso_code_2 = 'IM'), 'IM7'), -- Village
('Ballaugh', (SELECT id FROM world_countries WHERE iso_code_2 = 'IM'), 'IM7'), -- Village
('Sulby', (SELECT id FROM world_countries WHERE iso_code_2 = 'IM'), 'IM7'), -- Village
('Baldrine', (SELECT id FROM world_countries WHERE iso_code_2 = 'IM'), 'IM4'), -- Village
('Union Mills', (SELECT id FROM world_countries WHERE iso_code_2 = 'IM'), 'IM4'), -- Village
('Crosby', (SELECT id FROM world_countries WHERE iso_code_2 = 'IM'), 'IM4'); -- Village

-- End of Isle of Man locality list (Representative Sample)

/*
-- ========================================
-- == Información sobre Isle of Man ==
-- ========================================
--
-- Descripción General:
-- La Isla de Man (Isle of Man) es una Dependencia de la Corona Británica autónoma
-- ubicada en el Mar de Irlanda, entre Gran Bretaña e Irlanda. No forma parte del
-- Reino Unido ni de la Unión Europea, pero la Corona Británica es responsable de
-- su defensa y relaciones exteriores. Tiene su propio parlamento (Tynwald, uno de
-- los más antiguos del mundo con funcionamiento continuo), gobierno y sistema legal.
--
-- Ciudades Principales (Pueblos):
-- * Douglas: La capital, ciudad más grande y principal centro financiero y comercial.
-- * Ramsey: La segunda ciudad más grande, ubicada en el norte.
-- * Peel: Ciudad portuaria en la costa oeste, conocida por su castillo.
-- * Castletown: Antigua capital de la isla, con el bien conservado Castillo Rushen.
-- * Port Erin y Port St Mary: Pueblos importantes en el sur.
-- * Onchan: Gran pueblo adyacente a Douglas.
-- * Laxey: Famoso por la Rueda de Laxey (Laxey Wheel), una gran rueda hidráulica.
--
-- Un Poco de Historia:
-- Habitada desde tiempos prehistóricos. Estuvo bajo influencia celta y luego fue
-- un reino nórdico-gaélico (Reino de Mann y las Islas). Pasó a control escocés y
-- luego inglés. Se convirtió en un señorío feudal bajo la Corona Inglesa (luego
-- Británica) desde el siglo XIV, con periodos bajo el dominio de la familia Stanley
-- (Condes de Derby) y los Duques de Atholl, antes de que la Corona comprara los
-- derechos señoriales en 1765. Ha mantenido un grado significativo de autonomía
-- interna a lo largo de su historia.
--
-- Datos Adicionales:
-- El inglés es el idioma principal, aunque el manés (Manx Gaelic), una lengua
-- celta, está siendo revitalizado. La libra manesa (vinculada a la libra esterlina)
-- es la moneda local. La isla es famosa por las carreras de motociclismo TT (Tourist
-- Trophy). La raza de gato Manx (sin cola o con cola corta) se originó en la isla.
-- Tiene un estatus fiscal favorable que atrae a empresas financieras y de juego online.
--
*/
