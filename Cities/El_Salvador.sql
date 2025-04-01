-- SQL Script to insert a representative sample of significant cities and municipalities for El Salvador (SV).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains El Salvador (SV).

-- NOTE: El Salvador is densely populated. This list includes the capital, departmental capitals,
-- and a broad sample of major cities and significant municipalities. Listing every single locality is IMPOSSIBLE.
-- Postal codes are 4 digits (sometimes prefixed CP); examples or '0000' placeholder are provided.

-- Inserting cities for El Salvador (SV) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Departmental Capitals / Major Cities
('San Salvador', (SELECT id FROM world_countries WHERE iso_code_2 = 'SV'), '1101'), -- National Capital & San Salvador Dept. Capital
('Santa Ana', (SELECT id FROM world_countries WHERE iso_code_2 = 'SV'), '2201'), -- Santa Ana Dept. Capital
('San Miguel', (SELECT id FROM world_countries WHERE iso_code_2 = 'SV'), '3301'), -- San Miguel Dept. Capital
('Soyapango', (SELECT id FROM world_countries WHERE iso_code_2 = 'SV'), '1136'), -- San Salvador Dept. (Major city in Metro Area)
('Mejicanos', (SELECT id FROM world_countries WHERE iso_code_2 = 'SV'), '1121'), -- San Salvador Dept. (Metro Area)
('Santa Tecla', (SELECT id FROM world_countries WHERE iso_code_2 = 'SV'), '1501'), -- La Libertad Dept. Capital (formerly Nueva San Salvador)
('Apopa', (SELECT id FROM world_countries WHERE iso_code_2 = 'SV'), '1118'), -- San Salvador Dept. (Metro Area)
('Delgado', (SELECT id FROM world_countries WHERE iso_code_2 = 'SV'), '1119'), -- San Salvador Dept. (Ciudad Delgado, Metro Area)
('Ahuachapán', (SELECT id FROM world_countries WHERE iso_code_2 = 'SV'), '2101'), -- Ahuachapán Dept. Capital
('Sonsonate', (SELECT id FROM world_countries WHERE iso_code_2 = 'SV'), '2301'), -- Sonsonate Dept. Capital
('Usulután', (SELECT id FROM world_countries WHERE iso_code_2 = 'SV'), '3401'), -- Usulután Dept. Capital
('Cojutepeque', (SELECT id FROM world_countries WHERE iso_code_2 = 'SV'), '1401'), -- Cuscatlán Dept. Capital
('Zacatecoluca', (SELECT id FROM world_countries WHERE iso_code_2 = 'SV'), '1601'), -- La Paz Dept. Capital
('San Vicente', (SELECT id FROM world_countries WHERE iso_code_2 = 'SV'), '1701'), -- San Vicente Dept. Capital
('Sensuntepeque', (SELECT id FROM world_countries WHERE iso_code_2 = 'SV'), '1201'), -- Cabañas Dept. Capital
('Chalatenango', (SELECT id FROM world_countries WHERE iso_code_2 = 'SV'), '1301'), -- Chalatenango Dept. Capital
('La Unión', (SELECT id FROM world_countries WHERE iso_code_2 = 'SV'), '3201'), -- La Unión Dept. Capital
('San Francisco Gotera', (SELECT id FROM world_countries WHERE iso_code_2 = 'SV'), '3101'), -- Morazán Dept. Capital

