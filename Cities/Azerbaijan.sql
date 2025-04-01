-- SQL Script to insert a representative sample of significant cities and towns for Azerbaijan (AZ).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Azerbaijan (AZ).

-- NOTE: This list includes the capital, major cities, Nakhchivan capital, and a broad sample
-- of regional centers (rayon capitals). It is IMPOSSIBLE to list every single locality.
-- Postal codes are AZ####; examples or '0000' placeholder are provided.

-- Inserting cities for Azerbaijan (AZ) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Major Cities
('Baku', (SELECT id FROM world_countries WHERE iso_code_2 = 'AZ'), 'AZ1000'), -- Capital (Baki)
('Ganja', (SELECT id FROM world_countries WHERE iso_code_2 = 'AZ'), 'AZ2000'), -- Second largest city
('Sumqayit', (SELECT id FROM world_countries WHERE iso_code_2 = 'AZ'), 'AZ5000'), -- Third largest city, industrial center
('Mingachevir', (SELECT id FROM world_countries WHERE iso_code_2 = 'AZ'), 'AZ4500'), -- Major city on Kura river
('Lankaran', (SELECT id FROM world_countries WHERE iso_code_2 = 'AZ'), 'AZ4200'), -- Major city in the south
('Shirvan', (SELECT id FROM world_countries WHERE iso_code_2 = 'AZ'), 'AZ1800'), -- Formerly Ali Bayramli
('Nakhchivan City', (SELECT id FROM world_countries WHERE iso_code_2 = 'AZ'), 'AZ7000'), -- Capital of Nakhchivan AR

-- Other Significant Towns & Regional Centers (Sample)
('Yevlakh', (SELECT id FROM world_countries WHERE iso_code_2 = 'AZ'), 'AZ6600'), -- Important transport hub
('Shaki', (SELECT id FROM world_countries WHERE iso_code_2 = 'AZ'), 'AZ5500'), -- Historic city
('Khankendi', (SELECT id FROM world_countries WHERE iso_code_2 = 'AZ'), 'AZ2600'), -- Stepanakert (status complex)
('Barda', (SELECT id FROM world_countries WHERE iso_code_2 = 'AZ'), 'AZ0900'), -- Rayon capital
('Agdam', (SELECT id FROM world_countries WHERE iso_code_2 = 'AZ'), 'AZ0200'), -- Rayon capital (largely destroyed)
('Shamakhi', (SELECT id FROM world_countries WHERE iso_code_2 = 'AZ'), 'AZ5600'), -- Rayon capital, historic
('Sabirabad', (SELECT id FROM world_countries WHERE iso_code_2 = 'AZ'), 'AZ5400'), -- Rayon capital
('Salyan', (SELECT id FROM world_countries WHERE iso_code_2 = 'AZ'), 'AZ5200'), -- Rayon capital
('Imishli', (SELECT id FROM world_countries WHERE iso_code_2 = 'AZ'), 'AZ3000'), -- Rayon capital
('Fuzuli', (SELECT id FROM world_countries WHERE iso_code_2 = 'AZ'), 'AZ1900'), -- Rayon capital (affected by conflict)
('Quba', (SELECT id FROM world_countries WHERE iso_code_2 = 'AZ'), 'AZ4000'), -- Rayon capital
('Khachmaz', (SELECT id FROM world_countries WHERE iso_code_2 = 'AZ'), 'AZ2700'), -- Rayon capital
('Zaqatala', (SELECT id FROM world_countries WHERE iso_code_2 = 'AZ'), 'AZ6200'), -- Rayon capital
('Bilasuvar', (SELECT id FROM world_countries WHERE iso_code_2 = 'AZ'), 'AZ1200'), -- Rayon capital
('Agdash', (SELECT id FROM world_countries WHERE iso_code_2 = 'AZ'), 'AZ0300'), -- Rayon capital
('Siyazan', (SELECT id FROM world_countries WHERE iso_code_2 = 'AZ'), 'AZ5700'), -- Rayon capital
('Qazakh', (SELECT id FROM world_countries WHERE iso_code_2 = 'AZ'), 'AZ1100'), -- Rayon capital
('Tovuz', (SELECT id FROM world_countries WHERE iso_code_2 = 'AZ'), 'AZ6000'), -- Rayon capital
('Goychay', (SELECT id FROM world_countries WHERE iso_code_2 = 'AZ'), 'AZ2500'), -- Rayon capital
('Astara', (SELECT id FROM world_countries WHERE iso_code_2 = 'AZ'), 'AZ0700'), -- Rayon capital (border with Iran)
('Julfa', (SELECT id FROM world_countries WHERE iso_code_2 = 'AZ'), 'AZ7400'), -- Rayon capital (Nakhchivan AR)
('Ordubad', (SELECT id FROM world_countries WHERE iso_code_2 = 'AZ'), 'AZ7500'), -- City in Nakhchivan AR
('Qabala', (SELECT id FROM world_countries WHERE iso_code_2 = 'AZ'), 'AZ3600'), -- Rayon capital
('Agsu', (SELECT id FROM world_countries WHERE iso_code_2 = 'AZ'), 'AZ0400'), -- Rayon capital
('Kurdamir', (SELECT id FROM world_countries WHERE iso_code_2 = 'AZ'), 'AZ3300'), -- Rayon capital
('Hajiqabul', (SELECT id FROM world_countries WHERE iso_code_2 = 'AZ'), 'AZ2400'); -- Rayon capital

-- End of Azerbaijan city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Azerbaiyán ==
-- ====================================
--
-- Descripción General:
-- Azerbaiyán es un país transcontinental ubicado en la región del Cáucaso, en la
-- frontera entre Europa del Este y Asia Occidental. Limita con el Mar Caspio al
-- este, Rusia al norte, Georgia al noroeste, Armenia al oeste e Irán al sur.
-- También incluye la República Autónoma de Nakhchivan, un exclave que limita con
-- Armenia, Irán y Turquía. El país es rico en recursos de petróleo y gas natural.
--
-- Ciudades Principales:
-- * Bakú (Baki): La capital y ciudad más grande, ubicada en la costa del Caspio.
--   Es un importante centro industrial, cultural y portuario, conocido por su
--   ciudad vieja amurallada (Patrimonio de la Humanidad) y su moderna arquitectura.
-- * Ganja: La segunda ciudad más grande del país.
-- * Sumqayit: Un importante centro industrial cerca de Bakú.
-- * Mingachevir: Conocida como la "ciudad de las luces" por su central hidroeléctrica.
-- * Lankaran: Ciudad principal en la región subtropical del sur.
-- * Nakhchivan City: Capital de la república autónoma del mismo nombre.
--
-- Un Poco de Historia:
-- La región tiene una historia antigua, formando parte de diversos imperios como
-- el persa y siendo influenciada por culturas túrquicas. Fue incorporada al
-- Imperio Ruso en el siglo XIX. Tras un breve periodo de independencia (1918-1920),
-- formó parte de la Unión Soviética. Recuperó su independencia en 1991. La historia
-- postsoviética ha estado marcada por el desarrollo de sus recursos energéticos
-- y el prolongado conflicto de Nagorno-Karabaj con Armenia.
--
-- Datos Adicionales:
-- El azerí (una lengua túrquica) es el idioma oficial. Azerbaiyán es conocido
-- como la "Tierra del Fuego" debido a fenómenos naturales de gas ardiente y sus
-- reservas de petróleo. Es famoso también por sus volcanes de lodo.
--
*/
