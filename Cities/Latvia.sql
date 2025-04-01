-- SQL Script to insert a representative sample of significant cities and towns for Latvia (LV).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Latvia (LV).

-- NOTE: Latvia has numerous municipalities (novadi) and smaller villages (ciemi). This list includes the capital,
-- republican cities, and a broad sample of significant towns/municipality centers. Listing every single locality is IMPOSSIBLE.
-- Postal codes are LV-####; examples or 'LV-0000' placeholder are provided.

-- Inserting cities for Latvia (LV) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Republican Cities / Major Towns
('Riga', (SELECT id FROM world_countries WHERE iso_code_2 = 'LV'), 'LV-1001'), -- National Capital
('Daugavpils', (SELECT id FROM world_countries WHERE iso_code_2 = 'LV'), 'LV-5401'), -- Republican City (Second largest)
('Liepāja', (SELECT id FROM world_countries WHERE iso_code_2 = 'LV'), 'LV-3401'), -- Republican City (Major port)
('Jelgava', (SELECT id FROM world_countries WHERE iso_code_2 = 'LV'), 'LV-3001'), -- Republican City
('Jūrmala', (SELECT id FROM world_countries WHERE iso_code_2 = 'LV'), 'LV-2015'), -- Republican City (Coastal resort)
('Ventspils', (SELECT id FROM world_countries WHERE iso_code_2 = 'LV'), 'LV-3601'), -- Republican City (Major port)
('Rēzekne', (SELECT id FROM world_countries WHERE iso_code_2 = 'LV'), 'LV-4601'), -- Republican City (Latgale region center)
('Jēkabpils', (SELECT id FROM world_countries WHERE iso_code_2 = 'LV'), 'LV-5201'), -- Republican City
('Valmiera', (SELECT id FROM world_countries WHERE iso_code_2 = 'LV'), 'LV-4201'), -- Republican City
('Ogre', (SELECT id FROM world_countries WHERE iso_code_2 = 'LV'), 'LV-5001'), -- Republican City (New status since 2021)