-- Other Major/Significant Municipalities & Towns (Sample)
('Ilopango', (SELECT id FROM world_countries WHERE iso_code_2 = 'SV'), '1137'), -- San Salvador Dept. (Metro Area)
('Tonacatepeque', (SELECT id FROM world_countries WHERE iso_code_2 = 'SV'), '1139'), -- San Salvador Dept.
('Colón', (SELECT id FROM world_countries WHERE iso_code_2 = 'SV'), '1506'), -- La Libertad Dept.
('Armenia', (SELECT id FROM world_countries WHERE iso_code_2 = 'SV'), '2304'), -- Sonsonate Dept.
('Izalco', (SELECT id FROM world_countries WHERE iso_code_2 = 'SV'), '2305'), -- Sonsonate Dept.
('Acajutla', (SELECT id FROM world_countries WHERE iso_code_2 = 'SV'), '2302'), -- Sonsonate Dept. (Major port)
('Metapán', (SELECT id FROM world_countries WHERE iso_code_2 = 'SV'), '2214'), -- Santa Ana Dept.
('Chalchuapa', (SELECT id FROM world_countries WHERE iso_code_2 = 'SV'), '2205'), -- Santa Ana Dept. (Archaeological site)
('Atiquizaya', (SELECT id FROM world_countries WHERE iso_code_2 = 'SV'), '2102'), -- Ahuachapán Dept.
('Santiago de María', (SELECT id FROM world_countries WHERE iso_code_2 = 'SV'), '3415'), -- Usulután Dept.
('Jiquilisco', (SELECT id FROM world_countries WHERE iso_code_2 = 'SV'), '3409'), -- Usulután Dept.
('Berlín', (SELECT id FROM world_countries WHERE iso_code_2 = 'SV'), '3403'), -- Usulután Dept.
('Suchitoto', (SELECT id FROM world_countries WHERE iso_code_2 = 'SV'), '1414'), -- Cuscatlán Dept. (Colonial town)
('Ilobasco', (SELECT id FROM world_countries WHERE iso_code_2 = 'SV'), '1204'), -- Cabañas Dept. (Known for pottery)
('La Libertad', (SELECT id FROM world_countries WHERE iso_code_2 = 'SV'), '1509'), -- La Libertad Dept. (Port/beach town)
('Zaragoza', (SELECT id FROM world_countries WHERE iso_code_2 = 'SV'), '1516'), -- La Libertad Dept.
('Olocuilta', (SELECT id FROM world_countries WHERE iso_code_2 = 'SV'), '1610'), -- La Paz Dept. (Known for pupusas)
('Quezaltepeque', (SELECT id FROM world_countries WHERE iso_code_2 = 'SV'), '1511'); -- La Libertad Dept.

-- End of El Salvador city list (Representative Sample)

/*
-- ======================================
-- == Información sobre El Salvador ==
-- ======================================
--
-- Descripción General:
-- El Salvador es el país geográficamente más pequeño de Centroamérica continental,
-- ubicado en la costa del Océano Pacífico. Limita con Guatemala al oeste y
-- Honduras al norte y este. Es el país más densamente poblado de América continental.
-- Su territorio es mayormente montañoso con numerosos volcanes (activos e inactivos),
-- lo que le ha valido el apodo de "Valle de las Hamacas" por su actividad sísmica.
--
-- Ciudades Principales:
-- * San Salvador: La capital y ciudad más grande, ubicada en un valle en el centro
--   del país. Es el centro político, económico y cultural, formando una extensa
--   área metropolitana con municipios vecinos como Soyapango, Mejicanos, Delgado,
--   Apopa, Ilopango, etc.
-- * Santa Ana: La segunda ciudad más grande, ubicada en el oeste.
-- * San Miguel: La tercera ciudad más grande, principal centro urbano en el este.
-- * Santa Tecla (antes Nueva San Salvador): Capital del departamento de La Libertad
--   y parte importante del área metropolitana de San Salvador.
-- * Ahuachapán, Sonsonate, Usulután, Cojutepeque, Zacatecoluca, San Vicente, etc.:
--   Capitales de los demás departamentos.
-- * La lista incluye también otras ciudades y municipios significativos.
--
-- Un Poco de Historia:
-- Habitado por pueblos indígenas como los Pipiles (de origen Nahua). Fue conquistado
-- por los españoles en el siglo XVI bajo Pedro de Alvarado. Formó parte de la
-- Capitanía General de Guatemala. Se independizó de España en 1821 y formó parte
-- de la República Federal de Centroamérica antes de convertirse en una nación
-- independiente. La historia salvadoreña estuvo marcada por la desigualdad social,
-- el dominio de una élite cafetalera, inestabilidad política y dictaduras militares.
-- Entre 1980 y 1992, el país sufrió una brutal guerra civil entre el gobierno
-- apoyado por EE.UU. y guerrillas de izquierda (FMLN), que dejó decenas de miles
-- de muertos. Los Acuerdos de Paz de Chapultepec pusieron fin al conflicto. La
-- posguerra ha visto avances democráticos pero también desafíos como la violencia
-- de pandillas (maras) y la emigración. En años recientes, ha habido cambios
-- políticos significativos bajo la presidencia de Nayib Bukele.
--
-- Datos Adicionales:
-- El español es el idioma oficial. Las pupusas (tortillas gruesas rellenas) son
-- el plato nacional. El Salvador es conocido como el "Pulgarcito de América".
-- A pesar de no tener costa caribeña, tiene populares playas en el Pacífico para
-- el surf.
--
*/
