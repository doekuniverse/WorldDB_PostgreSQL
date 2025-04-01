-- SQL Script to insert a representative sample of significant cities and towns for Cuba (CU).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Cuba (CU).

-- NOTE: This list includes the capital, provincial capitals, the seat of the special municipality,
-- and a broad sample of major cities and significant municipalities. Listing every single locality is IMPOSSIBLE.
-- Postal codes are 5 digits; examples or '00000' placeholder are provided.

-- Inserting cities for Cuba (CU) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Provincial Capitals / Major Cities
('Havana (La Habana)', (SELECT id FROM world_countries WHERE iso_code_2 = 'CU'), '10000'), -- National Capital
('Santiago de Cuba', (SELECT id FROM world_countries WHERE iso_code_2 = 'CU'), '90100'), -- Santiago de Cuba Province Capital
('Camagüey', (SELECT id FROM world_countries WHERE iso_code_2 = 'CU'), '70100'), -- Camagüey Province Capital
('Holguín', (SELECT id FROM world_countries WHERE iso_code_2 = 'CU'), '80100'), -- Holguín Province Capital
('Santa Clara', (SELECT id FROM world_countries WHERE iso_code_2 = 'CU'), '50100'), -- Villa Clara Province Capital
('Guantánamo', (SELECT id FROM world_countries WHERE iso_code_2 = 'CU'), '95100'), -- Guantánamo Province Capital
('Bayamo', (SELECT id FROM world_countries WHERE iso_code_2 = 'CU'), '85100'), -- Granma Province Capital
('Las Tunas', (SELECT id FROM world_countries WHERE iso_code_2 = 'CU'), '75100'), -- Las Tunas Province Capital
('Cienfuegos', (SELECT id FROM world_countries WHERE iso_code_2 = 'CU'), '55100'), -- Cienfuegos Province Capital, UNESCO site
('Pinar del Río', (SELECT id FROM world_countries WHERE iso_code_2 = 'CU'), '20100'), -- Pinar del Río Province Capital
('Matanzas', (SELECT id FROM world_countries WHERE iso_code_2 = 'CU'), '40100'), -- Matanzas Province Capital
('Ciego de Ávila', (SELECT id FROM world_countries WHERE iso_code_2 = 'CU'), '65100'), -- Ciego de Ávila Province Capital
('Sancti Spíritus', (SELECT id FROM world_countries WHERE iso_code_2 = 'CU'), '60100'), -- Sancti Spíritus Province Capital
('Artemisa', (SELECT id FROM world_countries WHERE iso_code_2 = 'CU'), '33100'), -- Artemisa Province Capital
('San José de las Lajas', (SELECT id FROM world_countries WHERE iso_code_2 = 'CU'), '32700'), -- Mayabeque Province Capital
('Nueva Gerona', (SELECT id FROM world_countries WHERE iso_code_2 = 'CU'), '25100'), -- Isla de la Juventud Special Municipality Seat

-- Other Major/Significant Cities & Municipalities (Sample)
('Manzanillo', (SELECT id FROM world_countries WHERE iso_code_2 = 'CU'), '87510'), -- Granma Province
('Cárdenas', (SELECT id FROM world_countries WHERE iso_code_2 = 'CU'), '44100'), -- Matanzas Province
('Palma Soriano', (SELECT id FROM world_countries WHERE iso_code_2 = 'CU'), '92610'), -- Santiago de Cuba Province
('Moa', (SELECT id FROM world_countries WHERE iso_code_2 = 'CU'), '83310'), -- Holguín Province (Mining)
('Morón', (SELECT id FROM world_countries WHERE iso_code_2 = 'CU'), '67210'), -- Ciego de Ávila Province
('Florida', (SELECT id FROM world_countries WHERE iso_code_2 = 'CU'), '72810'), -- Camagüey Province
('Contramaestre', (SELECT id FROM world_countries WHERE iso_code_2 = 'CU'), '92310'), -- Santiago de Cuba Province
('Colón', (SELECT id FROM world_countries WHERE iso_code_2 = 'CU'), '42410'), -- Matanzas Province
('Güines', (SELECT id FROM world_countries WHERE iso_code_2 = 'CU'), '32010'), -- Mayabeque Province
('Trinidad', (SELECT id FROM world_countries WHERE iso_code_2 = 'CU'), '62600'), -- Sancti Spíritus Province, UNESCO site
('Placetas', (SELECT id FROM world_countries WHERE iso_code_2 = 'CU'), '52810'), -- Villa Clara Province
('Sagua La Grande', (SELECT id FROM world_countries WHERE iso_code_2 = 'CU'), '52610'), -- Villa Clara Province
('Baracoa', (SELECT id FROM world_countries WHERE iso_code_2 = 'CU'), '97310'), -- Guantánamo Province (Oldest city)
('Nuevitas', (SELECT id FROM world_countries WHERE iso_code_2 = 'CU'), '74210'), -- Camagüey Province (Port)
('Banes', (SELECT id FROM world_countries WHERE iso_code_2 = 'CU'), '82310'), -- Holguín Province
('San Luis', (SELECT id FROM world_countries WHERE iso_code_2 = 'CU'), '92410'), -- Santiago de Cuba Province
('San Antonio de los Baños', (SELECT id FROM world_countries WHERE iso_code_2 = 'CU'), '32500'), -- Artemisa Province
('Caibarién', (SELECT id FROM world_countries WHERE iso_code_2 = 'CU'), '52610'), -- Villa Clara Province
('Puerto Padre', (SELECT id FROM world_countries WHERE iso_code_2 = 'CU'), '77200'), -- Las Tunas Province
('Jovellanos', (SELECT id FROM world_countries WHERE iso_code_2 = 'CU'), '42810'); -- Matanzas Province