-- Other Significant Towns / Municipality Centers (Sample)
('Cēsis', (SELECT id FROM world_countries WHERE iso_code_2 = 'LV'), 'LV-4101'), -- Cēsis Municipality center (Historic town)
('Kuldīga', (SELECT id FROM world_countries WHERE iso_code_2 = 'LV'), 'LV-3301'), -- Kuldīga Municipality center (Historic town)
('Salaspils', (SELECT id FROM world_countries WHERE iso_code_2 = 'LV'), 'LV-2121'), -- Salaspils Municipality center (Near Riga)
('Tukums', (SELECT id FROM world_countries WHERE iso_code_2 = 'LV'), 'LV-3101'), -- Tukums Municipality center
('Sigulda', (SELECT id FROM world_countries WHERE iso_code_2 = 'LV'), 'LV-2150'), -- Sigulda Municipality center (Gauja National Park)
('Talsi', (SELECT id FROM world_countries WHERE iso_code_2 = 'LV'), 'LV-3201'), -- Talsi Municipality center
('Dobele', (SELECT id FROM world_countries WHERE iso_code_2 = 'LV'), 'LV-3701'), -- Dobele Municipality center
('Bauska', (SELECT id FROM world_countries WHERE iso_code_2 = 'LV'), 'LV-3901'), -- Bauska Municipality center
('Saldus', (SELECT id FROM world_countries WHERE iso_code_2 = 'LV'), 'LV-3801'), -- Saldus Municipality center
('Ludza', (SELECT id FROM world_countries WHERE iso_code_2 = 'LV'), 'LV-5701'), -- Ludza Municipality center
('Krāslava', (SELECT id FROM world_countries WHERE iso_code_2 = 'LV'), 'LV-5601'), -- Krāslava Municipality center
('Gulbene', (SELECT id FROM world_countries WHERE iso_code_2 = 'LV'), 'LV-4401'), -- Gulbene Municipality center
('Madona', (SELECT id FROM world_countries WHERE iso_code_2 = 'LV'), 'LV-4801'), -- Madona Municipality center
('Limbaži', (SELECT id FROM world_countries WHERE iso_code_2 = 'LV'), 'LV-4001'), -- Limbaži Municipality center
('Preiļi', (SELECT id FROM world_countries WHERE iso_code_2 = 'LV'), 'LV-5301'), -- Preiļi Municipality center
('Balvi', (SELECT id FROM world_countries WHERE iso_code_2 = 'LV'), 'LV-4501'), -- Balvi Municipality center
('Līvāni', (SELECT id FROM world_countries WHERE iso_code_2 = 'LV'), 'LV-5316'), -- Līvāni Municipality center
('Aizkraukle', (SELECT id FROM world_countries WHERE iso_code_2 = 'LV'), 'LV-5101'), -- Aizkraukle Municipality center
('Valka', (SELECT id FROM world_countries WHERE iso_code_2 = 'LV'), 'LV-4701'), -- Valka Municipality center (Border town with Estonia's Valga)
('Smiltene', (SELECT id FROM world_countries WHERE iso_code_2 = 'LV'), 'LV-4729'), -- Smiltene Municipality center
('Alūksne', (SELECT id FROM world_countries WHERE iso_code_2 = 'LV'), 'LV-4301'); -- Alūksne Municipality center

-- End of Latvia city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Latvia ==
-- ====================================
--
-- Descripción General:
-- Letonia (Latvia) es un país ubicado en el norte de Europa, uno de los tres Estados
-- Bálticos. Limita con Estonia al norte, Lituania al sur, Rusia al este, Bielorrusia
-- al sureste y el Mar Báltico al oeste. Su territorio es mayormente llano, con
-- extensos bosques, numerosos lagos y ríos, y una larga costa báltica. Es una
-- república parlamentaria y miembro de la Unión Europea, la OTAN y la Eurozona.
--
-- Ciudades Principales:
-- * Riga: La capital y ciudad más grande, ubicada en la desembocadura del río Daugava
--   en el Golfo de Riga. Es la ciudad más grande de los Estados Bálticos y un
--   importante centro cultural, económico e histórico. Su centro histórico (Ciudad
--   Vieja) es Patrimonio de la Humanidad, famoso por su arquitectura Art Nouveau.
-- * Daugavpils: La segunda ciudad más grande, ubicada en el sureste, cerca de las
--   fronteras con Lituania y Bielorrusia, con una importante población rusófona.
-- * Liepāja: Tercera ciudad, importante puerto libre de hielo en la costa oeste.
-- * Jelgava, Jūrmala (ciudad balneario), Ventspils (puerto), Rēzekne, Jēkabpils,
--   Valmiera, Ogre: Otras "ciudades republicanas" con estatus especial.
-- * La lista incluye también otros pueblos importantes y centros municipales (novada centrs).
--
-- Un Poco de Historia:
-- Habitada por tribus bálticas (letones, latgalianos, etc.). En la Edad Media,
-- el territorio fue conquistado por los Caballeros Teutónicos (Orden Livona),
-- formando parte de Livonia. Posteriormente, estuvo bajo el dominio de la
-- Mancomunidad Polaco-Lituana, Suecia y finalmente el Imperio Ruso. Letonia
-- declaró su independencia en 1918 tras la Primera Guerra Mundial. Fue ocupada
-- por la Unión Soviética en 1940 durante la Segunda Guerra Mundial (y brevemente
-- por la Alemania nazi). Tras décadas de ocupación soviética, recuperó su
-- independencia en 1991 durante la disolución de la URSS, a través de un
-- movimiento pacífico (parte de la "Revolución Cantada" báltica). Desde entonces,
-- se ha integrado en las estructuras europeas y occidentales.
--
-- Datos Adicionales:
-- El letón es el idioma oficial (una lengua báltica). Existe una minoría rusófona
-- significativa. El luteranismo, el catolicismo y la ortodoxia rusa son las
-- principales confesiones cristianas. Letonia es conocida por sus tradiciones
-- corales, festivales de canto y danza, y su naturaleza (bosques, playas).
--
*/
