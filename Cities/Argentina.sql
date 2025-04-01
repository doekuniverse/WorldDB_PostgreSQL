-- SQL Script to insert a more extensive sample of significant cities for Argentina (AR).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Argentina (AR).

-- NOTE: This list includes the capital, provincial capitals, and many other major/medium cities.
-- It is significantly expanded but still not absolutely exhaustive of every locality.
-- Postal codes are examples (CPA base format or older codes). Using '0000' where simple example isn't readily available.

-- Inserting cities for Argentina (AR) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Major Cities / Provincial Capitals (from previous list)
('Buenos Aires', (SELECT id FROM world_countries WHERE iso_code_2 = 'AR'), 'C1000'), -- Capital Federal (CABA)
('Córdoba', (SELECT id FROM world_countries WHERE iso_code_2 = 'AR'), 'X5000'), -- Provincial Capital
('Rosario', (SELECT id FROM world_countries WHERE iso_code_2 = 'AR'), 'S2000'), -- Major city (Santa Fe Province)
('La Plata', (SELECT id FROM world_countries WHERE iso_code_2 = 'AR'), 'B1900'), -- Provincial Capital (Buenos Aires)
('Mendoza', (SELECT id FROM world_countries WHERE iso_code_2 = 'AR'), 'M5500'), -- Provincial Capital
('San Miguel de Tucumán', (SELECT id FROM world_countries WHERE iso_code_2 = 'AR'), 'T4000'), -- Provincial Capital
('Mar del Plata', (SELECT id FROM world_countries WHERE iso_code_2 = 'AR'), 'B7600'), -- Major city (Buenos Aires Province)
('Salta', (SELECT id FROM world_countries WHERE iso_code_2 = 'AR'), 'A4400'), -- Provincial Capital
('Santa Fe', (SELECT id FROM world_countries WHERE iso_code_2 = 'AR'), 'S3000'), -- Provincial Capital (Santa Fe de la Vera Cruz)
('San Juan', (SELECT id FROM world_countries WHERE iso_code_2 = 'AR'), 'J5400'), -- Provincial Capital
('Resistencia', (SELECT id FROM world_countries WHERE iso_code_2 = 'AR'), 'H3500'), -- Provincial Capital (Chaco)
('Corrientes', (SELECT id FROM world_countries WHERE iso_code_2 = 'AR'), 'W3400'), -- Provincial Capital
('Santiago del Estero', (SELECT id FROM world_countries WHERE iso_code_2 = 'AR'), 'G4200'), -- Provincial Capital
('Neuquén', (SELECT id FROM world_countries WHERE iso_code_2 = 'AR'), 'Q8300'), -- Provincial Capital
('Posadas', (SELECT id FROM world_countries WHERE iso_code_2 = 'AR'), 'N3300'), -- Provincial Capital (Misiones)
('Formosa', (SELECT id FROM world_countries WHERE iso_code_2 = 'AR'), 'P3600'), -- Provincial Capital
('San Salvador de Jujuy', (SELECT id FROM world_countries WHERE iso_code_2 = 'AR'), 'Y4600'), -- Provincial Capital
('Paraná', (SELECT id FROM world_countries WHERE iso_code_2 = 'AR'), 'E3100'), -- Provincial Capital (Entre Ríos)
('San Luis', (SELECT id FROM world_countries WHERE iso_code_2 = 'AR'), 'D5700'), -- Provincial Capital
('La Rioja', (SELECT id FROM world_countries WHERE iso_code_2 = 'AR'), 'F5300'), -- Provincial Capital
('Catamarca', (SELECT id FROM world_countries WHERE iso_code_2 = 'AR'), 'K4700'), -- Provincial Capital (San Fernando del Valle de Catamarca)
('Río Gallegos', (SELECT id FROM world_countries WHERE iso_code_2 = 'AR'), 'Z9400'), -- Provincial Capital (Santa Cruz)
('Viedma', (SELECT id FROM world_countries WHERE iso_code_2 = 'AR'), 'R8500'), -- Provincial Capital (Río Negro)
('Rawson', (SELECT id FROM world_countries WHERE iso_code_2 = 'AR'), 'U9103'), -- Provincial Capital (Chubut)
('Ushuaia', (SELECT id FROM world_countries WHERE iso_code_2 = 'AR'), 'V9410'), -- Provincial Capital (Tierra del Fuego), southern-most city
('Bahía Blanca', (SELECT id FROM world_countries WHERE iso_code_2 = 'AR'), 'B8000'), -- Major city (Buenos Aires Province)
('Comodoro Rivadavia', (SELECT id FROM world_countries WHERE iso_code_2 = 'AR'), 'U9000'), -- Major city (Chubut)
('San Carlos de Bariloche', (SELECT id FROM world_countries WHERE iso_code_2 = 'AR'), 'R8400'), -- Major tourist city (Río Negro)
('Tandil', (SELECT id FROM world_countries WHERE iso_code_2 = 'AR'), 'B7000'), -- City (Buenos Aires Province)
('Concordia', (SELECT id FROM world_countries WHERE iso_code_2 = 'AR'), 'E3200'), -- City (Entre Ríos)

