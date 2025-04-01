-- SQL Script to insert a representative sample of significant inhabited settlements for Montserrat (MS).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Montserrat (MS).

-- NOTE: Montserrat's southern half, including the former capital Plymouth, is an exclusion zone due to volcanic activity.
-- This list includes the main inhabited settlements in the northern safe zone. Listing every single locality is IMPOSSIBLE.
-- Postal codes are not used; using '0000' as a placeholder.

-- Inserting settlements for Montserrat (MS) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
('Brades (Brades Estate)', (SELECT id FROM world_countries WHERE iso_code_2 = 'MS'), '0000'), -- De facto capital / administrative center
('Little Bay', (SELECT id FROM world_countries WHERE iso_code_2 = 'MS'), '0000'), -- Area planned for new capital development, near Brades
('Davy Hill', (SELECT id FROM world_countries WHERE iso_code_2 = 'MS'), '0000'), -- Settlement in the north
('Gerald''s', (SELECT id FROM world_countries WHERE iso_code_2 = 'MS'), '0000'), -- Area near the airport
('Saint John''s', (SELECT id FROM world_countries WHERE iso_code_2 = 'MS'), '0000'), -- Village/Parish area
('Saint Peter''s', (SELECT id FROM world_countries WHERE iso_code_2 = 'MS'), '0000'), -- Village/Parish area
('Lookout', (SELECT id FROM world_countries WHERE iso_code_2 = 'MS'), '0000'), -- Village
('Salem', (SELECT id FROM world_countries WHERE iso_code_2 = 'MS'), '0000'), -- Village
('Olveston', (SELECT id FROM world_countries WHERE iso_code_2 = 'MS'), '0000'); -- Village (associated with George Martin's AIR Studios)

-- Plymouth, the de jure capital, is abandoned and within the exclusion zone.

-- End of Montserrat locality list (Representative Sample of Inhabited Areas)

/*
-- ====================================
-- == Información sobre Montserrat ==
-- ====================================
--
-- Descripción General:
-- Montserrat es un Territorio Británico de Ultramar ubicado en el Mar Caribe, parte
-- de las Islas de Sotavento en las Antillas Menores. Es una isla volcánica montañosa.
-- Su historia reciente ha estado dominada por las erupciones del volcán Soufrière Hills,
-- que comenzaron en 1995 y continúan con actividad intermitente. Estas erupciones
-- destruyeron la capital, Plymouth, y gran parte de la mitad sur de la isla, que
-- ahora es una zona de exclusión inhabitable, y provocaron la emigración de la
-- mayoría de la población.
--
-- Ciudades Principales (Asentamientos Habitados):
-- * Brades: Se considera la capital de facto y centro administrativo, ubicada en la
--   parte noroeste de la isla (la "zona segura"). Cerca se encuentra Little Bay,
--   donde se está desarrollando un nuevo pueblo y puerto.
-- * Saint John's, Saint Peter's, Gerald's, Lookout, Salem, Olveston: Son los
--   principales pueblos y áreas habitadas restantes en la parte norte de la isla.
-- * Plymouth: La capital oficial (de jure) está abandonada y enterrada bajo ceniza
--   volcánica dentro de la zona de exclusión.
--
-- Un Poco de Historia:
-- Avistada por Colón en 1493 (nombrada por la montaña de Montserrat en España). Fue
-- colonizada por ingleses e irlandeses en el siglo XVII. Desarrolló una economía de
-- plantación (azúcar, algodón) con esclavos africanos. Permaneció como colonia
-- británica. La erupción del volcán Soufrière Hills a partir de 1995 cambió
-- drásticamente la isla, destruyendo la capital y la infraestructura del sur, y
-- reduciendo la población de unos 11,000 a menos de 5,000 en la actualidad. Los
-- esfuerzos se centran en la reconstrucción y el desarrollo de la zona norte.
--
-- Datos Adicionales:
-- El inglés es el idioma oficial. Montserrat es a veces llamada la "Isla Esmeralda
-- del Caribe" por su herencia irlandesa y su anterior verdor. El Observatorio Vulcanológico
-- de Montserrat (MVO) monitorea continuamente el volcán. El turismo (especialmente
-- relacionado con la naturaleza y la observación del volcán desde zonas seguras) y
-- la ayuda británica son importantes para la economía actual.
--
*/
