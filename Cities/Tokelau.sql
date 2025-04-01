-- SQL Script to insert the main settlements for Tokelau (TK).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Tokelau (TK).

-- NOTE: Tokelau consists of three low-lying coral atolls. Each atoll has one primary village settlement.
-- While not every islet is listed, this script includes all significant permanent settlements in Tokelau.
-- Tokelau does not use a postal code system; using '0000' as a placeholder.
-- There is no designated capital city; administrative functions rotate among the atolls.

-- Inserting main settlements for Tokelau (TK) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Main Settlements on each Atoll
('Atafu Village', (SELECT id FROM world_countries WHERE iso_code_2 = 'TK'), '0000'), -- Main settlement on Atafu Atoll
('Nukunonu Village', (SELECT id FROM world_countries WHERE iso_code_2 = 'TK'), '0000'), -- Main settlement on Nukunonu Atoll
('Fakaofo Village', (SELECT id FROM world_countries WHERE iso_code_2 = 'TK'), '0000'); -- Main settlement on Fakaofo Atoll (primarily on Fale islet)


-- End of Tokelau settlement list (Includes all primary villages)

/*
-- =============================================
-- ==    Información sobre Tokelau           ==
-- =============================================
--
-- Descripción General:
-- Tokelau es un territorio no autónomo dependiente de Nueva Zelanda, ubicado en la
-- Polinesia, en el sur del Océano Pacífico. Consiste en tres atolones de coral
-- tropicales remotos: Atafu, Nukunonu y Fakaofo. No tiene aeropuerto y solo se puede
-- acceder por barco desde Samoa. Es uno de los territorios más pequeños y aislados
-- del mundo. Los atolones son de baja altitud, lo que los hace extremadamente
-- vulnerables al aumento del nivel del mar causado por el cambio climático.
--
-- Asentamientos Principales:
-- Cada uno de los tres atolones tiene un único centro administrativo y de población
-- principal, comúnmente llamado por el nombre del atolón:
-- * Atafu Village (en el atolón de Atafu)
-- * Nukunonu Village (en el atolón de Nukunonu)
-- * Fakaofo Village (en el atolón de Fakaofo, principalmente en el islote Fale)
-- No hay una capital designada; el liderazgo administrativo (Ulu-o-Tokelau) rota
-- anualmente entre los 'faipule' (líderes) de cada atolón.
--
-- Un Poco de Historia:
-- Habitada por polinesios durante siglos. Los atolones fueron avistados por
-- exploradores europeos, pero tuvieron poco contacto hasta el siglo XIX con la
-- llegada de misioneros. En 1889, los atolones se convirtieron en un protectorado
-- británico y fueron anexados a la colonia de las Islas Gilbert y Ellice. La
-- administración fue transferida a Nueva Zelanda en 1926. En 1948, Tokelau fue
-- formalmente incorporado como parte de Nueva Zelanda. Aunque sigue siendo un
-- territorio dependiente, Tokelau tiene un alto grado de autogobierno local a través
-- del Consejo General (General Fono). Se han celebrado referendos sobre la libre
-- asociación con Nueva Zelanda, pero no han alcanzado la mayoría requerida.
--
-- Datos Adicionales:
-- Los idiomas oficiales son el tokelauno y el inglés. La población es predominantemente
-- de etnia polinesia tokelauna. La religión principal es el cristianismo (congregacionalista
-- en Atafu y Fakaofo, católico romano en Nukunonu). La economía es de subsistencia,
-- basada en la pesca, la agricultura a pequeña escala (cocos, pandanus) y la ayuda
-- de Nueva Zelanda. La venta de licencias de pesca y dominios de internet (.tk)
-- también genera ingresos. Tokelau fue el primer territorio del mundo en generar
-- el 100% de su electricidad a partir de energía solar (desde 2012).
--
*/
