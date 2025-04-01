-- SQL Script to insert a representative sample of significant cities and towns for Uruguay (UY).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Uruguay (UY).

-- NOTE: Uruguay is divided into 19 departments, which contain numerous cities, towns ('villas'), and smaller localities.
-- Listing every single settlement is impractical for this format. This list focuses on the national capital,
-- departmental capitals, and a sample of other major cities/towns.
-- Uruguay uses 5-digit postal codes (NNNNN). A representative code for the city/town center is provided where possible,
-- but areas often span multiple codes. Using '00000' as a placeholder if unavailable for this sample.

-- Inserting cities/towns for Uruguay (UY) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- National Capital & Major Cities / Departmental Capitals
('Montevideo', (SELECT id FROM world_countries WHERE iso_code_2 = 'UY'), '11000'), -- National Capital & Montevideo Department Capital
('Salto', (SELECT id FROM world_countries WHERE iso_code_2 = 'UY'), '50000'), -- Salto Department Capital
('Paysandú', (SELECT id FROM world_countries WHERE iso_code_2 = 'UY'), '60000'), -- Paysandú Department Capital
('Las Piedras', (SELECT id FROM world_countries WHERE iso_code_2 = 'UY'), '90200'), -- Major city in Canelones Department
('Rivera', (SELECT id FROM world_countries WHERE iso_code_2 = 'UY'), '40000'), -- Rivera Department Capital (border city with Brazil)
('Maldonado', (SELECT id FROM world_countries WHERE iso_code_2 = 'UY'), '20000'), -- Maldonado Department Capital (near Punta del Este)
('Tacuarembó', (SELECT id FROM world_countries WHERE iso_code_2 = 'UY'), '45000'), -- Tacuarembó Department Capital
('Melo', (SELECT id FROM world_countries WHERE iso_code_2 = 'UY'), '37000'), -- Cerro Largo Department Capital
('Mercedes', (SELECT id FROM world_countries WHERE iso_code_2 = 'UY'), '75000'), -- Soriano Department Capital
('Artigas', (SELECT id FROM world_countries WHERE iso_code_2 = 'UY'), '55000'), -- Artigas Department Capital
('Minas', (SELECT id FROM world_countries WHERE iso_code_2 = 'UY'), '30000'), -- Lavalleja Department Capital
('San José de Mayo', (SELECT id FROM world_countries WHERE iso_code_2 = 'UY'), '80000'), -- San José Department Capital
('Durazno', (SELECT id FROM world_countries WHERE iso_code_2 = 'UY'), '97000'), -- Durazno Department Capital
('Florida', (SELECT id FROM world_countries WHERE iso_code_2 = 'UY'), '94000'), -- Florida Department Capital
('Treinta y Tres', (SELECT id FROM world_countries WHERE iso_code_2 = 'UY'), '33000'), -- Treinta y Tres Department Capital
('Rocha', (SELECT id FROM world_countries WHERE iso_code_2 = 'UY'), '27000'), -- Rocha Department Capital
('San Carlos', (SELECT id FROM world_countries WHERE iso_code_2 = 'UY'), '20400'), -- Major city in Maldonado Department
('Colonia del Sacramento', (SELECT id FROM world_countries WHERE iso_code_2 = 'UY'), '70000'), -- Colonia Department Capital (Historic city)
('Pando', (SELECT id FROM world_countries WHERE iso_code_2 = 'UY'), '91000'), -- Major city in Canelones Department
('Fray Bentos', (SELECT id FROM world_countries WHERE iso_code_2 = 'UY'), '65000'), -- Río Negro Department Capital (Historic industrial site)
('Trinidad', (SELECT id FROM world_countries WHERE iso_code_2 = 'UY'), '85000'), -- Flores Department Capital
('Canelones', (SELECT id FROM world_countries WHERE iso_code_2 = 'UY'), '90000'); -- Canelones Department Capital


-- End of Uruguay city/town list (Representative Sample)

/*
-- =============================================
-- ==      Información sobre Uruguay         ==
-- =============================================
--
-- Descripción General:
-- Uruguay, oficialmente la República Oriental del Uruguay, es un país ubicado en la
-- parte sureste de América del Sur. Limita con Argentina al oeste y suroeste (a través
-- del Río Uruguay y el Río de la Plata), Brasil al norte y noreste, y el Océano
-- Atlántico al sureste. Es el segundo país más pequeño de Sudamérica (después de
-- Surinam). Su geografía se caracteriza por llanuras onduladas (praderas) y colinas
-- bajas (cuchillas), con una costa atlántica. Es conocido por su estabilidad política
-- y social relativa en la región.
--
-- Ciudades Principales:
-- * Montevideo: La capital, ciudad más grande y principal puerto. Alberga a casi la
--   mitad de la población del país y es el centro político, cultural y económico.
-- * Salto, Paysandú: Las ciudades más grandes del interior, ubicadas sobre el río Uruguay.
-- * Ciudad de la Costa, Las Piedras: Ciudades importantes en el área metropolitana de
--   Montevideo (Departamento de Canelones).
-- * Rivera: Ciudad fronteriza con Brasil.
-- * Maldonado: Capital departamental y centro cercano al famoso balneario de Punta del Este.
-- * Melo, Tacuarembó, Mercedes, Artigas, Minas, San José de Mayo, Durazno, Florida,
--   Treinta y Tres, Rocha, Colonia del Sacramento, Fray Bentos, Trinidad, Canelones:
--   Capitales de los demás departamentos del país. Colonia del Sacramento es notable
--   por su barrio histórico, Patrimonio de la Humanidad.
--
-- Un Poco de Historia:
-- Habitada originalmente por pueblos indígenas, principalmente los charrúas. Fue
-- explorada por los españoles a principios del siglo XVI. La región fue disputada
-- entre España y Portugal. Colonia del Sacramento fue fundada por los portugueses
-- en 1680 y Montevideo por los españoles en 1726 como fortaleza. La lucha por la
-- independencia de España a principios del siglo XIX fue liderada por José Gervasio
-- Artigas, considerado el héroe nacional. Tras un período de dominación brasileña
-- (Provincia Cisplatina), Uruguay declaró su independencia en 1825 y fue reconocida
-- en 1828. El siglo XIX estuvo marcado por conflictos internos (Guerra Grande) e
-- inestabilidad. A principios del siglo XX, bajo el liderazgo de José Batlle y Ordóñez,
-- Uruguay se convirtió en un estado de bienestar pionero y una democracia estable.
-- Sufrió una dictadura cívico-militar entre 1973 y 1985, tras lo cual se restauró
-- la democracia.
--
-- Datos Adicionales:
-- El español es el idioma oficial. La población es mayoritariamente de ascendencia
-- europea (principalmente española e italiana). Uruguay es considerado uno de los
-- países más seculares de América Latina. La cultura tiene fuertes influencias
-- europeas, visible en su arquitectura, música (tango, candombe, murga) y gastronomía.
-- El mate es una bebida social muy popular. La economía se basa tradicionalmente en
-- la agricultura y la ganadería (carne, lana, soja), aunque los servicios y el turismo
-- también son importantes. Uruguay es conocido por sus políticas sociales progresistas,
-- altos niveles de desarrollo humano y estabilidad democrática.
--
*/