-- Additional Cities/Towns (Expansion)
('Quilmes', (SELECT id FROM world_countries WHERE iso_code_2 = 'AR'), 'B1878'), -- City (Buenos Aires Province)
('Lanús', (SELECT id FROM world_countries WHERE iso_code_2 = 'AR'), 'B1824'), -- City (Buenos Aires Province)
('Merlo', (SELECT id FROM world_countries WHERE iso_code_2 = 'AR'), 'B1722'), -- City (Buenos Aires Province)
('José C. Paz', (SELECT id FROM world_countries WHERE iso_code_2 = 'AR'), 'B1665'), -- City (Buenos Aires Province)
('Avellaneda', (SELECT id FROM world_countries WHERE iso_code_2 = 'AR'), 'B1870'), -- City (Buenos Aires Province)
('Isidro Casanova', (SELECT id FROM world_countries WHERE iso_code_2 = 'AR'), 'B1765'), -- City (Buenos Aires Province)
('Ituzaingó', (SELECT id FROM world_countries WHERE iso_code_2 = 'AR'), 'B1714'), -- City (Buenos Aires Province)
('San Miguel', (SELECT id FROM world_countries WHERE iso_code_2 = 'AR'), 'B1663'), -- City (Buenos Aires Province)
('Godoy Cruz', (SELECT id FROM world_countries WHERE iso_code_2 = 'AR'), 'M5501'), -- City (Mendoza Province)
('Las Heras', (SELECT id FROM world_countries WHERE iso_code_2 = 'AR'), 'M5539'), -- City (Mendoza Province)
('Guaymallén', (SELECT id FROM world_countries WHERE iso_code_2 = 'AR'), 'M5519'), -- City (Mendoza Province)
('Luján de Cuyo', (SELECT id FROM world_countries WHERE iso_code_2 = 'AR'), 'M5507'), -- City (Mendoza Province)
('San Rafael', (SELECT id FROM world_countries WHERE iso_code_2 = 'AR'), 'M5600'), -- City (Mendoza Province)
('Villa María', (SELECT id FROM world_countries WHERE iso_code_2 = 'AR'), 'X5900'), -- City (Córdoba Province)
('Río Cuarto', (SELECT id FROM world_countries WHERE iso_code_2 = 'AR'), 'X5800'), -- City (Córdoba Province)
('San Francisco', (SELECT id FROM world_countries WHERE iso_code_2 = 'AR'), 'X2400'), -- City (Córdoba Province)
('Villa Carlos Paz', (SELECT id FROM world_countries WHERE iso_code_2 = 'AR'), 'X5152'), -- Tourist City (Córdoba Province)
('Olavarría', (SELECT id FROM world_countries WHERE iso_code_2 = 'AR'), 'B7400'), -- City (Buenos Aires Province)
('Junín', (SELECT id FROM world_countries WHERE iso_code_2 = 'AR'), 'B6000'), -- City (Buenos Aires Province)
('Pergamino', (SELECT id FROM world_countries WHERE iso_code_2 = 'AR'), 'B2700'), -- City (Buenos Aires Province)
('Zárate', (SELECT id FROM world_countries WHERE iso_code_2 = 'AR'), 'B2800'), -- City (Buenos Aires Province)
('Campana', (SELECT id FROM world_countries WHERE iso_code_2 = 'AR'), 'B2804'), -- City (Buenos Aires Province)
('Necochea', (SELECT id FROM world_countries WHERE iso_code_2 = 'AR'), 'B7630'), -- City (Buenos Aires Province)
('Gualeguaychú', (SELECT id FROM world_countries WHERE iso_code_2 = 'AR'), 'E2820'), -- City (Entre Ríos Province)
('Puerto Madryn', (SELECT id FROM world_countries WHERE iso_code_2 = 'AR'), 'U9120'), -- City (Chubut Province)
('Trelew', (SELECT id FROM world_countries WHERE iso_code_2 = 'AR'), 'U9100'), -- City (Chubut Province)
('General Roca', (SELECT id FROM world_countries WHERE iso_code_2 = 'AR'), 'R8332'), -- City (Río Negro Province)
('Cipolletti', (SELECT id FROM world_countries WHERE iso_code_2 = 'AR'), 'R8324'), -- City (Río Negro Province)
('Oberá', (SELECT id FROM world_countries WHERE iso_code_2 = 'AR'), 'N3360'), -- City (Misiones Province)
('Eldorado', (SELECT id FROM world_countries WHERE iso_code_2 = 'AR'), 'N3380'), -- City (Misiones Province)
('Villa Mercedes', (SELECT id FROM world_countries WHERE iso_code_2 = 'AR'), 'D5730'), -- City (San Luis Province)
('Presidencia Roque Sáenz Peña', (SELECT id FROM world_countries WHERE iso_code_2 = 'AR'), 'H3700'), -- City (Chaco Province)
('Clorinda', (SELECT id FROM world_countries WHERE iso_code_2 = 'AR'), 'P3610'), -- City (Formosa Province)
('Rafaela', (SELECT id FROM world_countries WHERE iso_code_2 = 'AR'), 'S2300'), -- City (Santa Fe Province)
('Venado Tuerto', (SELECT id FROM world_countries WHERE iso_code_2 = 'AR'), 'S2600'), -- City (Santa Fe Province)
('Reconquista', (SELECT id FROM world_countries WHERE iso_code_2 = 'AR'), 'S3560'), -- City (Santa Fe Province)
('Tartagal', (SELECT id FROM world_countries WHERE iso_code_2 = 'AR'), 'A4560'), -- City (Salta Province)
('San Ramón de la Nueva Orán', (SELECT id FROM world_countries WHERE iso_code_2 = 'AR'), 'A4530'), -- City (Salta Province)
('Palpalá', (SELECT id FROM world_countries WHERE iso_code_2 = 'AR'), 'Y4612'); -- City (Jujuy Province)


