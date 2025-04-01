-- SQL Script to insert a representative sample of significant cities, towns, and villages for Cabo Verde (CV).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Cabo Verde (CV).

-- NOTE: Cabo Verde is an archipelago. This list includes the capital, major towns (concelho seats),
-- and significant villages across the main islands. Listing every single locality is IMPOSSIBLE.
-- Postal codes are 4 digits; examples or '0000' placeholder are provided.

-- Inserting cities/villages for Cabo Verde (CV) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Santiago Island
('Praia', (SELECT id FROM world_countries WHERE iso_code_2 = 'CV'), '7600'), -- Capital
('Assomada', (SELECT id FROM world_countries WHERE iso_code_2 = 'CV'), '7110'), -- Santa Catarina concelho seat
('Tarrafal', (SELECT id FROM world_countries WHERE iso_code_2 = 'CV'), '7410'), -- Tarrafal concelho seat
('Pedra Badejo', (SELECT id FROM world_countries WHERE iso_code_2 = 'CV'), '7310'), -- Santa Cruz concelho seat
('Calheta de São Miguel', (SELECT id FROM world_countries WHERE iso_code_2 = 'CV'), '7210'), -- São Miguel concelho seat
('Picos', (SELECT id FROM world_countries WHERE iso_code_2 = 'CV'), '7510'), -- São Salvador do Mundo concelho seat
('Cidade Velha', (SELECT id FROM world_countries WHERE iso_code_2 = 'CV'), '7620'), -- Ribeira Grande de Santiago concelho seat, UNESCO site

-- São Vicente Island
('Mindelo', (SELECT id FROM world_countries WHERE iso_code_2 = 'CV'), '2110'), -- São Vicente concelho seat, major port/cultural center

-- Sal Island
('Espargos', (SELECT id FROM world_countries WHERE iso_code_2 = 'CV'), '4111'), -- Sal concelho seat, location of international airport
('Santa Maria', (SELECT id FROM world_countries WHERE iso_code_2 = 'CV'), '4110'), -- Major tourist town

-- Boa Vista Island
('Sal Rei', (SELECT id FROM world_countries WHERE iso_code_2 = 'CV'), '5111'), -- Boa Vista concelho seat

-- Fogo Island
('São Filipe', (SELECT id FROM world_countries WHERE iso_code_2 = 'CV'), '5110'), -- São Filipe concelho seat
('Mosteiros', (SELECT id FROM world_countries WHERE iso_code_2 = 'CV'), '5130'), -- Mosteiros concelho seat (Igreja town)

-- Santo Antão Island
('Porto Novo', (SELECT id FROM world_countries WHERE iso_code_2 = 'CV'), '1310'), -- Porto Novo concelho seat
('Ribeira Grande', (SELECT id FROM world_countries WHERE iso_code_2 = 'CV'), '1110'), -- Ribeira Grande concelho seat (Povoação town)
('Ponta do Sol', (SELECT id FROM world_countries WHERE iso_code_2 = 'CV'), '1210'), -- Town in Ribeira Grande concelho
('Paul', (SELECT id FROM world_countries WHERE iso_code_2 = 'CV'), '1410'), -- Paul concelho seat (Vila das Pombas town)

-- São Nicolau Island
('Ribeira Brava', (SELECT id FROM world_countries WHERE iso_code_2 = 'CV'), '3110'), -- Ribeira Brava concelho seat
('Tarrafal de São Nicolau', (SELECT id FROM world_countries WHERE iso_code_2 = 'CV'), '3210'), -- Tarrafal de São Nicolau concelho seat

-- Maio Island
('Vila do Maio', (SELECT id FROM world_countries WHERE iso_code_2 = 'CV'), '6110'), -- Maio concelho seat (Porto Inglês town)

-- Brava Island
('Nova Sintra', (SELECT id FROM world_countries WHERE iso_code_2 = 'CV'), '9110'); -- Brava concelho seat

-- Santa Luzia island is uninhabited.

-- End of Cabo Verde locality list (Representative Sample)

/*
-- ====================================
-- == Información sobre Cabo Verde ==
-- ====================================
--
-- Descripción General:
-- Cabo Verde es una república insular y archipiélago ubicado en el Océano Atlántico
-- central, a unos 570 kilómetros de la costa de África Occidental. Consta de diez
-- islas volcánicas principales (nueve habitadas) y varios islotes, divididos en
-- dos grupos: Barlovento (norte) y Sotavento (sur). El clima es árido o semiárido
-- y el paisaje varía desde playas de arena hasta montañas volcánicas escarpadas.
--
-- Ciudades Principales:
-- * Praia: La capital y ciudad más grande, ubicada en la isla de Santiago.
-- * Mindelo: La segunda ciudad más grande, en la isla de São Vicente, conocida
--   como el centro cultural del país y por su puerto de aguas profundas.
-- * Espargos y Santa Maria: Principales centros en la isla de Sal, importante
--   destino turístico y sede del principal aeropuerto internacional.
-- * São Filipe: Ciudad principal en la isla de Fogo, al pie del volcán activo Pico do Fogo.
-- * Sal Rei: Principal localidad en la isla de Boa Vista, otro destino turístico.
-- * La lista incluye también las sedes de los municipios (concelhos) de las demás islas habitadas.
--
-- Un Poco de Historia:
-- Las islas estaban deshabitadas cuando fueron descubiertas y colonizadas por los
-- portugueses en el siglo XV. Se convirtieron en un importante centro para el
-- comercio de esclavos africanos y una parada clave en las rutas marítimas. Tras
-- la abolición de la esclavitud y debido a sequías recurrentes, la emigración se
-- volvió significativa. Cabo Verde obtuvo la independencia de Portugal en 1975,
-- inicialmente con planes de unificación con Guinea-Bissau, que no se concretaron.
-- Desde principios de los años 90, ha sido una democracia multipartidista estable,
-- considerada un modelo en África.
--
-- Datos Adicionales:
-- El portugués es el idioma oficial, pero la lengua de uso común es el criollo
-- caboverdiano (Kriolu), con variaciones entre islas. La música es una parte
-- fundamental de la cultura, destacando géneros como la morna (popularizada por
-- Cesária Évora) y la coladeira. La diáspora caboverdiana es muy numerosa,
-- superando a la población residente en las islas.
--
*/
