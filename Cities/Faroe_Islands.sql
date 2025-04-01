-- SQL Script to insert a representative sample of significant towns and villages for the Faroe Islands (FO).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Faroe Islands (FO).

-- NOTE: The Faroe Islands is an archipelago. This list includes the capital, major towns,
-- and significant villages across the main islands. Listing every single locality is IMPOSSIBLE.
-- Postal codes are FO-###; examples or 'FO-000' placeholder are provided.

-- Inserting cities/towns for Faroe Islands (FO) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Streymoy Island
('Tórshavn', (SELECT id FROM world_countries WHERE iso_code_2 = 'FO'), 'FO-100'), -- Capital
('Hoyvík', (SELECT id FROM world_countries WHERE iso_code_2 = 'FO'), 'FO-188'), -- Suburb/Town north of Tórshavn
('Argir', (SELECT id FROM world_countries WHERE iso_code_2 = 'FO'), 'FO-160'), -- Suburb/Town south of Tórshavn
('Vestmanna', (SELECT id FROM world_countries WHERE iso_code_2 = 'FO'), 'FO-350'), -- Town in the northwest
('Kollafjørður', (SELECT id FROM world_countries WHERE iso_code_2 = 'FO'), 'FO-410'), -- Village in the north
('Kvívík', (SELECT id FROM world_countries WHERE iso_code_2 = 'FO'), 'FO-340'), -- Village

-- Eysturoy Island
('Runavík', (SELECT id FROM world_countries WHERE iso_code_2 = 'FO'), 'FO-620'), -- Major town/municipality center
('Saltangará', (SELECT id FROM world_countries WHERE iso_code_2 = 'FO'), 'FO-600'), -- Part of Runavík municipality
('Toftir', (SELECT id FROM world_countries WHERE iso_code_2 = 'FO'), 'FO-650'), -- Part of Nes municipality (near Runavík)
('Strendur', (SELECT id FROM world_countries WHERE iso_code_2 = 'FO'), 'FO-490'), -- Sjóvar municipality seat
('Fuglafjørður', (SELECT id FROM world_countries WHERE iso_code_2 = 'FO'), 'FO-510'), -- Major town
('Eiði', (SELECT id FROM world_countries WHERE iso_code_2 = 'FO'), 'FO-470'), -- Town in the north
('Norðragøta', (SELECT id FROM world_countries WHERE iso_code_2 = 'FO'), 'FO-512'), -- Part of Eystur municipality
('Leirvík', (SELECT id FROM world_countries WHERE iso_code_2 = 'FO'), 'FO-520'), -- Part of Eystur municipality

-- Borðoy Island
('Klaksvík', (SELECT id FROM world_countries WHERE iso_code_2 = 'FO'), 'FO-700'), -- Second largest town

-- Vágar Island
('Miðvágur', (SELECT id FROM world_countries WHERE iso_code_2 = 'FO'), 'FO-370'), -- Main town in the center
('Sørvágur', (SELECT id FROM world_countries WHERE iso_code_2 = 'FO'), 'FO-380'), -- Town near the airport
('Sandavágur', (SELECT id FROM world_countries WHERE iso_code_2 = 'FO'), 'FO-360'), -- Town

-- Suðuroy Island
('Tvøroyri', (SELECT id FROM world_countries WHERE iso_code_2 = 'FO'), 'FO-800'), -- Main town in the north of Suðuroy
('Vágur', (SELECT id FROM world_countries WHERE iso_code_2 = 'FO'), 'FO-900'), -- Main town in the south of Suðuroy
('Hvalba', (SELECT id FROM world_countries WHERE iso_code_2 = 'FO'), 'FO-850'),

-- Sandoy Island
('Sandur', (SELECT id FROM world_countries WHERE iso_code_2 = 'FO'), 'FO-210'), -- Main village
('Skopun', (SELECT id FROM world_countries WHERE iso_code_2 = 'FO'), 'FO-240'),

-- Viðoy Island
('Viðareiði', (SELECT id FROM world_countries WHERE iso_code_2 = 'FO'), 'FO-750'), -- Northernmost village

