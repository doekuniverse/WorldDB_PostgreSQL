-- SQL Script to insert a representative sample of significant cities and towns for Estonia (EE).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Estonia (EE).

-- NOTE: Estonia has over 6,200 municipalities/settlements. This list includes the capital, county seats,
-- and a broad sample of major cities and significant towns. Listing every single village (küla) is IMPOSSIBLE.
-- Postal codes are 5 digits; examples or '00000' placeholder are provided.

-- Inserting cities for Estonia (EE) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & County Seats (Maakonnakeskus) / Major Cities
('Tallinn', (SELECT id FROM world_countries WHERE iso_code_2 = 'EE'), '10111'), -- National Capital & Harju County Capital
('Tartu', (SELECT id FROM world_countries WHERE iso_code_2 = 'EE'), '50050'), -- Tartu County Capital, Second largest city
('Narva', (SELECT id FROM world_countries WHERE iso_code_2 = 'EE'), '20101'), -- Ida-Viru County (Major city on Russian border)
('Pärnu', (SELECT id FROM world_countries WHERE iso_code_2 = 'EE'), '80010'), -- Pärnu County Capital (Summer capital)
('Kohtla-Järve', (SELECT id FROM world_countries WHERE iso_code_2 = 'EE'), '30321'), -- Ida-Viru County (Industrial city)
('Viljandi', (SELECT id FROM world_countries WHERE iso_code_2 = 'EE'), '71001'), -- Viljandi County Capital
('Rakvere', (SELECT id FROM world_countries WHERE iso_code_2 = 'EE'), '44306'), -- Lääne-Viru County Capital
('Maardu', (SELECT id FROM world_countries WHERE iso_code_2 = 'EE'), '74111'), -- Harju County (Near Tallinn)
('Kuressaare', (SELECT id FROM world_countries WHERE iso_code_2 = 'EE'), '93813'), -- Saare County Capital (on Saaremaa island)
('Sillamäe', (SELECT id FROM world_countries WHERE iso_code_2 = 'EE'), '40231'), -- Ida-Viru County
('Valga', (SELECT id FROM world_countries WHERE iso_code_2 = 'EE'), '68203'), -- Valga County Capital (Border town with Latvia's Valka)
('Võru', (SELECT id FROM world_countries WHERE iso_code_2 = 'EE'), '65601'), -- Võru County Capital
('Jõhvi', (SELECT id FROM world_countries WHERE iso_code_2 = 'EE'), '41531'), -- Ida-Viru County Capital (Administrative center)
('Haapsalu', (SELECT id FROM world_countries WHERE iso_code_2 = 'EE'), '90502'), -- Lääne County Capital
('Keila', (SELECT id FROM world_countries WHERE iso_code_2 = 'EE'), '76608'), -- Harju County
('Paide', (SELECT id FROM world_countries WHERE iso_code_2 = 'EE'), '72711'), -- Järva County Capital
('Tapa', (SELECT id FROM world_countries WHERE iso_code_2 = 'EE'), '45106'), -- Lääne-Viru County (Railway hub)
('Põlva', (SELECT id FROM world_countries WHERE iso_code_2 = 'EE'), '63308'), -- Põlva County Capital
('Jõgeva', (SELECT id FROM world_countries WHERE iso_code_2 = 'EE'), '48303'), -- Jõgeva County Capital
('Rapla', (SELECT id FROM world_countries WHERE iso_code_2 = 'EE'), '79511'), -- Rapla County Capital
('Kärdla', (SELECT id FROM world_countries WHERE iso_code_2 = 'EE'), '92411'), -- Hiiu County Capital (on Hiiumaa island)

-- Other Significant Towns (Sample)
('Elva', (SELECT id FROM world_countries WHERE iso_code_2 = 'EE'), '61501'), -- Tartu County
('Saue', (SELECT id FROM world_countries WHERE iso_code_2 = 'EE'), '76505'), -- Harju County
('Põltsamaa', (SELECT id FROM world_countries WHERE iso_code_2 = 'EE'), '48103'), -- Jõgeva County
('Paldiski', (SELECT id FROM world_countries WHERE iso_code_2 = 'EE'), '76806'), -- Harju County (Port town)
('Sindi', (SELECT id FROM world_countries WHERE iso_code_2 = 'EE'), '86705'), -- Pärnu County
('Kunda', (SELECT id FROM world_countries WHERE iso_code_2 = 'EE'), '44107'), -- Lääne-Viru County (Port/Industrial town)
('Karksi-Nuia', (SELECT id FROM world_countries WHERE iso_code_2 = 'EE'), '69104'), -- Viljandi County
('Loksa', (SELECT id FROM world_countries WHERE iso_code_2 = 'EE'), '74805'), -- Harju County
('Türi', (SELECT id FROM world_countries WHERE iso_code_2 = 'EE'), '72213'), -- Järva County
('Räpina', (SELECT id FROM world_countries WHERE iso_code_2 = 'EE'), '64504'), -- Põlva County
('Otepää', (SELECT id FROM world_countries WHERE iso_code_2 = 'EE'), '67408'), -- Valga County (Winter capital/Ski resort)
('Tõrva', (SELECT id FROM world_countries WHERE iso_code_2 = 'EE'), '68606'), -- Valga County
('Narva-Jõesuu', (SELECT id FROM world_countries WHERE iso_code_2 = 'EE'), '29023'); -- Ida-Viru County (Resort town)

-- End of Estonia city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Estonia ==
-- ====================================
--
-- Descripción General:
-- Estonia es un país ubicado en el norte de Europa, considerado uno de los Estados
-- Bálticos. Limita con el Golfo de Finlandia al norte, el Mar Báltico al oeste,
-- Letonia al sur y Rusia al este. Su territorio incluye una parte continental y
-- más de 2,000 islas e islotes en el Mar Báltico, siendo Saaremaa y Hiiumaa las
-- más grandes. El paisaje es mayormente plano, con numerosos lagos, bosques y
-- humedales. Estonia es conocida por ser una sociedad digital muy avanzada
-- (e-Estonia). Es una república parlamentaria y miembro de la Unión Europea y la OTAN.
--
-- Ciudades Principales:
-- * Tallin (Tallinn): La capital y ciudad más grande, ubicada en la costa norte.
--   Su centro histórico medieval (Ciudad Vieja) es Patrimonio de la Humanidad.
--   Es un importante centro tecnológico y portuario.
-- * Tartu: La segunda ciudad más grande, considerada la capital intelectual y
--   cultural, sede de la universidad más antigua del país.
-- * Narva: La tercera ciudad más grande, ubicada en la frontera oriental con Rusia,
--   con una población mayoritariamente rusófona.
-- * Pärnu: Principal ciudad turística de verano en la costa oeste.
-- * Kohtla-Järve y Sillamäe: Centros industriales en el noreste.
-- * La lista incluye también las capitales de todos los condados (maakonnad) y
--   otras ciudades importantes.
--
-- Un Poco de Historia:
-- Habitada por pueblos fino-ugrios. Durante la Edad Media, fue conquistada y
-- gobernada por daneses, la Orden Teutónica (Caballeros Livonios), suecos y
-- finalmente por el Imperio Ruso. Estonia declaró su independencia en 1918 tras
-- la Revolución Rusa, pero fue ocupada por la Unión Soviética en 1940 durante la
-- Segunda Guerra Mundial (y brevemente por la Alemania nazi). Tras décadas de
-- ocupación soviética, recuperó su independencia en 1991 durante la disolución
-- de la URSS, a través de un movimiento pacífico conocido como la Revolución
-- Cantada. Desde entonces, se ha integrado rápidamente en las estructuras europeas
-- y occidentales.
--
-- Datos Adicionales:
-- El estonio es el idioma oficial (una lengua fino-úgrica relacionada con el finés).
-- Estonia es pionera en gobierno electrónico (e-gobierno) y ofrece la "e-Residencia"
-- a extranjeros. Skype fue desarrollado originalmente por ingenieros estonios.
-- Los bosques cubren aproximadamente la mitad del territorio del país.
--
*/
