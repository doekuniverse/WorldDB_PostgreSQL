-- SQL Script to insert all municipalities (main administrative divisions) for Montenegro (ME).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Montenegro (ME).

-- NOTE: Montenegro is divided into 25 municipalities (opštine). This list includes all of them,
-- providing essentially complete coverage at the municipal level.
-- Postal codes are 5 digits; examples are provided.

-- Inserting municipalities for Montenegro (ME) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
('Podgorica', (SELECT id FROM world_countries WHERE iso_code_2 = 'ME'), '81000'), -- National Capital
('Nikšić', (SELECT id FROM world_countries WHERE iso_code_2 = 'ME'), '81400'), -- Second largest city
('Pljevlja', (SELECT id FROM world_countries WHERE iso_code_2 = 'ME'), '84210'),
('Bijelo Polje', (SELECT id FROM world_countries WHERE iso_code_2 = 'ME'), '84000'),
('Cetinje', (SELECT id FROM world_countries WHERE iso_code_2 = 'ME'), '81250'), -- Old Royal Capital
('Bar', (SELECT id FROM world_countries WHERE iso_code_2 = 'ME'), '85000'), -- Major port city
('Herceg Novi', (SELECT id FROM world_countries WHERE iso_code_2 = 'ME'), '85340'), -- Coastal city (Bay of Kotor)
('Berane', (SELECT id FROM world_countries WHERE iso_code_2 = 'ME'), '84300'),
('Budva', (SELECT id FROM world_countries WHERE iso_code_2 = 'ME'), '85310'), -- Major tourist town
('Ulcinj', (SELECT id FROM world_countries WHERE iso_code_2 = 'ME'), '85360'), -- Southernmost coastal town
('Tivat', (SELECT id FROM world_countries WHERE iso_code_2 = 'ME'), '85320'), -- Coastal town (Bay of Kotor, airport)
('Rožaje', (SELECT id FROM world_countries WHERE iso_code_2 = 'ME'), '84310'),
('Kotor', (SELECT id FROM world_countries WHERE iso_code_2 = 'ME'), '85330'), -- Coastal town (Bay of Kotor, UNESCO site)
('Danilovgrad', (SELECT id FROM world_countries WHERE iso_code_2 = 'ME'), '81410'),
('Mojkovac', (SELECT id FROM world_countries WHERE iso_code_2 = 'ME'), '84205'),
('Plav', (SELECT id FROM world_countries WHERE iso_code_2 = 'ME'), '84325'),
('Kolašin', (SELECT id FROM world_countries WHERE iso_code_2 = 'ME'), '81210'), -- Mountain resort town
('Žabljak', (SELECT id FROM world_countries WHERE iso_code_2 = 'ME'), '84220'), -- Mountain resort town (Durmitor NP)
('Plužine', (SELECT id FROM world_countries WHERE iso_code_2 = 'ME'), '81435'),
('Andrijevica', (SELECT id FROM world_countries WHERE iso_code_2 = 'ME'), '84320'),
('Šavnik', (SELECT id FROM world_countries WHERE iso_code_2 = 'ME'), '81450'), -- Least populated municipality
('Gusinje', (SELECT id FROM world_countries WHERE iso_code_2 = 'ME'), '84326'), -- Newer municipality
('Petnjica', (SELECT id FROM world_countries WHERE iso_code_2 = 'ME'), '84312'), -- Newer municipality
('Tuzi', (SELECT id FROM world_countries WHERE iso_code_2 = 'ME'), '81206'), -- Newer municipality (near Podgorica)
('Zeta', (SELECT id FROM world_countries WHERE iso_code_2 = 'ME'), '81206'); -- Newest municipality (Golubovci area, near Podgorica)


-- End of Montenegro municipality list (All 25 municipalities included)

/*
-- ====================================
-- == Información sobre Montenegro ==
-- ====================================
--
-- Descripción General:
-- Montenegro es un país ubicado en el sureste de Europa, en la Península Balcánica.
-- Limita con Croacia al oeste, Bosnia y Herzegovina al noroeste, Serbia al noreste,
-- Kosovo al este y Albania al sur. Tiene una costa en el Mar Adriático. Su
-- geografía es muy montañosa (Alpes Dináricos), con una estrecha llanura costera
-- y la espectacular Bahía de Kotor (Boka Kotorska), similar a un fiordo.
--
-- Ciudades Principales (Municipios):
-- Montenegro se divide administrativamente en 25 municipios (opštine).
-- * Podgorica: La capital y ciudad más grande, ubicada en la llanura central.
-- * Nikšić: La segunda ciudad más grande, centro industrial.
-- * Pljevlja y Bijelo Polje: Principales ciudades en el norte.
-- * Cetinje: La antigua capital real e histórica, ubicada en una zona montañosa.
-- * Bar: Principal puerto marítimo del país.
-- * Herceg Novi, Kotor, Tivat, Budva, Ulcinj: Importantes ciudades y centros
--   turísticos a lo largo de la costa adriática. Kotor y su bahía son Patrimonio
--   de la Humanidad por la UNESCO.
-- * La lista incluye los 25 municipios que componen el país.
--
-- Un Poco de Historia:
-- Habitada por tribus ilirias, luego parte del Imperio Romano y Bizantino. Tribus
-- eslavas (serbias) se asentaron en la Edad Media, formando el principado de Duklja/Zeta.
-- Zeta mantuvo diversos grados de autonomía bajo el dominio serbio, veneciano y
-- otomano. En los siglos posteriores, bajo la dinastía Petrović-Njegoš, Montenegro
-- (literalmente "Montaña Negra") resistió al dominio otomano desde su corazón
-- montañoso en Cetinje, convirtiéndose en un principado teocrático y luego secular.
-- Fue reconocido como principado independiente en 1878 y como reino en 1910. Tras
-- la Primera Guerra Mundial, se unió al Reino de los Serbios, Croatas y Eslovenos
-- (luego Yugoslavia). Después de la desintegración de Yugoslavia en los años 90,
-- permaneció unido a Serbia (como República Federal de Yugoslavia, luego Serbia y
-- Montenegro). En 2006, Montenegro declaró su independencia tras un referéndum.
-- Se unió a la OTAN en 2017 y es candidato a la Unión Europea.
--
-- Datos Adicionales:
-- El montenegrino es el idioma oficial (muy similar al serbio, bosnio y croata).
-- La Iglesia Ortodoxa Serbia y la Iglesia Ortodoxa Montenegrina (autocéfala, no
-- reconocida canónicamente por todas las iglesias ortodoxas) son importantes, junto
-- con minorías católicas y musulmanas. El turismo (costa, montañas como Durmitor
-- - Patrimonio de la Humanidad) es un sector económico clave.
--
*/
