-- SQL Script to insert a representative sample of significant cities and towns for Namibia (NA).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Namibia (NA).

-- NOTE: Namibia is vast and sparsely populated. This list includes the capital, major towns (regional capitals),
-- and significant settlements. Listing every single locality is IMPOSSIBLE.
-- Postal codes (5 digits) usage is limited; examples or '00000' placeholder are provided.

-- Inserting cities for Namibia (NA) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Major Towns / Regional Capitals
('Windhoek', (SELECT id FROM world_countries WHERE iso_code_2 = 'NA'), '10001'), -- National Capital (Khomas Region)
('Walvis Bay', (SELECT id FROM world_countries WHERE iso_code_2 = 'NA'), '9000'), -- Erongo Region (Major port city)
('Swakopmund', (SELECT id FROM world_countries WHERE iso_code_2 = 'NA'), '9000'), -- Erongo Region (Coastal resort town)
('Rundu', (SELECT id FROM world_countries WHERE iso_code_2 = 'NA'), '00000'), -- Kavango East Region Capital
('Oshakati', (SELECT id FROM world_countries WHERE iso_code_2 = 'NA'), '00000'), -- Oshana Region Capital
('Katima Mulilo', (SELECT id FROM world_countries WHERE iso_code_2 = 'NA'), '00000'), -- Zambezi Region Capital
('Otjiwarongo', (SELECT id FROM world_countries WHERE iso_code_2 = 'NA'), '12001'), -- Otjozondjupa Region Capital
('Keetmanshoop', (SELECT id FROM world_countries WHERE iso_code_2 = 'NA'), '9000'), -- ǁKaras Region Capital
('Gobabis', (SELECT id FROM world_countries WHERE iso_code_2 = 'NA'), '11001'), -- Omaheke Region Capital
('Tsumeb', (SELECT id FROM world_countries WHERE iso_code_2 = 'NA'), '00000'), -- Oshikoto Region (Mining town)
('Grootfontein', (SELECT id FROM world_countries WHERE iso_code_2 = 'NA'), '00000'), -- Otjozondjupa Region
('Lüderitz', (SELECT id FROM world_countries WHERE iso_code_2 = 'NA'), '00000'), -- ǁKaras Region (Coastal town)
('Mariental', (SELECT id FROM world_countries WHERE iso_code_2 = 'NA'), '9000'), -- Hardap Region Capital
('Outjo', (SELECT id FROM world_countries WHERE iso_code_2 = 'NA'), '9000'), -- Kunene Region (Gateway to Etosha)
('Okahandja', (SELECT id FROM world_countries WHERE iso_code_2 = 'NA'), '00000'), -- Otjozondjupa Region
('Ondangwa', (SELECT id FROM world_countries WHERE iso_code_2 = 'NA'), '00000'), -- Oshana Region (Major town in the North)
('Ongwediva', (SELECT id FROM world_countries WHERE iso_code_2 = 'NA'), '00000'), -- Oshana Region (Near Oshakati)
('Helao Nafidi', (SELECT id FROM world_countries WHERE iso_code_2 = 'NA'), '00000'), -- Ohangwena Region (Border town complex)
('Rehoboth', (SELECT id FROM world_countries WHERE iso_code_2 = 'NA'), '00000'), -- Hardap Region
('Opuwo', (SELECT id FROM world_countries WHERE iso_code_2 = 'NA'), '9000'), -- Kunene Region Capital
('Eenhana', (SELECT id FROM world_countries WHERE iso_code_2 = 'NA'), '00000'), -- Ohangwena Region Capital
('Outapi (Ombalantu)', (SELECT id FROM world_countries WHERE iso_code_2 = 'NA'), '9000'), -- Omusati Region Capital
('Omaruru', (SELECT id FROM world_countries WHERE iso_code_2 = 'NA'), '00000'), -- Erongo Region
('Karibib', (SELECT id FROM world_countries WHERE iso_code_2 = 'NA'), '00000'), -- Erongo Region
('Usakos', (SELECT id FROM world_countries WHERE iso_code_2 = 'NA'), '00000'), -- Erongo Region
('Okakarara', (SELECT id FROM world_countries WHERE iso_code_2 = 'NA'), '00000'), -- Otjozondjupa Region
('Oranjemund', (SELECT id FROM world_countries WHERE iso_code_2 = 'NA'), '00000'); -- ǁKaras Region (Diamond mining town)

-- End of Namibia city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Namibia ==
-- ====================================
--
-- Descripción General:
-- Namibia es un país ubicado en el suroeste de África. Limita con Angola y Zambia
-- al norte, Botsuana al este, Sudáfrica al sur y sureste, y el Océano Atlántico
-- al oeste. Es uno de los países menos densamente poblados del mundo, con gran parte
-- de su territorio cubierto por los desiertos del Namib (considerado el desierto
-- más antiguo del mundo) y del Kalahari. Su paisaje incluye la árida costa atlántica
-- (Costa de los Esqueletos), una meseta central y la sabana del Kalahari.
--
-- Ciudades Principales:
-- * Windhoek: La capital y ciudad más grande, ubicada en la meseta central. Es el
--   centro político, económico y cultural.
-- * Walvis Bay: Principal puerto marítimo y segunda ciudad más poblada, ubicada en
--   la costa atlántica (fue un enclave sudafricano hasta 1994).
-- * Swakopmund: Ciudad costera turística al norte de Walvis Bay, conocida por su
--   arquitectura colonial alemana.
-- * Rundu y Oshakati: Principales centros urbanos en el norte densamente poblado,
--   cerca de la frontera con Angola.
-- * Katima Mulilo: Principal ciudad en la estratégica Franja de Caprivi (Región de Zambezi).
-- * Otjiwarongo, Keetmanshoop, Gobabis: Importantes centros regionales en el centro,
--   sur y este, respectivamente.
-- * La lista incluye también las capitales regionales y otras ciudades significativas.
--
-- Un Poco de Historia:
-- Habitada por pueblos San, Damara y Nama. Posteriormente llegaron pueblos Bantúes
-- como los Ovambo y Herero. Fue explorada por portugueses y neerlandeses, pero en
-- gran parte ignorada por las potencias europeas hasta el siglo XIX. En 1884, se
-- convirtió en una colonia alemana (África del Sudoeste Alemana). Alemania cometió
-- un genocidio contra los pueblos Herero y Namaqua a principios del siglo XX. Durante
-- la Primera Guerra Mundial, fue ocupada por Sudáfrica. Después de la guerra, la
-- Liga de Naciones otorgó a Sudáfrica un mandato sobre el territorio. Sudáfrica
-- administró el territorio como si fuera una quinta provincia, aplicando sus
-- políticas de apartheid. Surgió un movimiento de independencia liderado por la SWAPO
-- (Organización del Pueblo de África del Sudoeste), que libró una larga guerra de
-- guerrillas. Namibia finalmente obtuvo la independencia de Sudáfrica en 1990, tras
-- un acuerdo mediado por la ONU.
--
-- Datos Adicionales:
-- El inglés es el idioma oficial, pero también se hablan ampliamente el afrikáans,
-- el alemán y numerosas lenguas africanas (Oshiwambo, Herero, Nama/Damara, etc.).
-- Namibia tiene importantes recursos minerales (diamantes, uranio). El Parque
-- Nacional Etosha es una de las principales reservas de vida silvestre de África.
-- El Desierto del Namib, con sus altas dunas rojas (Sossusvlei) y la Costa de los
-- Esqueletos, es un paisaje icónico.
--
*/