-- Other Islands / Smaller Villages (Enabled)
('Syðrugøta', (SELECT id FROM world_countries WHERE iso_code_2 = 'FO'), 'FO-513'), -- Eysturoy Island (Known for G! Festival)
('Kirkja', (SELECT id FROM world_countries WHERE iso_code_2 = 'FO'), 'FO-000'), -- Fugloy Island
('Hattarvík', (SELECT id FROM world_countries WHERE iso_code_2 = 'FO'), 'FO-000'), -- Fugloy Island
('Svínoy village', (SELECT id FROM world_countries WHERE iso_code_2 = 'FO'), 'FO-000'), -- Svínoy Island
('Húsar', (SELECT id FROM world_countries WHERE iso_code_2 = 'FO'), 'FO-000'), -- Kalsoy Island
('Mikladalur', (SELECT id FROM world_countries WHERE iso_code_2 = 'FO'), 'FO-000'), -- Kalsoy Island
('Trøllanes', (SELECT id FROM world_countries WHERE iso_code_2 = 'FO'), 'FO-000'), -- Kalsoy Island
('Kunoy village', (SELECT id FROM world_countries WHERE iso_code_2 = 'FO'), 'FO-000'), -- Kunoy Island
('Haraldssund', (SELECT id FROM world_countries WHERE iso_code_2 = 'FO'), 'FO-000'), -- Kunoy Island
('Skálavík', (SELECT id FROM world_countries WHERE iso_code_2 = 'FO'), 'FO-000'), -- Sandoy Island
('Húsavík', (SELECT id FROM world_countries WHERE iso_code_2 = 'FO'), 'FO-000'), -- Sandoy Island
('Dalur', (SELECT id FROM world_countries WHERE iso_code_2 = 'FO'), 'FO-000'), -- Sandoy Island
('Skúvoy village', (SELECT id FROM world_countries WHERE iso_code_2 = 'FO'), 'FO-000'), -- Skúvoy Island
('Sandvík', (SELECT id FROM world_countries WHERE iso_code_2 = 'FO'), 'FO-000'), -- Suðuroy Island
('Fámjin', (SELECT id FROM world_countries WHERE iso_code_2 = 'FO'), 'FO-000'), -- Suðuroy Island
('Porkeri', (SELECT id FROM world_countries WHERE iso_code_2 = 'FO'), 'FO-000'), -- Suðuroy Island
('Sumba', (SELECT id FROM world_countries WHERE iso_code_2 = 'FO'), 'FO-000'), -- Suðuroy Island
('Nólsoy village', (SELECT id FROM world_countries WHERE iso_code_2 = 'FO'), 'FO-000'), -- Nólsoy Island
('Hestur village', (SELECT id FROM world_countries WHERE iso_code_2 = 'FO'), 'FO-000'), -- Hestur Island
('Koltur farm', (SELECT id FROM world_countries WHERE iso_code_2 = 'FO'), 'FO-000'), -- Koltur Island (Minimal population)
('Mykines village', (SELECT id FROM world_countries WHERE iso_code_2 = 'FO'), 'FO-000'); -- Mykines Island (Minimal population)

-- End of Faroe Islands locality list (Expanded Sample)

/*
-- ========================================
-- == Información sobre Faroe Islands ==
-- ========================================
--
-- Descripción General:
-- Las Islas Feroe (Faroe Islands) son un archipiélago autónomo que forma parte del
-- Reino de Dinamarca. Están situadas en el Océano Atlántico Norte, aproximadamente
-- a medio camino entre Noruega, Islandia y Escocia. El archipiélago consta de 18
-- islas volcánicas principales, caracterizadas por costas escarpadas, acantilados,
-- fiordos y un paisaje verde y sin árboles.
--
-- Ciudades Principales (Pueblos):
-- * Tórshavn: La capital y ciudad más grande, ubicada en la isla de Streymoy. Es
--   una de las capitales más pequeñas del mundo, pero el centro administrativo,
--   económico y cultural de las islas.
-- * Klaksvík: La segunda ciudad más grande, principal centro pesquero, ubicada en
--   la isla de Borðoy (Islas del Norte).
-- * Runavík/Saltangará/Toftir: Una conurbación importante en la isla de Eysturoy.
-- * Tvøroyri y Vágur: Principales pueblos en la isla sureña de Suðuroy.
-- * Miðvágur y Sørvágur: Principales pueblos en la isla de Vágar, donde se
--   encuentra el aeropuerto.
-- * La lista incluye también los principales pueblos de la mayoría de las islas habitadas.
--
-- Un Poco de Historia:
-- Las islas fueron posiblemente visitadas por monjes irlandeses antes de ser
-- colonizadas por vikingos noruegos alrededor del siglo IX. Formaron parte de
-- Noruega y luego de la unión Dinamarca-Noruega. Cuando Noruega fue cedida a
-- Suecia en 1814, las Feroe permanecieron bajo la corona danesa. Durante la
-- Segunda Guerra Mundial, fueron ocupadas pacíficamente por el Reino Unido para
-- evitar una invasión alemana. Obtuvieron el autogobierno (Home Rule) dentro del
-- Reino de Dinamarca en 1948. Tienen su propio parlamento (Løgting) y gobierno,
-- y no forman parte de la Unión Europea (a diferencia de Dinamarca metropolitana).
--
-- Datos Adicionales:
-- El feroés (derivado del nórdico antiguo) y el danés son los idiomas oficiales.
-- La pesca y la acuicultura son las industrias dominantes. La cría de ovejas es
-- tradicional (se dice que hay más ovejas que personas). Las islas son famosas
-- por sus paisajes dramáticos, acantilados marinos y aves marinas (como los frailecillos).
--
*/
