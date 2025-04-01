-- SQL Script to insert a representative sample of significant cities and municipalities for the Dominican Republic (DO).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Dominican Republic (DO).

-- NOTE: This list includes the capital, provincial capitals, and a broad sample of major cities
-- and significant municipalities. Listing every single locality (paraje, sección) is IMPOSSIBLE.
-- Postal codes are 5 digits; examples or '00000' placeholder are provided.

-- Inserting cities for Dominican Republic (DO) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Provincial Capitals / Major Cities
('Santo Domingo', (SELECT id FROM world_countries WHERE iso_code_2 = 'DO'), '10100'), -- National Capital (Distrito Nacional)
('Santiago de los Caballeros', (SELECT id FROM world_countries WHERE iso_code_2 = 'DO'), '51000'), -- Santiago Province Capital
('Santo Domingo Este', (SELECT id FROM world_countries WHERE iso_code_2 = 'DO'), '11500'), -- Santo Domingo Province (Major Municipality)
('Santo Domingo Norte', (SELECT id FROM world_countries WHERE iso_code_2 = 'DO'), '11700'), -- Santo Domingo Province (Major Municipality)
('Santo Domingo Oeste', (SELECT id FROM world_countries WHERE iso_code_2 = 'DO'), '11100'), -- Santo Domingo Province (Major Municipality)
('La Romana', (SELECT id FROM world_countries WHERE iso_code_2 = 'DO'), '22000'), -- La Romana Province Capital
('San Pedro de Macorís', (SELECT id FROM world_countries WHERE iso_code_2 = 'DO'), '21000'), -- San Pedro de Macorís Province Capital
('Higüey', (SELECT id FROM world_countries WHERE iso_code_2 = 'DO'), '23000'), -- La Altagracia Province Capital
('San Cristóbal', (SELECT id FROM world_countries WHERE iso_code_2 = 'DO'), '91000'), -- San Cristóbal Province Capital
('San Francisco de Macorís', (SELECT id FROM world_countries WHERE iso_code_2 = 'DO'), '31000'), -- Duarte Province Capital
('Puerto Plata', (SELECT id FROM world_countries WHERE iso_code_2 = 'DO'), '57000'), -- Puerto Plata Province Capital (San Felipe de Puerto Plata)
('La Vega', (SELECT id FROM world_countries WHERE iso_code_2 = 'DO'), '41000'), -- La Vega Province Capital (Concepción de La Vega)
('Baní', (SELECT id FROM world_countries WHERE iso_code_2 = 'DO'), '94000'), -- Peravia Province Capital
('Moca', (SELECT id FROM world_countries WHERE iso_code_2 = 'DO'), '56000'), -- Espaillat Province Capital
('Bonao', (SELECT id FROM world_countries WHERE iso_code_2 = 'DO'), '42000'), -- Monseñor Nouel Province Capital
('Azua', (SELECT id FROM world_countries WHERE iso_code_2 = 'DO'), '71000'), -- Azua Province Capital (Azua de Compostela)
('Mao', (SELECT id FROM world_countries WHERE iso_code_2 = 'DO'), '61000'), -- Valverde Province Capital (Santa Cruz de Mao)
('Barahona', (SELECT id FROM world_countries WHERE iso_code_2 = 'DO'), '81000'), -- Barahona Province Capital (Santa Cruz de Barahona)
('San Juan de la Maguana', (SELECT id FROM world_countries WHERE iso_code_2 = 'DO'), '72000'), -- San Juan Province Capital
('Cotuí', (SELECT id FROM world_countries WHERE iso_code_2 = 'DO'), '43000'), -- Sánchez Ramírez Province Capital
('Monte Cristi', (SELECT id FROM world_countries WHERE iso_code_2 = 'DO'), '62000'), -- Monte Cristi Province Capital (San Fernando de Monte Cristi)
('Nagua', (SELECT id FROM world_countries WHERE iso_code_2 = 'DO'), '33000'), -- María Trinidad Sánchez Province Capital
('Dajabón', (SELECT id FROM world_countries WHERE iso_code_2 = 'DO'), '63000'), -- Dajabón Province Capital
('Samaná', (SELECT id FROM world_countries WHERE iso_code_2 = 'DO'), '32000'), -- Samaná Province Capital (Santa Bárbara de Samaná)
('Neiba', (SELECT id FROM world_countries WHERE iso_code_2 = 'DO'), '82000'), -- Bahoruco Province Capital
('Jimaní', (SELECT id FROM world_countries WHERE iso_code_2 = 'DO'), '84000'), -- Independencia Province Capital
('Pedernales', (SELECT id FROM world_countries WHERE iso_code_2 = 'DO'), '83000'), -- Pedernales Province Capital
('El Seibo', (SELECT id FROM world_countries WHERE iso_code_2 = 'DO'), '24000'), -- El Seibo Province Capital (Santa Cruz del Seibo)
('Hato Mayor del Rey', (SELECT id FROM world_countries WHERE iso_code_2 = 'DO'), '25000'), -- Hato Mayor Province Capital
('Monte Plata', (SELECT id FROM world_countries WHERE iso_code_2 = 'DO'), '92000'), -- Monte Plata Province Capital
('Salcedo', (SELECT id FROM world_countries WHERE iso_code_2 = 'DO'), '34000'), -- Hermanas Mirabal Province Capital
('San José de Ocoa', (SELECT id FROM world_countries WHERE iso_code_2 = 'DO'), '93000'), -- San José de Ocoa Province Capital
('Comendador', (SELECT id FROM world_countries WHERE iso_code_2 = 'DO'), '73000'), -- Elías Piña Province Capital
('Sabaneta', (SELECT id FROM world_countries WHERE iso_code_2 = 'DO'), '64000'), -- Santiago Rodríguez Province Capital (San Ignacio de Sabaneta)

