-- SQL Script to insert the main locality for Gibraltar (GI).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Gibraltar (GI).

-- NOTE: Gibraltar is a very small territory, essentially functioning as a single city-territory.
-- This list includes the main entity 'Gibraltar'. Listing separate districts as distinct cities
-- might not be appropriate for a global city database.
-- The entire territory uses the postal code GX11 1AA.

-- Inserting the main locality for Gibraltar (GI) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
('Gibraltar', (SELECT id FROM world_countries WHERE iso_code_2 = 'GI'), 'GX11 1AA'); -- Main city/territory

-- End of Gibraltar locality list (Single main entity)

/*
-- ====================================
-- == Información sobre Gibraltar ==
-- ====================================
--
-- Descripción General:
-- Gibraltar es un Territorio Británico de Ultramar ubicado en el extremo sur de la
-- Península Ibérica, en la entrada occidental del Mar Mediterráneo. Consiste en
-- el Peñón de Gibraltar (The Rock), una estrecha península y el área urbana
-- circundante. Tiene una ubicación estratégica que controla el Estrecho de Gibraltar,
-- la vía marítima que conecta el Atlántico con el Mediterráneo.
--
-- Ciudades Principales (Localidades):
-- Gibraltar funciona como una única ciudad-territorio. Aunque existen áreas
-- nombradas como Westside (donde vive la mayoría de la población), Eastside
-- (Catalan Bay), Upper Town, etc., no se consideran ciudades separadas. La entrada
-- 'Gibraltar' representa el territorio en su conjunto.
--
-- Un Poco de Historia:
-- Habitada desde la prehistoria (Neandertales). Fue un importante punto estratégico
-- bajo dominio musulmán (llamado Jebel Tariq, "Montaña de Tariq", de donde deriva
-- Gibraltar) y luego español. Fue capturado por una flota anglo-neerlandesa en
-- 1704 durante la Guerra de Sucesión Española y cedido formalmente a Gran Bretaña
-- por el Tratado de Utrecht en 1713. Ha permanecido bajo control británico desde
-- entonces, resistiendo varios asedios españoles. Fue una base naval británica
-- crucial. España reclama la soberanía sobre Gibraltar, lo que constituye una
-- disputa territorial continua. Los gibraltareños han votado abrumadoramente en
-- referéndums para permanecer bajo soberanía británica.
--
-- Datos Adicionales:
-- El inglés es el idioma oficial, pero también se habla español y llanito (un
-- dialecto local que mezcla inglés andaluz y otras influencias). La economía se
-- basa en los servicios financieros, el turismo, las apuestas online y el puerto
-- (suministro de combustible a barcos). Es famoso por los macacos de Berbería que
-- habitan el Peñón, la única población de monos salvajes en Europa.
--
*/