-- End of Cuba city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Cuba ==
-- ====================================
--
-- Descripción General:
-- Cuba es un país insular ubicado en el Mar Caribe, en la confluencia del Mar
-- Caribe, el Golfo de México y el Océano Atlántico. Es la isla más grande de las
-- Antillas Mayores y comprende la isla principal de Cuba, la Isla de la Juventud
-- y varios archipiélagos menores. Es conocida por su historia revolucionaria, su
-- cultura (música, danza, cigarros), sus playas y sus ciudades coloniales. Es
-- uno de los pocos estados socialistas que quedan en el mundo.
--
-- Ciudades Principales:
-- * La Habana (Havana): La capital y ciudad más grande, centro político, económico
--   y cultural. Su centro histórico, La Habana Vieja, es Patrimonio de la Humanidad.
-- * Santiago de Cuba: La segunda ciudad más grande, ubicada en el oriente, con una
--   fuerte identidad cultural caribeña y un papel importante en la historia cubana.
-- * Camagüey: Tercera ciudad, conocida por su centro histórico laberíntico (Patrimonio
--   de la Humanidad).
-- * Holguín, Santa Clara, Guantánamo, Bayamo: Otras importantes capitales provinciales
--   y centros urbanos.
-- * Trinidad: Ciudad colonial excepcionalmente conservada, Patrimonio de la Humanidad.
-- * La lista incluye también las demás capitales provinciales y otras ciudades significativas.
--
-- Un Poco de Historia:
-- Habitada por pueblos indígenas (Taíno, Siboney), fue colonizada por España tras
-- la llegada de Colón en 1492. Fue una colonia española clave, productora de azúcar
-- y tabaco con mano de obra esclava africana. Cuba luchó por su independencia en
-- varias guerras durante el siglo XIX, lográndola formalmente en 1902 después de la
-- intervención de Estados Unidos en la Guerra Hispano-Estadounidense, aunque bajo
-- fuerte influencia estadounidense (Enmienda Platt). La historia del siglo XX estuvo
-- marcada por periodos de inestabilidad y dictadura (Fulgencio Batista). En 1959,
-- la Revolución Cubana liderada por Fidel Castro derrocó a Batista y estableció un
-- estado socialista alineado con la Unión Soviética. Esto llevó al embargo
-- estadounidense y a décadas de gobierno bajo Castro. Tras la caída de la URSS,
-- Cuba enfrentó una grave crisis económica ("Período Especial"). Raúl Castro sucedió
-- a Fidel y actualmente Miguel Díaz-Canel es el presidente.
--
-- Datos Adicionales:
-- El español es el idioma oficial. Cuba es mundialmente famosa por sus cigarros
-- (habanos), el ron, su música (son, salsa, rumba, etc.) y sus automóviles clásicos
-- estadounidenses de los años 50. El sistema de salud y educación cubano ha sido
-- históricamente destacado, aunque enfrenta desafíos económicos.
--
*/