-- Other Major/Significant Municipalities & Towns (Sample)
('Los Alcarrizos', (SELECT id FROM world_countries WHERE iso_code_2 = 'DO'), '11000'), -- Santo Domingo Province (Metro Area)
('Bajos de Haina', (SELECT id FROM world_countries WHERE iso_code_2 = 'DO'), '91000'), -- San Cristóbal Province (Industrial/Port)
('Villa Altagracia', (SELECT id FROM world_countries WHERE iso_code_2 = 'DO'), '91000'), -- San Cristóbal Province
('Jarabacoa', (SELECT id FROM world_countries WHERE iso_code_2 = 'DO'), '41000'), -- La Vega Province (Mountain town)
('Constanza', (SELECT id FROM world_countries WHERE iso_code_2 = 'DO'), '41000'), -- La Vega Province (Mountain town)
('Las Terrenas', (SELECT id FROM world_countries WHERE iso_code_2 = 'DO'), '32000'), -- Samaná Province (Tourist town)
('Sosúa', (SELECT id FROM world_countries WHERE iso_code_2 = 'DO'), '57000'), -- Puerto Plata Province (Tourist town)
('Cabarete', (SELECT id FROM world_countries WHERE iso_code_2 = 'DO'), '57000'), -- Puerto Plata Province (Watersports)
('Bávaro', (SELECT id FROM world_countries WHERE iso_code_2 = 'DO'), '23000'), -- La Altagracia Province (Major tourist area)
('Punta Cana', (SELECT id FROM world_countries WHERE iso_code_2 = 'DO'), '23000'); -- La Altagracia Province (Major tourist area/Airport)


-- End of Dominican Republic city list (Representative Sample)

/*
-- ================================================
-- == Información sobre la República Dominicana ==
-- ================================================
--
-- Descripción General:
-- La República Dominicana ocupa aproximadamente los dos tercios orientales de la
-- isla La Española, en el archipiélago de las Antillas Mayores del Caribe. Comparte
-- la isla con Haití al oeste. Es el segundo país más grande (después de Cuba) y
-- el más poblado del Caribe insular. Su geografía es diversa, con extensas costas,
-- playas, valles fértiles, zonas desérticas y las cadenas montañosas más altas del
-- Caribe (incluyendo el Pico Duarte).
--
-- Ciudades Principales:
-- * Santo Domingo: La capital, ubicada en la costa sur. Es la ciudad primada de
--   América (primera sede del gobierno colonial español en el Nuevo Mundo) y su
--   Ciudad Colonial es Patrimonio de la Humanidad por la UNESCO. Es el centro
--   político, económico y cultural del país, formando una gran área metropolitana
--   con municipios de la provincia Santo Domingo (Este, Norte, Oeste, Los Alcarrizos).
-- * Santiago de los Caballeros: La segunda ciudad más grande, centro importante en
--   el fértil Valle del Cibao, en el interior norte.
-- * La Romana y San Pedro de Macorís: Importantes ciudades en el sureste, centros
--   azucareros históricos y ahora también turísticos e industriales.
-- * Higüey y la zona de Bávaro/Punta Cana: Principal polo turístico del país, en
--   la provincia de La Altagracia.
-- * San Francisco de Macorís, Puerto Plata, La Vega: Otros importantes centros regionales.
-- * La lista incluye también las capitales de todas las provincias.
--
-- Un Poco de Historia:
-- Habitada por los Taínos. La isla fue el primer lugar de América al que llegó
-- Cristóbal Colón en 1492 y donde se estableció la primera colonia europea
-- permanente (Santo Domingo). Fue la Capitanía General de Santo Domingo bajo
-- dominio español. Sufrió invasiones y periodos de dominio francés y haitiano.
-- Logró su primera independencia de Haití en 1844. La historia posterior estuvo
-- marcada por inestabilidad, anexión a España, restauraciones, intervenciones
-- estadounidenses (1916-1924, 1965) y la larga dictadura de Rafael Trujillo
-- (1930-1961). Desde la década de 1960, ha sido una democracia representativa,
-- aunque con desafíos.
--
-- Datos Adicionales:
-- El español es el idioma oficial. El béisbol es el deporte nacional y una pasión
-- popular. La música y el baile, especialmente el merengue y la bachata, son
-- elementos centrales de la cultura dominicana. El turismo, las remesas y las
-- zonas francas son pilares importantes de la economía.
--
*/
