-- SQL Script to insert a representative sample of significant cities and towns for the Republic of the Congo (CG).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Republic of the Congo (CG).

-- NOTE: This list includes the capital, major cities (department capitals), and significant towns.
-- Listing every single village, especially in remote forest areas, is IMPOSSIBLE.
-- Postal codes are not used; using '0000' as a placeholder.

-- Inserting cities for Republic of the Congo (CG) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Major Cities / Department Capitals
('Brazzaville', (SELECT id FROM world_countries WHERE iso_code_2 = 'CG'), '0000'), -- National Capital & Brazzaville Department
('Pointe-Noire', (SELECT id FROM world_countries WHERE iso_code_2 = 'CG'), '0000'), -- Pointe-Noire Department, Major port, economic center
('Dolisie', (SELECT id FROM world_countries WHERE iso_code_2 = 'CG'), '0000'), -- Niari Department Capital (formerly Loubomo)
('Nkayi', (SELECT id FROM world_countries WHERE iso_code_2 = 'CG'), '0000'), -- Bouenza Department (Major town)
('Impfondo', (SELECT id FROM world_countries WHERE iso_code_2 = 'CG'), '0000'), -- Likouala Department Capital
('Ouésso', (SELECT id FROM world_countries WHERE iso_code_2 = 'CG'), '0000'), -- Sangha Department Capital
('Madingou', (SELECT id FROM world_countries WHERE iso_code_2 = 'CG'), '0000'), -- Bouenza Department Capital
('Owando', (SELECT id FROM world_countries WHERE iso_code_2 = 'CG'), '0000'), -- Cuvette Department Capital
('Sibiti', (SELECT id FROM world_countries WHERE iso_code_2 = 'CG'), '0000'), -- Lékoumou Department Capital
('Djambala', (SELECT id FROM world_countries WHERE iso_code_2 = 'CG'), '0000'), -- Plateaux Department Capital
('Kinkala', (SELECT id FROM world_countries WHERE iso_code_2 = 'CG'), '0000'), -- Pool Department Capital
('Ewo', (SELECT id FROM world_countries WHERE iso_code_2 = 'CG'), '0000'), -- Cuvette-Ouest Department Capital

-- Other Significant Towns (Sample)
('Loandjili', (SELECT id FROM world_countries WHERE iso_code_2 = 'CG'), '0000'), -- Part of Pointe-Noire urban area
('Mossendjo', (SELECT id FROM world_countries WHERE iso_code_2 = 'CG'), '0000'), -- Niari Department
('Gamboma', (SELECT id FROM world_countries WHERE iso_code_2 = 'CG'), '0000'), -- Plateaux Department
('Makoua', (SELECT id FROM world_countries WHERE iso_code_2 = 'CG'), '0000'), -- Cuvette Department
('Loudima', (SELECT id FROM world_countries WHERE iso_code_2 = 'CG'), '0000'), -- Bouenza Department
('Oyo', (SELECT id FROM world_countries WHERE iso_code_2 = 'CG'), '0000'), -- Cuvette Department (President's hometown)
('Zanaga', (SELECT id FROM world_countries WHERE iso_code_2 = 'CG'), '0000'), -- Lékoumou Department
('Komono', (SELECT id FROM world_countries WHERE iso_code_2 = 'CG'), '0000'), -- Lékoumou Department
('Kellé', (SELECT id FROM world_countries WHERE iso_code_2 = 'CG'), '0000'), -- Cuvette-Ouest Department
('Sembé', (SELECT id FROM world_countries WHERE iso_code_2 = 'CG'), '0000'); -- Sangha Department

-- End of Republic of the Congo city list (Representative Sample)

/*
-- ====================================================
-- == Información sobre la República del Congo ==
-- ====================================================
--
-- Descripción General:
-- La República del Congo, también conocida como Congo-Brazzaville, es un país
-- ubicado en África Central. Limita con Gabón, Camerún, la República Centroafricana,
-- la República Democrática del Congo (separada en parte por los ríos Congo y
-- Ubangi) y el exclave angoleño de Cabinda, además de una costa en el Océano
-- Atlántico. Gran parte del país está cubierta por densa selva tropical de la
-- cuenca del Congo. La población se concentra principalmente en el suroeste.
--
-- Ciudades Principales:
-- * Brazzaville: La capital y ciudad más grande, ubicada en el río Congo, justo
--   enfrente de Kinshasa (capital de la RDC).
-- * Pointe-Noire: La segunda ciudad más grande, principal puerto y centro económico
--   y petrolero, ubicada en la costa atlántica.
-- * Dolisie (antes Loubomo): Tercera ciudad, importante centro ferroviario.
-- * Nkayi: Centro de la industria azucarera.
-- * Ouésso, Owando, Impfondo: Principales centros en las regiones selváticas del norte.
-- * La lista incluye también las demás capitales de departamento.
--
-- Un Poco de Historia:
-- La región estuvo influenciada por el Reino del Kongo. Fue explorada por los
-- franceses (Pierre Savorgnan de Brazza, de quien toma nombre la capital) a finales
-- del siglo XIX y se convirtió en la colonia del Congo Medio (Moyen-Congo), parte
-- del África Ecuatorial Francesa. Obtuvo la independencia en 1960. Tras un periodo
-- marxista-leninista (República Popular del Congo, 1970-1991), el país experimentó
-- una transición democrática seguida por guerras civiles en la década de 1990.
-- Denis Sassou Nguesso, quien ya había gobernado previamente, retomó el poder en
-- 1997 y ha dominado la política desde entonces.
--
-- Datos Adicionales:
-- El francés es el idioma oficial, junto con lenguas nacionales como el kituba y
-- el lingala. La economía depende en gran medida del petróleo, aunque también
-- exporta madera. Gran parte del país tiene baja densidad de población y densa
-- cobertura de selva tropical.
--
*/
