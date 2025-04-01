-- SQL Script to insert the main settlements for Cocos (Keeling) Islands (CC).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Cocos (Keeling) Islands (CC).

-- NOTE: Cocos (Keeling) Islands consist of 2 atolls with only 2 inhabited islands.
-- This list includes the main settlements on those islands, covering essentially all populated places.
-- The entire territory uses the Australian postal code 6799.

-- Inserting settlements for Cocos (Keeling) Islands (CC) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
('West Island', (SELECT id FROM world_countries WHERE iso_code_2 = 'CC'), '6799'), -- Capital (administrative centre), location of airport
('Bantam Village', (SELECT id FROM world_countries WHERE iso_code_2 = 'CC'), '6799'); -- Main settlement on Home Island (predominantly Cocos Malay)

-- End of Cocos (Keeling) Islands settlement list (Main inhabited areas)

/*
-- ==================================================
-- == Información sobre Cocos (Keeling) Islands ==
-- ==================================================
--
-- Descripción General:
-- Las Islas Cocos (Keeling) son un territorio externo de Australia ubicado en el
-- Océano Índico, al suroeste de Indonesia y a medio camino entre Australia y Sri
-- Lanka. El territorio consiste en dos atolones de coral (North Keeling y South
-- Keeling) y 27 islas de coral. Solo dos islas están habitadas: West Island y
-- Home Island, ambas en el atolón sur. North Keeling es un parque nacional deshabitado.
--
-- Ciudades Principales (Asentamientos):
-- No hay ciudades en el sentido tradicional. Los dos únicos asentamientos son:
-- * West Island: Es el centro administrativo, donde se encuentra el aeropuerto y
--   reside principalmente la población de origen australiano/europeo.
-- * Bantam Village: Es el asentamiento principal en Home Island, donde reside la
--   mayoría de la población Cocos Malay (Malayos de Cocos).
--
-- Un Poco de Historia:
-- Las islas fueron descubiertas en 1609 por el capitán británico William Keeling,
-- pero permanecieron deshabitadas hasta principios del siglo XIX. Fueron pobladas
-- por Alexander Hare y luego por John Clunies-Ross, un comerciante escocés que
-- trajo trabajadores malayos para cultivar cocoteros para copra. La familia
-- Clunies-Ross gobernó las islas como un feudo privado durante más de un siglo,
-- siendo conocidas como los "Reyes de Cocos". Las islas fueron anexadas por el
-- Reino Unido en 1857 y administradas desde Ceilán o Singapur. Durante la Primera
-- Guerra Mundial, fueron escenario de una batalla naval (Batalla de Cocos). La
-- soberanía fue transferida a Australia en 1955. En 1984, la población votó en un
-- referéndum supervisado por la ONU para integrarse plenamente con Australia.
--
-- Datos Adicionales:
-- El inglés es el idioma oficial, pero el malayo de Cocos (una variante del malayo)
-- es ampliamente hablado por la comunidad Cocos Malay. La economía tradicional se
-- basaba en la copra, pero ahora el turismo y el empleo en el gobierno son importantes.
-- Las islas son conocidas por sus playas, lagunas y oportunidades para el kitesurf.
--
*/
