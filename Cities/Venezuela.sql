-- SQL Script to insert a representative sample of significant cities and towns for Venezuela (VE).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Venezuela (Bolivarian Republic of) (VE).

-- NOTE: Venezuela is divided into 23 states, a Capital District, and Federal Dependencies, containing numerous municipalities, parishes, cities, towns, and smaller localities ('caseríos').
-- Listing every single settlement is impractical for this format. This list focuses on the national capital,
-- major cities, state capitals, and a sample of other significant towns.
-- Venezuela uses 4-digit postal codes (NNNN). A representative code for the city center is provided where possible,
-- but areas often span multiple codes. Using '0000' as a placeholder if unavailable for this sample.

-- Inserting cities/towns for Venezuela (VE) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- National Capital & Major Cities / State Capitals
('Caracas', (SELECT id FROM world_countries WHERE iso_code_2 = 'VE'), '1010'), -- National Capital (Distrito Capital)
('Maracaibo', (SELECT id FROM world_countries WHERE iso_code_2 = 'VE'), '4001'), -- Second Largest City (Zulia State Capital)
('Valencia', (SELECT id FROM world_countries WHERE iso_code_2 = 'VE'), '2001'), -- Major Industrial City (Carabobo State Capital)
('Barquisimeto', (SELECT id FROM world_countries WHERE iso_code_2 = 'VE'), '3001'), -- Major City (Lara State Capital)
('Maracay', (SELECT id FROM world_countries WHERE iso_code_2 = 'VE'), '2101'), -- Major City (Aragua State Capital)
('Ciudad Guayana', (SELECT id FROM world_countries WHERE iso_code_2 = 'VE'), '8050'), -- Major Industrial City (Bolívar State - includes Puerto Ordaz & San Félix)
('San Cristóbal', (SELECT id FROM world_countries WHERE iso_code_2 = 'VE'), '5001'), -- Táchira State Capital
('Barcelona', (SELECT id FROM world_countries WHERE iso_code_2 = 'VE'), '6001'), -- Anzoátegui State Capital (part of metro area with Puerto La Cruz)
('Maturín', (SELECT id FROM world_countries WHERE iso_code_2 = 'VE'), '6201'), -- Monagas State Capital
('Ciudad Bolívar', (SELECT id FROM world_countries WHERE iso_code_2 = 'VE'), '8001'), -- Bolívar State Capital
('Cumaná', (SELECT id FROM world_countries WHERE iso_code_2 = 'VE'), '6101'), -- Sucre State Capital (Oldest continuously inhabited European settlement in mainland Americas)
('Mérida', (SELECT id FROM world_countries WHERE iso_code_2 = 'VE'), '5101'), -- Mérida State Capital (Andean city)
('Cabimas', (SELECT id FROM world_countries WHERE iso_code_2 = 'VE'), '4013'), -- Major city on Lake Maracaibo (Zulia State)
('Barinas', (SELECT id FROM world_countries WHERE iso_code_2 = 'VE'), '5201'), -- Barinas State Capital
('Los Teques', (SELECT id FROM world_countries WHERE iso_code_2 = 'VE'), '1201'), -- Miranda State Capital
('Puerto La Cruz', (SELECT id FROM world_countries WHERE iso_code_2 = 'VE'), '6023'), -- Major coastal city/port (Anzoátegui State)
('Guarenas', (SELECT id FROM world_countries WHERE iso_code_2 = 'VE'), '1220'), -- Satellite city of Caracas (Miranda State)
('Acarigua', (SELECT id FROM world_countries WHERE iso_code_2 = 'VE'), '3301'), -- Major city in Portuguesa State (often paired with Araure)
('San Felipe', (SELECT id FROM world_countries WHERE iso_code_2 = 'VE'), '3201'), -- Yaracuy State Capital
('Coro', (SELECT id FROM world_countries WHERE iso_code_2 = 'VE'), '4101'), -- Falcón State Capital (Historic site)
('San Fernando de Apure', (SELECT id FROM world_countries WHERE iso_code_2 = 'VE'), '7001'), -- Apure State Capital
('Guanare', (SELECT id FROM world_countries WHERE iso_code_2 = 'VE'), '3350'), -- Portuguesa State Capital
('La Guaira', (SELECT id FROM world_countries WHERE iso_code_2 = 'VE'), '1160'); -- Vargas/La Guaira State Capital (Main port for Caracas)


