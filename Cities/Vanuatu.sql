-- SQL Script to insert a representative sample of significant towns and settlements for Vanuatu (VU).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Vanuatu (VU).

-- NOTE: Vanuatu is an archipelago of over 80 islands, divided into six provinces. Settlements consist mainly of villages ('nakamal' areas).
-- Listing every single village is impractical for this format. This list focuses on the national capital,
-- the main secondary town (Luganville), and the administrative centers of the provinces.
-- Vanuatu does not use a postal code system; using '0000' as a placeholder.

-- Inserting towns/settlements for Vanuatu (VU) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- National Capital & Major Town / Provincial Centers
('Port Vila', (SELECT id FROM world_countries WHERE iso_code_2 = 'VU'), '0000'), -- National Capital (on Efate island, Shefa Province Capital)
('Luganville', (SELECT id FROM world_countries WHERE iso_code_2 = 'VU'), '0000'), -- Second largest town (on Espiritu Santo island, Sanma Province Capital)
('Isangel', (SELECT id FROM world_countries WHERE iso_code_2 = 'VU'), '0000'), -- Tafea Province Administrative Center (on Tanna island)
('Saratamata', (SELECT id FROM world_countries WHERE iso_code_2 = 'VU'), '0000'), -- Penama Province Administrative Center (on Ambae island - Note: Volcanic activity impacts location)
('Lakatoro', (SELECT id FROM world_countries WHERE iso_code_2 = 'VU'), '0000'), -- Malampa Province Administrative Center (on Malekula island)
('Sola', (SELECT id FROM world_countries WHERE iso_code_2 = 'VU'), '0000'), -- Torba Province Administrative Center (on Vanua Lava island)

-- Other potentially significant settlements (less commonly listed distinctly)
-- ('Norsup', (SELECT id FROM world_countries WHERE iso_code_2 = 'VU'), '0000'), -- Settlement near Lakatoro (Malekula)
-- ('Lenakel', (SELECT id FROM world_countries WHERE iso_code_2 = 'VU'), '0000'); -- Settlement near Isangel (Tanna)


-- End of Vanuatu town/settlement list (Representative Sample)

/*
-- =============================================
-- ==      Información sobre Vanuatu         ==
-- =============================================
--
-- Descripción General:
-- Vanuatu, oficialmente la República de Vanuatu, es una nación insular ubicada en el
-- sur del Océano Pacífico, en la región de Melanesia. El archipiélago consta de
-- aproximadamente 83 islas volcánicas relativamente pequeñas y geológicamente nuevas,
-- de las cuales unas 65 están habitadas. Se extiende de norte a sur en forma de Y.
-- Las islas son montañosas y están sujetas a terremotos y actividad volcánica, así
-- como a ciclones tropicales.
--
-- Ciudades/Pueblos Principales:
-- * Port Vila: La capital y ciudad más grande, ubicada en la isla de Efate. Es el
--   centro económico, político y de transporte del país.
-- * Luganville: La segunda ciudad más grande, ubicada en la isla de Espíritu Santo.
--   Fue una importante base aliada durante la Segunda Guerra Mundial.
-- * Isangel (en Tanna), Saratamata (en Ambae), Lakatoro (en Malekula), Sola (en Vanua Lava):
--   Centros administrativos de las provincias de Tafea, Penama, Malampa y Torba,
--   respectivamente. (Port Vila es el centro de Shefa y Luganville de Sanma).
--
-- Un Poco de Historia:
-- Habitada por pueblos melanesios durante miles de años. El primer avistamiento europeo
-- fue por el explorador portugués Pedro Fernandes de Queirós en 1606, quien creyó
-- haber llegado a Terra Australis y nombró al archipiélago 'La Austrialia del Espíritu
-- Santo'. Fue visitado posteriormente por Bougainville y James Cook, quien cartografió
-- las islas y las llamó Nuevas Hébridas. En el siglo XIX, llegaron misioneros y colonos
-- europeos. Para evitar la anexión por una sola potencia, Francia y el Reino Unido
-- establecieron un condominio único anglo-francés sobre las Nuevas Hébridas en 1906,
-- con sistemas legales, policiales y administrativos duplicados. Este complejo sistema
-- persistió hasta que el país obtuvo la independencia como República de Vanuatu en 1980.
--
-- Datos Adicionales:
-- Vanuatu es uno de los países lingüísticamente más diversos del mundo per cápita,
-- con más de 100 lenguas indígenas distintas. Los idiomas oficiales son el bislama
-- (un criollo basado en el inglés), el inglés y el francés. La población es
-- predominantemente melanesia (ni-Vanuatu). La religión principal es el cristianismo,
-- aunque las creencias tradicionales ('kastom') siguen siendo importantes. La economía
-- se basa en la agricultura de pequeña escala (kava, copra, cacao, café, ganado), la
-- pesca y, cada vez más, el turismo (cruceros, buceo, ecoturismo, turismo cultural).
-- Vanuatu es muy vulnerable a los desastres naturales y a los efectos del cambio climático.
-- Es miembro de la Mancomunidad de Naciones, la Francofonía y las Naciones Unidas.
--
*/
