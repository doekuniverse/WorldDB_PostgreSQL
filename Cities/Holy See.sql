-- SQL Script to insert the locality for the Holy See (Vatican City State) (VA).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Holy See (VA).

-- NOTE: The Holy See / Vatican City State is the smallest independent state in the world,
-- functioning as a single city-state entity within Rome, Italy. This list includes only that entity.
-- It uses the Italian postal code system (00120).

-- Inserting the main entity for Holy See (VA) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
('Vatican City (Città del Vaticano)', (SELECT id FROM world_countries WHERE iso_code_2 = 'VA'), '00120'); -- The entire city-state

-- End of Holy See locality list (Single City-State)

/*
-- ==================================================================
-- == Información sobre Holy See (Vatican City State) ==
-- ==================================================================
--
-- Descripción General:
-- La Santa Sede (Holy See) es la jurisdicción episcopal del Papa en Roma, la sede
-- central de la Iglesia Católica Romana a nivel mundial. El Estado de la Ciudad
-- del Vaticano (Vatican City State) es el territorio soberano independiente sobre
-- el cual la Santa Sede ejerce soberanía temporal. Es el estado independiente más
-- pequeño del mundo tanto por área como por población, un enclave amurallado dentro
-- de la ciudad de Roma, Italia. Es el centro espiritual y administrativo de la
-- Iglesia Católica.
--
-- Ciudades Principales (Localidades):
-- El Estado de la Ciudad del Vaticano es en sí mismo una ciudad-estado. No tiene
-- otras ciudades o pueblos. La entrada 'Vatican City' representa todo el territorio soberano.
-- Incluye la Basílica de San Pedro, la Plaza de San Pedro, los Museos Vaticanos
-- (con la Capilla Sixtina), los Jardines Vaticanos y los edificios administrativos
-- de la Santa Sede.
--
-- Un Poco de Historia:
-- La autoridad de la Santa Sede se remonta a los primeros tiempos del cristianismo
-- y al obispo de Roma (el Papa). Durante siglos, los Papas gobernaron los Estados
-- Pontificios, un territorio considerable en el centro de Italia. Estos territorios
-- se perdieron durante la unificación italiana en el siglo XIX, y el Papa se convirtió
-- en el "prisionero en el Vaticano". El Estado de la Ciudad del Vaticano fue creado
-- como entidad soberana independiente en 1929 mediante los Pactos de Letrán entre
-- la Santa Sede e Italia, resolviendo la "Cuestión Romana".
--
-- Datos Adicionales:
-- El jefe de estado es el Papa. Los idiomas oficiales de la Santa Sede son el latín
-- (oficial) y el italiano (principal lengua de trabajo). El Vaticano tiene su propio
-- sistema telefónico, oficina de correos, estación de radio, observatorio astronómico,
-- y una pequeña fuerza militar (la Guardia Suiza). Es Patrimonio de la Humanidad por
-- la UNESCO. Atrae a millones de peregrinos y turistas cada año.
--
*/