-- End of Argentina city list (Extended Sample)

/*
-- ====================================
-- == Información sobre Argentina ==
-- ====================================
--
-- Descripción General:
-- Argentina es el segundo país más grande de Sudamérica y el octavo del mundo
-- en superficie. Posee una enorme diversidad geográfica que incluye la cordillera
-- de los Andes al oeste, las vastas llanuras fértiles de las Pampas en el centro,
-- la región subtropical del Gran Chaco al norte, y la estepa fría de la Patagonia
-- al sur, llegando hasta Tierra del Fuego.
--
-- Ciudades Principales:
-- * Buenos Aires (CABA): La capital federal, una metrópolis vibrante y centro
--   cultural y económico del país. Famosa por el tango, su arquitectura europea
--   y su vida nocturna.
-- * Córdoba: Importante centro industrial y universitario en el corazón del país.
-- * Rosario: Ciudad portuaria clave sobre el río Paraná, cuna de la bandera argentina.
-- * Mendoza: Centro de la región vinícola argentina, al pie de los Andes.
-- * La Plata: Capital de la Provincia de Buenos Aires, conocida por su trazado urbano planificado.
-- * Esta lista incluye también las capitales de todas las provincias y muchas otras ciudades importantes.
--
-- Un Poco de Historia:
-- Colonizada por España en el siglo XVI, Argentina declaró su independencia en 1816.
-- El país experimentó un gran crecimiento a finales del siglo XIX y principios del XX
-- debido a la inmigración masiva (principalmente de Italia y España) y la exportación
-- agrícola. El siglo XX estuvo marcado por períodos de inestabilidad política,
-- gobiernos militares y la influencia del peronismo. La cultura argentina es una
-- mezcla de influencias europeas e indígenas, destacando el tango, el fútbol,
-- la literatura (Borges, Cortázar) y el asado.
--
-- Datos Adicionales:
-- El español es el idioma oficial (con una variante local llamada Rioplatense).
-- El mate es la infusión nacional y un importante ritual social. El fútbol es
-- una pasión nacional, con figuras legendarias como Maradona y Messi.
--
*/
