-- SQL Script to insert a representative sample of significant towns for Tonga (TO).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Tonga (TO).

-- NOTE: Tonga consists of numerous islands grouped into divisions, further containing villages ('kolo').
-- Listing every single village is impractical for this format. This list focuses on the national capital
-- and the primary administrative centers/towns of the main island groups.
-- Tonga does not use a postal code system; using '0000' as a placeholder.

-- Inserting towns for Tonga (TO) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- National Capital & Main Island Group Centers
('Nukuʻalofa', (SELECT id FROM world_countries WHERE iso_code_2 = 'TO'), '0000'), -- National Capital (on Tongatapu island)
('Neiafu', (SELECT id FROM world_countries WHERE iso_code_2 = 'TO'), '0000'), -- Main town of Vavaʻu island group
('Pangai', (SELECT id FROM world_countries WHERE iso_code_2 = 'TO'), '0000'), -- Main town of Haʻapai island group (on Lifuka island)
('ʻOhonua', (SELECT id FROM world_countries WHERE iso_code_2 = 'TO'), '0000'), -- Main town of ʻEua island
('Hihifo', (SELECT id FROM world_countries WHERE iso_code_2 = 'TO'), '0000'), -- Main village of Niuatoputapu island (Niuas group)

-- Other potentially significant settlements (less commonly listed distinctly)
-- ('Muʻa', (SELECT id FROM world_countries WHERE iso_code_2 = 'TO'), '0000'), -- Historic area near Nukuʻalofa (Tongatapu)
-- ('Vaini', (SELECT id FROM world_countries WHERE iso_code_2 = 'TO'), '0000'); -- Significant village on Tongatapu


-- End of Tonga town list (Representative Sample)

/*
-- =============================================
-- ==      Información sobre Tonga           ==
-- =============================================
--
-- Descripción General:
-- Tonga, oficialmente el Reino de Tonga, es un archipiélago polinesio ubicado en el
-- sur del Océano Pacífico. Consiste en más de 170 islas, de las cuales unas 36 están
-- habitadas, agrupadas principalmente en Tongatapu (donde está la capital), Vavaʻu,
-- Haʻapai, ʻEua y las remotas Niuas. Es la única monarquía que queda en la Polinesia
-- y uno de los pocos países del mundo que nunca perdió formalmente su soberanía
-- ante una potencia extranjera (aunque fue protectorado británico).
--
-- Ciudades/Pueblos Principales:
-- * Nukuʻalofa: La capital y ciudad más grande, ubicada en la isla principal de
--   Tongatapu. Es el centro político, económico y de transporte.
-- * Neiafu: El centro administrativo y principal asentamiento del grupo de islas Vavaʻu,
--   conocido por su puerto natural y turismo náutico.
-- * Pangai: El centro administrativo del grupo Haʻapai, ubicado en la isla Lifuka.
-- * ʻOhonua: El principal asentamiento en la isla de ʻEua.
-- * Hihifo: El principal pueblo en la isla Niuatoputapu, en el remoto grupo de las Niuas.
--
-- Un Poco de Historia:
-- Habitada por pueblos Lapita y luego polinesios. Tonga desarrolló una sociedad
-- compleja y, en su apogeo (siglos XII-XV), el Imperio Tuʻi Tonga ejerció influencia
-- sobre una vasta área del Pacífico. El contacto con exploradores europeos (Schouten,
-- Tasman, Cook) comenzó en el siglo XVII. A principios del siglo XIX, Tāufaʻāhau
-- unificó las islas y se convirtió en el Rey George Tupou I en 1845, estableciendo
-- la monarquía moderna y una constitución. En 1900, Tonga firmó un Tratado de Amistad
-- con el Reino Unido, convirtiéndose en un Estado Protegido Británico para evitar la
-- colonización por otras potencias, pero manteniendo su autogobierno interno y la
-- monarquía. Recuperó la plena independencia en 1970. Tonga ha experimentado reformas
-- democráticas significativas en el siglo XXI, pasando de una monarquía casi absoluta
-- a una monarquía constitucional con una asamblea legislativa mayoritariamente electa.
--
-- Datos Adicionales:
-- Los idiomas oficiales son el tongano y el inglés. La población es predominantemente
-- de etnia tongana (polinesia). La religión principal es el cristianismo (metodista wesleyano,
-- católico romano, mormón). La sociedad tongana tiene una estructura jerárquica con
-- una nobleza hereditaria y el rey como figura central. La economía se basa en la
-- agricultura (calabaza, vainilla, raíces, cocos), la pesca, el turismo y las remesas
-- enviadas por tonganos que viven en el extranjero (principalmente Nueva Zelanda,
-- Australia y EE. UU.). El rugby es el deporte nacional. Tonga es vulnerable a los
-- ciclones tropicales y otros desastres naturales.
--
*/