-- End of Venezuela city/town list (Representative Sample)

/*
-- =============================================
-- ==      Información sobre Venezuela       ==
-- =============================================
--
-- Descripción General:
-- Venezuela, oficialmente la República Bolivariana de Venezuela, es un país ubicado
-- en la costa norte de América del Sur. Limita con el Mar Caribe y el Océano Atlántico
-- al norte, Guyana al este, Brasil al sur y Colombia al oeste. También incluye
-- numerosas islas frente a su costa. Su geografía es muy diversa, incluyendo la
-- cordillera de los Andes en el oeste, la costa caribeña, extensas llanuras (Los Llanos)
-- en el centro, la cuenca del río Orinoco y la región montañosa del Macizo Guayanés
-- (Guayana) en el sur, donde se encuentra el Salto Ángel, la cascada más alta del mundo.
--
-- Ciudades Principales:
-- * Caracas: La capital y ciudad más grande, ubicada en un valle montañoso cerca de la costa.
--   Es el centro político, financiero, comercial y cultural del país.
-- * Maracaibo: La segunda ciudad más grande, centro de la industria petrolera, ubicada
--   a orillas del Lago de Maracaibo.
-- * Valencia: Importante centro industrial en la región central.
-- * Barquisimeto: Centro comercial y de transporte en el occidente.
-- * Maracay: Ciudad importante en la región central.
-- * Ciudad Guayana: Complejo industrial planificado en la confluencia de los ríos Orinoco
--   y Caroní, centro de la industria pesada (acero, aluminio).
-- * San Cristóbal, Barcelona, Maturín, Ciudad Bolívar, Cumaná, Mérida: Otras capitales
--   de estado y centros regionales importantes.
--
-- Un Poco de Historia:
-- Habitada por diversos pueblos indígenas. Fue avistada por Cristóbal Colón en 1498.
-- La colonización española comenzó a principios del siglo XVI. Venezuela fue una
-- capitanía general dentro del Virreinato de Nueva Granada. La lucha por la independencia
-- de España fue liderada por figuras clave como Francisco de Miranda y Simón Bolívar
-- (nacido en Caracas), culminando en 1821. Formó parte de la Gran Colombia hasta 1830,
-- cuando se convirtió en una república independiente. El siglo XIX y principios del XX
-- estuvieron marcados por la inestabilidad política y gobiernos autoritarios (caudillismo).
-- El descubrimiento y explotación de grandes reservas de petróleo a principios del siglo XX
-- transformó la economía y la sociedad venezolana. Tras un período de democracia
-- (1958-1998), Hugo Chávez fue elegido presidente en 1998, iniciando la "Revolución Bolivariana".
-- Desde entonces, y continuando bajo su sucesor Nicolás Maduro, el país ha experimentado
-- una profunda crisis política, económica y social.
--
-- Datos Adicionales:
-- El español es el idioma oficial. Existen también numerosas lenguas indígenas. La
-- población es mayoritariamente mestiza, con influencias europeas (españolas, italianas,
-- portuguesas), africanas e indígenas. La religión predominante es el catolicismo romano.
-- Venezuela posee las mayores reservas probadas de petróleo del mundo, lo que ha dominado
-- su economía, haciéndola vulnerable a las fluctuaciones de precios. Es miembro fundador
-- de la OPEP. El país es conocido por su música (joropo), belleza natural (Salto Ángel,
-- archipiélago de Los Roques) y por haber ganado numerosos concursos de belleza
-- internacionales.
--
*/
