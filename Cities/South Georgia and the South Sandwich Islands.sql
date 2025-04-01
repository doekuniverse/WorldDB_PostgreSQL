-- SQL Script to insert the main points of human presence for South Georgia and the South Sandwich Islands (GS).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains South Georgia and the South Sandwich Islands (GS).

-- NOTE: SGSSI has NO permanent civilian population. Human presence is limited to scientific/government personnel
-- primarily at King Edward Point on South Georgia. The South Sandwich Islands are uninhabited.
-- This list includes the main points of presence on South Georgia.
-- The entire territory uses the postal code SIQQ 1ZZ.

-- Inserting main points of presence for SGSSI (GS) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
('King Edward Point (KEP)', (SELECT id FROM world_countries WHERE iso_code_2 = 'GS'), 'SIQQ 1ZZ'), -- Administrative centre and British Antarctic Survey research station (South Georgia)
('Grytviken', (SELECT id FROM world_countries WHERE iso_code_2 = 'GS'), 'SIQQ 1ZZ'); -- Former whaling station, now museum/tourist site, near KEP (South Georgia)

-- End of SGSSI locality list (Main points of presence)

/*
-- ==========================================================================
-- == Información sobre South Georgia and the South Sandwich Islands (SGSSI) ==
-- ==========================================================================
--
-- Descripción General:
-- Las Islas Georgias del Sur y Sandwich del Sur (South Georgia and the South Sandwich
-- Islands - SGSSI) son un Territorio Británico de Ultramar ubicado en el Océano
-- Atlántico Sur. Consisten en la isla de Georgia del Sur, grande y montañosa, y
-- una cadena de islas volcánicas más pequeñas y remotas, las Islas Sandwich del Sur.
-- Son territorios subantárticos conocidos por su abundante vida silvestre y su clima hostil.
-- No tienen población nativa ni residentes permanentes civiles.
--
-- Ciudades Principales (Localidades):
-- No existen ciudades ni pueblos. La presencia humana se limita a:
-- * King Edward Point (KEP): En Georgia del Sur, es el centro administrativo y alberga
--   la estación de investigación del British Antarctic Survey (BAS) y funcionarios
--   del gobierno del territorio. Es considerado la "capital".
-- * Grytviken: También en Georgia del Sur, fue la estación ballenera más grande. Hoy
--   está en ruinas pero alberga un museo, una iglesia, una oficina de correos y la
--   tumba del explorador Sir Ernest Shackleton. El personal asociado reside en KEP.
-- * Las Islas Sandwich del Sur están deshabitadas, aunque pueden tener estaciones
--   meteorológicas automáticas.
--
-- Un Poco de Historia:
-- Georgia del Sur fue probablemente avistada en el siglo XVII y visitada por James Cook
-- en 1775, quien la reclamó para Gran Bretaña. Las Islas Sandwich del Sur también
-- fueron descubiertas por Cook. Georgia del Sur se convirtió en un importante centro
-- para la caza de focas y luego de ballenas en los siglos XIX y XX, con varias
-- estaciones balleneras (principalmente noruegas y británicas) operando desde Grytviken
-- y otros puertos. La caza de ballenas cesó en la década de 1960. Las islas fueron
-- administradas como Dependencias de las Islas Falkland hasta 1985, cuando se
-- convirtieron en un territorio separado. Fueron brevemente ocupadas por Argentina
-- durante la Guerra de las Malvinas/Falklands en 1982. Actualmente, la actividad
-- principal es la investigación científica, la gestión pesquera y un turismo
-- cuidadosamente controlado.
--
-- Datos Adicionales:
-- El territorio alberga enormes colonias de pingüinos (rey, macaroni, etc.), albatros
-- y focas (elefantes marinos, lobos finos antárticos). Las aguas circundantes son
-- una importante área marina protegida. El acceso a las islas es muy restringido y
-- generalmente se realiza a través de barcos de expedición o de investigación.
--
*/
