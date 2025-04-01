-- SQL Script to insert all municipalities (main administrative divisions) for Qatar (QA).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Qatar (QA).

-- NOTE: Qatar is highly urbanized and divided into 8 municipalities (baladiyah). This list includes all of them,
-- providing essentially complete coverage at this administrative level.
-- Postal codes are not generally used for addressing; using '0000' as a placeholder.

-- Inserting municipalities for Qatar (QA) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
('Doha (Ad Dawhah)', (SELECT id FROM world_countries WHERE iso_code_2 = 'QA'), '0000'), -- Capital and largest municipality
('Al Rayyan', (SELECT id FROM world_countries WHERE iso_code_2 = 'QA'), '0000'), -- Large municipality adjacent to Doha
('Al Wakrah', (SELECT id FROM world_countries WHERE iso_code_2 = 'QA'), '0000'), -- South of Doha
('Al Khor', (SELECT id FROM world_countries WHERE iso_code_2 = 'QA'), '0000'), -- North of Doha (Coastal city)
('Al Shamal', (SELECT id FROM world_countries WHERE iso_code_2 = 'QA'), '0000'), -- Northernmost municipality
('Umm Salal', (SELECT id FROM world_countries WHERE iso_code_2 = 'QA'), '0000'), -- North of Doha/Al Rayyan
('Al Daayen', (SELECT id FROM world_countries WHERE iso_code_2 = 'QA'), '0000'), -- Northeast of Doha
('Al Sheehaniya', (SELECT id FROM world_countries WHERE iso_code_2 = 'QA'), '0000'); -- Large central/western municipality

-- End of Qatar municipality list (All 8 municipalities included)

/*
-- ====================================
-- == Información sobre Qatar ==
-- ====================================
--
-- Descripción General:
-- El Estado de Qatar es un pequeño país ubicado en Asia Occidental (Oriente Medio).
-- Ocupa la pequeña península de Qatar en la costa noreste de la Península Arábiga,
-- adentrándose en el Golfo Pérsico. Limita al sur con Arabia Saudita y tiene fronteras
-- marítimas con Baréin e Irán. Es una monarquía absoluta (un emirato). Gracias a sus
-- enormes reservas de gas natural y petróleo, Qatar tiene uno de los PIB per cápita
-- más altos del mundo. El país es mayormente una llanura desértica baja.
--
-- Ciudades Principales (Municipios):
-- Qatar está muy urbanizado y la población se concentra en la capital y sus alrededores.
-- Se divide administrativamente en 8 municipios (baladiyah).
-- * Doha: La capital y, con diferencia, la ciudad más grande, donde reside la gran
--   mayoría de la población y se concentra la actividad económica y administrativa.
-- * Al Rayyan: Municipio adyacente a Doha, que incluye grandes suburbios y áreas
--   residenciales, así como instalaciones educativas (Education City) y deportivas.
-- * Al Wakrah: Ciudad y municipio al sur de Doha.
-- * Al Khor: Ciudad costera y municipio al norte de Doha, centro de la industria del gas.
-- * Al Shamal, Umm Salal, Al Daayen, Al Sheehaniya: Los otros municipios que cubren
--   el resto del país, con poblaciones mucho menores.
-- * La lista incluye los 8 municipios que componen el país.
--
-- Un Poco de Historia:
-- Habitada desde la antigüedad. La región estuvo bajo la influencia de diversos
-- imperios, incluyendo los persas y el califato islámico. Fue un centro de pesca
-- de perlas. Cayó bajo influencia otomana y luego británica (como un protectorado).
-- La familia Al Thani ha gobernado Qatar desde mediados del siglo XIX. Obtuvo la
-- plena independencia del Reino Unido en 1971. El descubrimiento y la explotación
-- masiva de gas natural (posee las terceras reservas más grandes del mundo) a partir
-- de finales del siglo XX transformaron radicalmente el país, convirtiéndolo en uno
-- de los más ricos del mundo per cápita y dándole una influencia regional y global
-- significativa.
--
-- Datos Adicionales:
-- El árabe es el idioma oficial. El Islam (wahabismo) es la religión del estado.
-- Qatar tiene una población expatriada muy grande, que supera en número a los
-- ciudadanos qataríes. Es sede de la influyente cadena de noticias Al Jazeera.
-- Fue sede de la Copa Mundial de la FIFA 2022.
--
*/
