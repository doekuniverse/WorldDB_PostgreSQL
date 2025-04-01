-- SQL Script to insert the main wards (quartiers) for Monaco (MC).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Monaco (MC).

-- NOTE: Monaco is a very small city-state divided into wards (quartiers). This list includes the main ones,
-- providing essentially complete coverage of the administrative/populated areas.
-- Monaco uses the French postal system; 98000 is the general code.

-- Inserting wards for Monaco (MC) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
('Monte Carlo', (SELECT id FROM world_countries WHERE iso_code_2 = 'MC'), '98000'), -- Most famous ward (Casino, hotels)
('La Condamine', (SELECT id FROM world_countries WHERE iso_code_2 = 'MC'), '98000'), -- Port area, market
('Monaco-Ville', (SELECT id FROM world_countries WHERE iso_code_2 = 'MC'), '98000'), -- Old town on "The Rock", Prince's Palace
('Fontvieille', (SELECT id FROM world_countries WHERE iso_code_2 = 'MC'), '98000'), -- Reclaimed land, stadium, port
('Moneghetti', (SELECT id FROM world_countries WHERE iso_code_2 = 'MC'), '98000'), -- Residential area
('Larvotto', (SELECT id FROM world_countries WHERE iso_code_2 = 'MC'), '98000'), -- Beach area
('La Rousse/Saint Roman', (SELECT id FROM world_countries WHERE iso_code_2 = 'MC'), '98000'), -- Northeastern area
('Saint Michel', (SELECT id FROM world_countries WHERE iso_code_2 = 'MC'), '98000'), -- Central residential area
('Jardin Exotique', (SELECT id FROM world_countries WHERE iso_code_2 = 'MC'), '98000'), -- Northwestern area (Exotic Garden)
('La Colle', (SELECT id FROM world_countries WHERE iso_code_2 = 'MC'), '98000'); -- Western area

-- Note: There might be further subdivisions, but these represent the main recognized wards/areas.

-- End of Monaco ward list (Main Wards)

/*
-- ====================================
-- == Información sobre Monaco ==
-- ====================================
--
-- Descripción General:
-- El Principado de Mónaco es un microestado soberano ubicado en la Riviera Francesa,
-- en Europa Occidental. Limita con Francia por tres lados y con el Mar Mediterráneo
-- por el sur. Es el segundo país independiente más pequeño del mundo (después de la
-- Ciudad del Vaticano) y uno de los más densamente poblados. Es una monarquía
-- constitucional gobernada por la Casa de Grimaldi. Es famoso por ser un destino
-- de lujo, por su casino, el Gran Premio de Fórmula 1 y su estatus como paraíso fiscal.
--
-- Ciudades Principales (Barrios/Quartiers):
-- Mónaco funciona como una única ciudad-estado. Se divide administrativamente en
-- varios barrios (quartiers):
-- * Monte Carlo: El barrio más famoso, conocido por su casino, hoteles de lujo y
--   el circuito de F1.
-- * Monaco-Ville: El casco antiguo, ubicado sobre "La Roca" (Le Rocher), donde se
--   encuentran el Palacio del Príncipe y la Catedral.
-- * La Condamine: El área del puerto principal (Port Hercules) y el mercado.
-- * Fontvieille: Un distrito construido sobre tierra ganada al mar, con un puerto
--   deportivo, estadio y helipuerto.
-- * Larvotto: La zona de playa.
-- * Otros barrios incluyen Moneghetti, Saint Roman, Saint Michel, Jardin Exotique y La Colle.
--
-- Un Poco de Historia:
-- La Roca de Mónaco fue una fortaleza desde la antigüedad. En 1297, François
-- Grimaldi (disfrazado de monje) capturó la fortaleza, iniciando el dominio de la
-- dinastía Grimaldi sobre el área, que ha perdurado (con interrupciones) hasta hoy.
-- Mónaco estuvo bajo la protección de diversas potencias (Génova, España, Francia,
-- Cerdeña) a lo largo de los siglos. Su independencia fue reafirmada en el Tratado
-- Franco-Monegasco de 1861 (aunque cedió gran parte de su territorio circundante
-- a Francia). El desarrollo del casino de Monte Carlo a finales del siglo XIX y la
-- abolición del impuesto sobre la renta para los residentes atrajeron riqueza y
-- turismo. El Príncipe Rainiero III y su esposa, la actriz Grace Kelly, aumentaron
-- la fama del principado en el siglo XX.
--
-- Datos Adicionales:
-- El francés es el idioma oficial, pero también se hablan monegasco (dialecto
-- ligur), italiano e inglés. Utiliza el euro como moneda (aunque no es miembro de
-- la UE, tiene acuerdos especiales). Es conocido por su alto nivel de vida, su
-- seguridad y por atraer a residentes adinerados debido a su política fiscal. Alberga
-- el famoso Museo Oceanográfico.
--
*/
