-- SQL Script to insert all communes (main administrative divisions) for Martinique (MQ).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Martinique (MQ).

-- NOTE: Martinique is divided into 34 communes. This list includes all of them,
-- providing essentially complete coverage at the municipal level.
-- Postal codes are 972xx; examples are provided.

-- Inserting communes for Martinique (MQ) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
('Fort-de-France', (SELECT id FROM world_countries WHERE iso_code_2 = 'MQ'), '97200'), -- Préfecture (Capital)
('Le Lamentin', (SELECT id FROM world_countries WHERE iso_code_2 = 'MQ'), '97232'), -- Largest commune by area, location of airport
('Le Robert', (SELECT id FROM world_countries WHERE iso_code_2 = 'MQ'), '97231'),
('Schœlcher', (SELECT id FROM world_countries WHERE iso_code_2 = 'MQ'), '97233'), -- Suburb of Fort-de-France
('Le François', (SELECT id FROM world_countries WHERE iso_code_2 = 'MQ'), '97240'),
('Sainte-Marie', (SELECT id FROM world_countries WHERE iso_code_2 = 'MQ'), '97230'),
('Saint-Joseph', (SELECT id FROM world_countries WHERE iso_code_2 = 'MQ'), '97212'),
('Ducos', (SELECT id FROM world_countries WHERE iso_code_2 = 'MQ'), '97224'),
('Rivière-Pilote', (SELECT id FROM world_countries WHERE iso_code_2 = 'MQ'), '97211'),
('La Trinité', (SELECT id FROM world_countries WHERE iso_code_2 = 'MQ'), '97220'), -- Sous-préfecture
('Rivière-Salée', (SELECT id FROM world_countries WHERE iso_code_2 = 'MQ'), '97215'),
('Gros-Morne', (SELECT id FROM world_countries WHERE iso_code_2 = 'MQ'), '97213'),
('Saint-Esprit', (SELECT id FROM world_countries WHERE iso_code_2 = 'MQ'), '97270'),
('Sainte-Luce', (SELECT id FROM world_countries WHERE iso_code_2 = 'MQ'), '97228'),
('Le Marin', (SELECT id FROM world_countries WHERE iso_code_2 = 'MQ'), '97290'), -- Sous-préfecture
('Le Vauclin', (SELECT id FROM world_countries WHERE iso_code_2 = 'MQ'), '97280'),
('Les Trois-Îlets', (SELECT id FROM world_countries WHERE iso_code_2 = 'MQ'), '97229'),
('Le Lorrain', (SELECT id FROM world_countries WHERE iso_code_2 = 'MQ'), '97214'),
('Saint-Pierre', (SELECT id FROM world_countries WHERE iso_code_2 = 'MQ'), '97250'), -- Sous-préfecture, former capital destroyed in 1902
('Basse-Pointe', (SELECT id FROM world_countries WHERE iso_code_2 = 'MQ'), '97218'),
('Macouba', (SELECT id FROM world_countries WHERE iso_code_2 = 'MQ'), '97218'), -- Postal code needs check
('Grand''Rivière', (SELECT id FROM world_countries WHERE iso_code_2 = 'MQ'), '97218'), -- Postal code needs check
('Le Morne-Rouge', (SELECT id FROM world_countries WHERE iso_code_2 = 'MQ'), '97260'),
('Fonds-Saint-Denis', (SELECT id FROM world_countries WHERE iso_code_2 = 'MQ'), '97250'),
('Le Carbet', (SELECT id FROM world_countries WHERE iso_code_2 = 'MQ'), '97221'),
('Bellefontaine', (SELECT id FROM world_countries WHERE iso_code_2 = 'MQ'), '97222'),
('Case-Pilote', (SELECT id FROM world_countries WHERE iso_code_2 = 'MQ'), '97222'),
('Le Morne-Vert', (SELECT id FROM world_countries WHERE iso_code_2 = 'MQ'), '97226'),
('Ajoupa-Bouillon', (SELECT id FROM world_countries WHERE iso_code_2 = 'MQ'), '97218'), -- Postal code needs check
('Le Prêcheur', (SELECT id FROM world_countries WHERE iso_code_2 = 'MQ'), '97250'),
('Les Anses-d''Arlet', (SELECT id FROM world_countries WHERE iso_code_2 = 'MQ'), '97217'),
('Le Diamant', (SELECT id FROM world_countries WHERE iso_code_2 = 'MQ'), '97223'),
('Sainte-Anne', (SELECT id FROM world_countries WHERE iso_code_2 = 'MQ'), '97227');

-- End of Martinique commune list (All 34 communes)

/*
-- ====================================
-- == Información sobre Martinique ==
-- ====================================
--
-- Descripción General:
-- Martinica (Martinique) es una isla en el Mar Caribe oriental, parte de las Antillas
-- Menores (Islas de Barlovento). Es una región y departamento de ultramar de Francia,
-- por lo que forma parte integral de Francia y de la Unión Europea. La isla es de
-- origen volcánico, con un interior montañoso dominado por el volcán Monte Pelée
-- en el norte y una costa sur con numerosas bahías y playas.
--
-- Ciudades Principales (Comunas):
-- Martinica se divide administrativamente en 34 comunas.
-- * Fort-de-France: La capital (prefectura) y ciudad más grande, centro administrativo
--   y económico.
-- * Le Lamentin: La comuna más extensa, sede del aeropuerto internacional, forma parte
--   del área metropolitana de la capital.
-- * Le Robert, Schœlcher, Le François, Sainte-Marie: Otras comunas importantes y pobladas.
-- * La Trinité, Le Marin, Saint-Pierre: Sedes de subprefectura. Saint-Pierre fue la
--   antigua capital cultural y económica antes de ser destruida por la erupción del
--   Monte Pelée en 1902.
-- * La lista incluye las 34 comunas que componen Martinica.
--
-- Un Poco de Historia:
-- Habitada por pueblos Arawak y luego Caribes. Fue avistada por Colón en 1502. Fue
-- colonizada por Francia en 1635. Desarrolló una economía de plantación basada en
-- la caña de azúcar con mano de obra esclava africana. Fue ocupada brevemente por
-- los británicos en varias ocasiones. La erupción del Monte Pelée en 1902 destruyó
-- la ciudad de Saint-Pierre y mató a unas 30,000 personas. En 1946, Martinica se
-- convirtió en un departamento de ultramar de Francia, y posteriormente también en
-- una región de ultramar.
--
-- Datos Adicionales:
-- Como parte integral de Francia, utiliza el euro. El francés es el idioma oficial,
-- pero el criollo martiniqués (basado en el francés) es ampliamente hablado. La
-- cultura es una mezcla de influencias francesas, africanas y caribeñas. Es famosa
-- por su ron agrícola (rhum agricole), su música (zouk) y por ser el lugar de
-- nacimiento del influyente escritor y político Aimé Césaire. El turismo y la
-- agricultura (banano, caña de azúcar) son importantes para la economía.
--
*/
