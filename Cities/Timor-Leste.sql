-- SQL Script to insert a representative sample of significant cities and towns for Timor-Leste (TL).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Timor-Leste (TL).

-- NOTE: Timor-Leste is divided into municipalities, which are further divided into administrative posts and 'sucos' (villages/subdistricts).
-- Listing every single 'suco' or settlement is impractical for this format. This list focuses on the national capital
-- and the capitals of the other municipalities.
-- Timor-Leste does not currently use a postal code system; using '0000' as a placeholder.

-- Inserting cities for Timor-Leste (TL) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- National Capital & Municipal Capitals
('Dili', (SELECT id FROM world_countries WHERE iso_code_2 = 'TL'), '0000'), -- National Capital (Dili Municipality)
('Baucau', (SELECT id FROM world_countries WHERE iso_code_2 = 'TL'), '0000'), -- Baucau Municipality Capital
('Maliana', (SELECT id FROM world_countries WHERE iso_code_2 = 'TL'), '0000'), -- Bobonaro Municipality Capital
('Suai', (SELECT id FROM world_countries WHERE iso_code_2 = 'TL'), '0000'), -- Cova Lima Municipality Capital
('Same', (SELECT id FROM world_countries WHERE iso_code_2 = 'TL'), '0000'), -- Manufahi Municipality Capital
('Gleno', (SELECT id FROM world_countries WHERE iso_code_2 = 'TL'), '0000'), -- Ermera Municipality Capital
('Viqueque', (SELECT id FROM world_countries WHERE iso_code_2 = 'TL'), '0000'), -- Viqueque Municipality Capital
('Liquiçá', (SELECT id FROM world_countries WHERE iso_code_2 = 'TL'), '0000'), -- Liquiçá Municipality Capital
('Ainaro', (SELECT id FROM world_countries WHERE iso_code_2 = 'TL'), '0000'), -- Ainaro Municipality Capital
('Manatuto', (SELECT id FROM world_countries WHERE iso_code_2 = 'TL'), '0000'), -- Manatuto Municipality Capital
('Pante Macassar', (SELECT id FROM world_countries WHERE iso_code_2 = 'TL'), '0000'), -- Oecusse Special Administrative Region Capital (formerly Oecussi)
('Lospalos', (SELECT id FROM world_countries WHERE iso_code_2 = 'TL'), '0000'), -- Lautém Municipality Capital
('Aileu', (SELECT id FROM world_countries WHERE iso_code_2 = 'TL'), '0000'); -- Aileu Municipality Capital

-- Other potentially significant towns (less commonly listed separately from municipal capitals)
-- ('Metinaro', (SELECT id FROM world_countries WHERE iso_code_2 = 'TL'), '0000'), -- Town near Dili
-- ('Maubisse', (SELECT id FROM world_countries WHERE iso_code_2 = 'TL'), '0000'); -- Town in Ainaro Municipality


-- End of Timor-Leste city list (Representative Sample)

/*
-- =============================================
-- ==    Información sobre Timor-Leste       ==
-- =============================================
--
-- Descripción General:
-- Timor-Leste (Timor Oriental), oficialmente la República Democrática de Timor-Leste,
-- es un país insular ubicado en el Sudeste Asiático Marítimo. Ocupa la mitad oriental
-- de la isla de Timor, el exclave de Oecusse en la parte occidental de la isla, y las
-- islas menores de Atauro y Jaco. Limita con Indonesia al oeste (en la isla de Timor)
-- y comparte fronteras marítimas con Indonesia y Australia. Es uno de los países más
-- jóvenes del mundo, habiendo obtenido la independencia total en 2002. Su geografía
-- es montañosa.
--
-- Ciudades Principales:
-- * Dili: La capital, ciudad más grande y principal puerto y centro comercial del país,
--   ubicada en la costa norte de la isla de Timor.
-- * Baucau: La segunda ciudad más grande, ubicada en la costa norte, al este de Dili.
-- * Maliana, Suai, Same, Gleno, Viqueque, Liquiçá, Ainaro, Manatuto, Pante Macassar,
--   Lospalos, Aileu: Capitales de los demás municipios y de la Región Administrativa
--   Especial de Oecusse.
--
-- Un Poco de Historia:
-- Habitada por pueblos austronesios y papúes. Fue colonizada por Portugal en el
-- siglo XVI y permaneció como colonia portuguesa (Timor Portugués) durante siglos,
-- separada del Timor Neerlandés (actual parte de Indonesia). Durante la Segunda
-- Guerra Mundial, fue ocupada por Japón. En 1975, tras la Revolución de los Claveles
-- en Portugal, Timor-Leste declaró unilateralmente su independencia. Nueve días
-- después, fue invadido y ocupado por Indonesia, que lo anexó como su provincia
-- número 27. Siguió un largo y brutal conflicto por la independencia, liderado por
-- el Fretilin. En 1999, tras un referéndum auspiciado por la ONU en el que la
-- población votó masivamente por la independencia, fuerzas pro-indonesias desataron
-- una ola de violencia y destrucción. La ONU intervino con una fuerza de paz (INTERFET)
-- y estableció una administración de transición (UNTAET). Timor-Leste alcanzó la
-- independencia total el 20 de mayo de 2002.
--
-- Datos Adicionales:
-- Los idiomas oficiales son el tetun y el portugués. El indonesio y el inglés son
-- considerados idiomas de trabajo. Se hablan numerosas lenguas austronesias y papúes
-- locales. La gran mayoría de la población es católica romana, un legado de la
-- colonización portuguesa y un factor de identidad durante la ocupación indonesia.
-- La economía está en desarrollo y depende en gran medida de los ingresos del petróleo
-- y el gas offshore (aunque las reservas están disminuyendo), la agricultura de
-- subsistencia (café, arroz) y la ayuda internacional. El país enfrenta desafíos
-- significativos en términos de desarrollo económico, infraestructura y pobreza.
-- Es miembro de la Comunidad de Países de Lengua Portuguesa (CPLP) y aspira a unirse
-- a la ASEAN.
--
*/
