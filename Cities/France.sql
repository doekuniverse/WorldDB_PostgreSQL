-- SQL Script to insert a representative sample of significant cities and communes for Metropolitan France (FR).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains France (FR).

-- NOTE: France has over 34,000 communes. This list includes the capital, regional/departmental capitals,
-- and a broad sample of major cities and significant towns. Listing every single locality is IMPOSSIBLE.
-- Postal codes are 5 digits; examples or '00000' placeholder are provided.

-- Inserting cities for France (FR) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Major Cities / Regional & Departmental Capitals (Préfectures)
('Paris', (SELECT id FROM world_countries WHERE iso_code_2 = 'FR'), '75001'), -- National Capital (Example PC for 1st Arr.)
('Marseille', (SELECT id FROM world_countries WHERE iso_code_2 = 'FR'), '13001'), -- Bouches-du-Rhône Prefecture, PACA Region Capital
('Lyon', (SELECT id FROM world_countries WHERE iso_code_2 = 'FR'), '69001'), -- Rhône Prefecture, Auvergne-Rhône-Alpes Region Capital
('Toulouse', (SELECT id FROM world_countries WHERE iso_code_2 = 'FR'), '31000'), -- Haute-Garonne Prefecture, Occitanie Region Capital
('Nice', (SELECT id FROM world_countries WHERE iso_code_2 = 'FR'), '06000'), -- Alpes-Maritimes Prefecture
('Nantes', (SELECT id FROM world_countries WHERE iso_code_2 = 'FR'), '44000'), -- Loire-Atlantique Prefecture, Pays de la Loire Region Capital
('Strasbourg', (SELECT id FROM world_countries WHERE iso_code_2 = 'FR'), '67000'), -- Bas-Rhin Prefecture, Grand Est Region Capital, Seat of European Parliament
('Montpellier', (SELECT id FROM world_countries WHERE iso_code_2 = 'FR'), '34000'), -- Hérault Prefecture
('Bordeaux', (SELECT id FROM world_countries WHERE iso_code_2 = 'FR'), '33000'), -- Gironde Prefecture, Nouvelle-Aquitaine Region Capital
('Lille', (SELECT id FROM world_countries WHERE iso_code_2 = 'FR'), '59000'), -- Nord Prefecture, Hauts-de-France Region Capital
('Rennes', (SELECT id FROM world_countries WHERE iso_code_2 = 'FR'), '35000'), -- Ille-et-Vilaine Prefecture, Brittany Region Capital
('Reims', (SELECT id FROM world_countries WHERE iso_code_2 = 'FR'), '51100'), -- Marne (Major city)
('Le Havre', (SELECT id FROM world_countries WHERE iso_code_2 = 'FR'), '76600'), -- Seine-Maritime (Major port city)
('Saint-Étienne', (SELECT id FROM world_countries WHERE iso_code_2 = 'FR'), '42000'), -- Loire Prefecture
('Toulon', (SELECT id FROM world_countries WHERE iso_code_2 = 'FR'), '83000'), -- Var Prefecture (Major naval base)
('Grenoble', (SELECT id FROM world_countries WHERE iso_code_2 = 'FR'), '38000'), -- Isère Prefecture
('Dijon', (SELECT id FROM world_countries WHERE iso_code_2 = 'FR'), '21000'), -- Côte-d'Or Prefecture, Bourgogne-Franche-Comté Region Capital
('Nîmes', (SELECT id FROM world_countries WHERE iso_code_2 = 'FR'), '30000'), -- Gard Prefecture
('Angers', (SELECT id FROM world_countries WHERE iso_code_2 = 'FR'), '49000'), -- Maine-et-Loire Prefecture
('Villeurbanne', (SELECT id FROM world_countries WHERE iso_code_2 = 'FR'), '69100'), -- Rhône (Major suburb of Lyon)
('Le Mans', (SELECT id FROM world_countries WHERE iso_code_2 = 'FR'), '72000'), -- Sarthe Prefecture
('Aix-en-Provence', (SELECT id FROM world_countries WHERE iso_code_2 = 'FR'), '13100'), -- Bouches-du-Rhône
('Brest', (SELECT id FROM world_countries WHERE iso_code_2 = 'FR'), '29200'), -- Finistère (Major naval base)
('Limoges', (SELECT id FROM world_countries WHERE iso_code_2 = 'FR'), '87000'), -- Haute-Vienne Prefecture
('Clermont-Ferrand', (SELECT id FROM world_countries WHERE iso_code_2 = 'FR'), '63000'), -- Puy-de-Dôme Prefecture
('Amiens', (SELECT id FROM world_countries WHERE iso_code_2 = 'FR'), '80000'), -- Somme Prefecture
('Tours', (SELECT id FROM world_countries WHERE iso_code_2 = 'FR'), '37000'), -- Indre-et-Loire Prefecture
('Metz', (SELECT id FROM world_countries WHERE iso_code_2 = 'FR'), '57000'), -- Moselle Prefecture
('Besançon', (SELECT id FROM world_countries WHERE iso_code_2 = 'FR'), '25000'), -- Doubs Prefecture
('Perpignan', (SELECT id FROM world_countries WHERE iso_code_2 = 'FR'), '66000'), -- Pyrénées-Orientales Prefecture
('Orléans', (SELECT id FROM world_countries WHERE iso_code_2 = 'FR'), '45000'), -- Loiret Prefecture, Centre-Val de Loire Region Capital
('Mulhouse', (SELECT id FROM world_countries WHERE iso_code_2 = 'FR'), '68100'), -- Haut-Rhin
('Rouen', (SELECT id FROM world_countries WHERE iso_code_2 = 'FR'), '76000'), -- Seine-Maritime Prefecture, Normandy Region Capital
('Caen', (SELECT id FROM world_countries WHERE iso_code_2 = 'FR'), '14000'), -- Calvados Prefecture
('Nancy', (SELECT id FROM world_countries WHERE iso_code_2 = 'FR'), '54000'), -- Meurthe-et-Moselle Prefecture
('Avignon', (SELECT id FROM world_countries WHERE iso_code_2 = 'FR'), '84000'), -- Vaucluse Prefecture (Palace of the Popes)
('Poitiers', (SELECT id FROM world_countries WHERE iso_code_2 = 'FR'), '86000'), -- Vienne Prefecture
('Pau', (SELECT id FROM world_countries WHERE iso_code_2 = 'FR'), '64000'), -- Pyrénées-Atlantiques Prefecture
('La Rochelle', (SELECT id FROM world_countries WHERE iso_code_2 = 'FR'), '17000'), -- Charente-Maritime Prefecture
('Calais', (SELECT id FROM world_countries WHERE iso_code_2 = 'FR'), '62100'), -- Pas-de-Calais (Port, Channel Tunnel)
('Dunkerque (Dunkirk)', (SELECT id FROM world_countries WHERE iso_code_2 = 'FR'), '59140'), -- Nord (Port)
('Ajaccio', (SELECT id FROM world_countries WHERE iso_code_2 = 'FR'), '20000'), -- Corse-du-Sud Prefecture, Corsica Region Capital
('Bastia', (SELECT id FROM world_countries WHERE iso_code_2 = 'FR'), '20200'), -- Haute-Corse (Major city in Corsica)
('Versailles', (SELECT id FROM world_countries WHERE iso_code_2 = 'FR'), '78000'), -- Yvelines Prefecture (Palace of Versailles)
('Colombes', (SELECT id FROM world_countries WHERE iso_code_2 = 'FR'), '92700'), -- Hauts-de-Seine (Paris suburb)
('Asnières-sur-Seine', (SELECT id FROM world_countries WHERE iso_code_2 = 'FR'), '92600'), -- Hauts-de-Seine (Paris suburb)
('Saint-Denis', (SELECT id FROM world_countries WHERE iso_code_2 = 'FR'), '93200'), -- Seine-Saint-Denis Prefecture (Paris suburb)
('Montreuil', (SELECT id FROM world_countries WHERE iso_code_2 = 'FR'), '93100'); -- Seine-Saint-Denis (Paris suburb)


