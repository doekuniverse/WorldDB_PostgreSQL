-- SQL Script to insert a representative sample of significant cities and towns for Mongolia (MN).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Mongolia (MN).

-- NOTE: Mongolia is vast and sparsely populated. This list includes the capital, aimag centers (provincial capitals),
-- and significant towns. Listing every single settlement (bag) or nomadic camp is IMPOSSIBLE.
-- Postal codes are 5 digits; examples or '00000' placeholder are provided.

-- Inserting cities for Mongolia (MN) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Aimag Centers / Major Cities
('Ulaanbaatar (Ulan Bator)', (SELECT id FROM world_countries WHERE iso_code_2 = 'MN'), '11000'), -- National Capital
('Erdenet', (SELECT id FROM world_countries WHERE iso_code_2 = 'MN'), '61000'), -- Orkhon Aimag Capital (Major city)
('Darkhan', (SELECT id FROM world_countries WHERE iso_code_2 = 'MN'), '21000'), -- Darkhan-Uul Aimag Capital (Major city)
('Choibalsan', (SELECT id FROM world_countries WHERE iso_code_2 = 'MN'), '23000'), -- Dornod Aimag Capital
('Mörön', (SELECT id FROM world_countries WHERE iso_code_2 = 'MN'), '61000'), -- Khövsgöl Aimag Capital (Postal code needs check, using Erdenet's region)
('Ölgii', (SELECT id FROM world_countries WHERE iso_code_2 = 'MN'), '83000'), -- Bayan-Ölgii Aimag Capital
('Khovd', (SELECT id FROM world_countries WHERE iso_code_2 = 'MN'), '84000'), -- Khovd Aimag Capital
('Ulaangom', (SELECT id FROM world_countries WHERE iso_code_2 = 'MN'), '85000'), -- Uvs Aimag Capital
('Bayankhongor', (SELECT id FROM world_countries WHERE iso_code_2 = 'MN'), '63000'), -- Bayankhongor Aimag Capital
('Arvaikheer', (SELECT id FROM world_countries WHERE iso_code_2 = 'MN'), '62000'), -- Övörkhangai Aimag Capital
('Dalanzadgad', (SELECT id FROM world_countries WHERE iso_code_2 = 'MN'), '77000'), -- Ömnögovi Aimag Capital (South Gobi)
('Sainshand', (SELECT id FROM world_countries WHERE iso_code_2 = 'MN'), '47000'), -- Dornogovi Aimag Capital
('Tsetserleg', (SELECT id FROM world_countries WHERE iso_code_2 = 'MN'), '65000'), -- Arkhangai Aimag Capital
('Uliastai', (SELECT id FROM world_countries WHERE iso_code_2 = 'MN'), '81000'), -- Zavkhan Aimag Capital
('Sükhbaatar', (SELECT id FROM world_countries WHERE iso_code_2 = 'MN'), '31000'), -- Selenge Aimag Capital
('Altai', (SELECT id FROM world_countries WHERE iso_code_2 = 'MN'), '80000'), -- Govi-Altai Aimag Capital
('Bulgan', (SELECT id FROM world_countries WHERE iso_code_2 = 'MN'), '64000'), -- Bulgan Aimag Capital
('Mandalgovi', (SELECT id FROM world_countries WHERE iso_code_2 = 'MN'), '45000'), -- Dundgovi Aimag Capital
('Baruun-Urt', (SELECT id FROM world_countries WHERE iso_code_2 = 'MN'), '25000'), -- Sükhbaatar Aimag Capital
('Öndörkhaan (Chinggis City)', (SELECT id FROM world_countries WHERE iso_code_2 = 'MN'), '27000'), -- Khentii Aimag Capital (Renamed Chinggis City)
('Choir', (SELECT id FROM world_countries WHERE iso_code_2 = 'MN'), '43000'), -- Govisümber Aimag Capital
('Zuunmod', (SELECT id FROM world_countries WHERE iso_code_2 = 'MN'), '24000'), -- Töv Aimag Capital

-- Other Significant Towns (Sample)
('Kharkhorin', (SELECT id FROM world_countries WHERE iso_code_2 = 'MN'), '62090'), -- Övörkhangai Aimag (Near ancient Karakorum capital)
('Baganuur', (SELECT id FROM world_countries WHERE iso_code_2 = 'MN'), '12000'), -- District of Ulaanbaatar (Coal mining)
('Nalaikh', (SELECT id FROM world_countries WHERE iso_code_2 = 'MN'), '12000'), -- District of Ulaanbaatar
('Bor-Öndör', (SELECT id FROM world_countries WHERE iso_code_2 = 'MN'), '27000'), -- Khentii Aimag (Mining town)
('Sharyngol', (SELECT id FROM world_countries WHERE iso_code_2 = 'MN'), '21000'); -- Darkhan-Uul Aimag

-- End of Mongolia city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Mongolia ==
-- ====================================
--
-- Descripción General:
-- Mongolia es un país sin salida al mar ubicado en Asia Oriental y Central. Limita
-- con Rusia al norte y China al sur. Es un país muy extenso pero escasamente poblado,
-- con una geografía dominada por estepas semiáridas, montañas (como el macizo de
-- Altái) y el desierto de Gobi en el sur. Gran parte de la población mantiene
-- tradiciones nómadas o seminómadas basadas en el pastoreo.
--
-- Ciudades Principales:
-- * Ulán Bator (Ulaanbaatar): La capital y ciudad abrumadoramente más grande, donde
--   reside casi la mitad de la población del país. Es el centro político, económico
--   y cultural.
-- * Erdenet y Darkhan: La segunda y tercera ciudades más grandes, importantes centros
--   industriales (minería de cobre en Erdenet) y de transporte en el norte.
-- * Choibalsan: Principal ciudad en el este.
-- * Mörön, Ölgii, Khovd, Ulaangom: Principales centros urbanos y capitales de aimag
--   (provincia) en el norte y oeste. Ölgii es el centro de la población kazaja de Mongolia.
-- * Dalanzadgad: Principal ciudad en la región del Gobi Sur.
-- * La lista incluye también las capitales de todos los aimags y otras ciudades significativas.
--
-- Un Poco de Historia:
-- La región fue el centro del vasto Imperio Mongol fundado por Gengis Kan en el
-- siglo XIII, el imperio terrestre contiguo más grande de la historia. Tras la
-- caída del imperio, Mongolia cayó bajo la influencia y luego el dominio de la
-- dinastía Qing de China durante siglos. Con el colapso de la dinastía Qing,
-- Mongolia declaró su independencia en 1911, aunque China la reclamó. Con apoyo
-- soviético, se estableció la República Popular de Mongolia en 1924, convirtiéndose
-- en un estado socialista satélite de la URSS durante gran parte del siglo XX. En
-- 1990, una revolución democrática pacífica llevó al establecimiento de un sistema
-- multipartidista y una economía de mercado.
--
-- Datos Adicionales:
-- El mongol es el idioma oficial (utiliza el alfabeto cirílico y tradicional). El
-- budismo tibetano y el chamanismo tradicional son influencias religiosas importantes.
-- La cultura nómada tradicional (vida en gers/yurtas, pastoreo de caballos, ovejas,
-- etc.) sigue siendo fundamental. La economía depende de la minería (cobre, carbón,
-- oro) y la agricultura/ganadería. El festival Naadam (con lucha, carreras de
-- caballos y tiro con arco) es una celebración nacional importante.
--
*/
