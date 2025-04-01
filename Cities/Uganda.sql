-- SQL Script to insert a representative sample of significant cities and towns for Uganda (UG).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Uganda (UG).

-- NOTE: Uganda is divided into regions, districts, counties, sub-counties, parishes, and villages. Recently, several municipalities were elevated to city status.
-- Listing every single settlement is impractical for this format. This list focuses on the national capital,
-- designated cities (including newly elevated ones), and a sample of other significant towns/district centers.
-- Uganda does not currently use a standardized nationwide postal code system; using '00000' as a placeholder.

-- Inserting cities/towns for Uganda (UG) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- National Capital & Major Cities / Regional Hubs
('Kampala', (SELECT id FROM world_countries WHERE iso_code_2 = 'UG'), '00000'), -- National Capital & Largest City
('Gulu', (SELECT id FROM world_countries WHERE iso_code_2 = 'UG'), '00000'), -- Major City (Northern Region Hub, recently elevated city status)
('Jinja', (SELECT id FROM world_countries WHERE iso_code_2 = 'UG'), '00000'), -- Major City (Eastern Region Hub, Source of the Nile, recently elevated city status)
('Mbarara', (SELECT id FROM world_countries WHERE iso_code_2 = 'UG'), '00000'), -- Major City (Western Region Hub, recently elevated city status)
('Fort Portal', (SELECT id FROM world_countries WHERE iso_code_2 = 'UG'), '00000'), -- Major City (Western Region / Tourism Hub, recently elevated city status)
('Mbale', (SELECT id FROM world_countries WHERE iso_code_2 = 'UG'), '00000'), -- Major City (Eastern Region Hub, recently elevated city status)
('Masaka', (SELECT id FROM world_countries WHERE iso_code_2 = 'UG'), '00000'), -- Major City (Central Region Hub, recently elevated city status)
('Arua', (SELECT id FROM world_countries WHERE iso_code_2 = 'UG'), '00000'), -- Major City (West Nile Hub, recently elevated city status)
('Hoima', (SELECT id FROM world_countries WHERE iso_code_2 = 'UG'), '00000'), -- Major City (Western Region / Oil Hub, recently elevated city status)
('Lira', (SELECT id FROM world_countries WHERE iso_code_2 = 'UG'), '00000'), -- Major City (Northern Region Hub, recently elevated city status)
('Soroti', (SELECT id FROM world_countries WHERE iso_code_2 = 'UG'), '00000'), -- Major City (Eastern Region Hub, recently elevated city status)
('Entebbe', (SELECT id FROM world_countries WHERE iso_code_2 = 'UG'), '00000'), -- Major Town / Airport Hub / Former Capital (near Kampala)

-- Other Significant Towns / District Centers (Sample)
('Nansana', (SELECT id FROM world_countries WHERE iso_code_2 = 'UG'), '00000'), -- Large Municipality near Kampala (Wakiso District)
('Kira', (SELECT id FROM world_countries WHERE iso_code_2 = 'UG'), '00000'), -- Large Municipality near Kampala (Wakiso District)
('Mukono', (SELECT id FROM world_countries WHERE iso_code_2 = 'UG'), '00000'), -- Town near Kampala (Mukono District HQ)
('Masindi', (SELECT id FROM world_countries WHERE iso_code_2 = 'UG'), '00000'), -- Town in Western Region (Masindi District HQ)
('Kabale', (SELECT id FROM world_countries WHERE iso_code_2 = 'UG'), '00000'), -- Town in Southwestern Uganda (Kabale District HQ)
('Tororo', (SELECT id FROM world_countries WHERE iso_code_2 = 'UG'), '00000'), -- Industrial Town (Tororo District HQ)
('Iganga', (SELECT id FROM world_countries WHERE iso_code_2 = 'UG'), '00000'), -- Town in Eastern Region (Iganga District HQ)
('Busia', (SELECT id FROM world_countries WHERE iso_code_2 = 'UG'), '00000'); -- Border Town with Kenya (Busia District HQ)


-- End of Uganda city/town list (Representative Sample)

/*
-- =============================================
-- ==      Información sobre Uganda          ==
-- =============================================
--
-- Descripción General:
-- Uganda, oficialmente la República de Uganda, es un país sin salida al mar ubicado
-- en África Oriental. Limita con Sudán del Sur al norte, Kenia al este, Tanzania al
-- sur, Ruanda al suroeste y la República Democrática del Congo al oeste. Gran parte
-- del sur del país incluye una porción sustancial del Lago Victoria, compartido con
-- Kenia y Tanzania. Uganda se encuentra en la cuenca del Nilo y tiene un paisaje
-- variado con montañas (como las Rwenzori), lagos y sabanas. Es conocida como la
-- "Perla de África".
--
-- Ciudades Principales:
-- * Kampala: La capital y ciudad más grande, ubicada cerca del Lago Victoria. Es el
--   centro político, económico y cultural.
-- * Gulu, Jinja, Mbarara, Fort Portal, Mbale, Masaka, Arua, Hoima, Lira, Soroti:
--   Ciudades importantes que recientemente obtuvieron estatus de ciudad, sirviendo
--   como centros regionales clave. Jinja es famosa por ser considerada la fuente
--   histórica del Nilo.
-- * Entebbe: Ubicada en una península del Lago Victoria, alberga el principal
--   aeropuerto internacional y fue la capital durante el periodo colonial.
--
-- Un Poco de Historia:
-- La región fue hogar de varios reinos poderosos, destacando el reino de Buganda,
-- junto con Bunyoro, Ankole y Toro. A finales del siglo XIX, el área quedó bajo
-- influencia británica y se estableció el Protectorado de Uganda en 1894. Uganda
-- obtuvo la independencia del Reino Unido en 1962. La historia post-independencia
-- fue turbulenta, marcada por los regímenes de Milton Obote e Idi Amin Dada, que
-- incluyeron conflictos internos, violaciones de derechos humanos y declive económico.
-- Tras una guerra civil, Yoweri Museveni y su Movimiento de Resistencia Nacional
-- (NRM) llegaron al poder en 1986 y han gobernado desde entonces, trayendo relativa
-- estabilidad y crecimiento económico, aunque también con críticas sobre la democracia
-- y los derechos humanos.
--
-- Datos Adicionales:
-- Los idiomas oficiales son el inglés y el suajili. El luganda es ampliamente hablado,
-- especialmente en la región central, junto con muchas otras lenguas locales. La
-- población es étnicamente muy diversa. Las religiones principales son el cristianismo
-- (católico y anglicano) y el islam. Uganda es rica en vida silvestre, incluyendo
-- gorilas de montaña (Parque Nacional Impenetrable de Bwindi), chimpancés y los "Cinco
-- Grandes" de África, lo que impulsa su sector turístico. La agricultura (café, té,
-- algodón) es la base de la economía para gran parte de la población. Recientemente
-- se han descubierto reservas de petróleo.
--
*/