-- End of France city list (Highly Selective Sample of Metropolitan France)

/*
-- ====================================
-- == Información sobre France ==
-- ====================================
--
-- Descripción General:
-- Francia (France) es un país ubicado principalmente en Europa Occidental, aunque
-- también incluye regiones y territorios de ultramar en otros continentes. Francia
-- metropolitana se extiende desde el Mar Mediterráneo hasta el Canal de la Mancha
-- y el Mar del Norte, y desde el Rin hasta el Océano Atlántico. A menudo se le
-- llama "l'Hexagone" por su forma geométrica. Limita con Bélgica, Luxemburgo,
-- Alemania, Suiza, Italia, Mónaco, España y Andorra. Es una república semipresidencialista
-- unitaria y un miembro fundador clave de la Unión Europea y las Naciones Unidas.
--
-- Ciudades Principales:
-- * París: La capital y ciudad más grande, centro mundial de arte, moda, gastronomía
--   y cultura. Famosa por la Torre Eiffel, el Louvre, Notre Dame, etc.
-- * Marsella: Segunda ciudad más grande, principal puerto en el Mediterráneo.
-- * Lyon: Tercera ciudad, centro gastronómico e histórico (Patrimonio de la Humanidad).
-- * Toulouse: Importante centro aeroespacial en el sur.
-- * Niza: Principal ciudad de la Riviera Francesa (Côte d'Azur).
-- * Nantes, Estrasburgo, Montpellier, Burdeos, Lille, Rennes: Otras grandes metrópolis
--   y capitales regionales con gran importancia económica y cultural.
-- * La lista incluye también las capitales de la mayoría de los departamentos y otras
--   ciudades significativas.
--
-- Un Poco de Historia:
-- El territorio fue habitado por tribus celtas (galos), luego conquistado por Roma
-- (Galia). Tras la caída del Imperio Romano, fue dominado por tribus germánicas,
-- destacando los francos, que establecieron un reino bajo Clodoveo y luego el
-- Imperio Carolingio bajo Carlomagno. Francia emergió como un reino separado en la
-- Edad Media. La monarquía francesa se consolidó y expandió, alcanzando su apogeo
-- bajo Luis XIV. La Revolución Francesa (1789) derrocó la monarquía y estableció
-- la Primera República, seguida por el Imperio Napoleónico. Tras las guerras
-- napoleónicas, se restauró la monarquía brevemente, seguida por otras repúblicas
-- e imperios. Francia fue un actor principal en la Primera y Segunda Guerra Mundial
-- y tuvo un vasto imperio colonial que se desmanteló en el siglo XX. Es una potencia
-- líder en Europa y el mundo.
--
-- Datos Adicionales:
-- El francés es el idioma oficial. Francia es mundialmente famosa por su cocina,
-- sus vinos, la moda de alta costura y su patrimonio cultural y artístico. El Tour
-- de Francia es el evento ciclista más famoso del mundo. Es una potencia nuclear
-- y miembro permanente del Consejo de Seguridad de la ONU.
--
*/
