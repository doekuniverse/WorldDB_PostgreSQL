-- SQL Script to insert a representative sample of significant cities and towns for the United States of America (US).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains United States of America (US).

-- NOTE: The United States has tens of thousands of incorporated cities, towns, villages, census-designated places (CDPs), and other settlements across its 50 states and federal district.
-- Listing every single settlement is impractical for this format. This list focuses on the national capital,
-- the largest cities by population, a sample of state capitals, and a sample of other significant cities across different regions.
-- The US uses 5-digit ZIP Codes (NNNNN). A representative code for the city center is provided where possible,
-- but cities often span multiple ZIP codes. Using '00000' as a placeholder if a primary code is not readily available for this sample.

-- Inserting cities/towns for the United States of America (US) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- National Capital & Largest Cities
('Washington, D.C.', (SELECT id FROM world_countries WHERE iso_code_2 = 'US'), '20001'), -- National Capital (District of Columbia)
('New York City', (SELECT id FROM world_countries WHERE iso_code_2 = 'US'), '10001'), -- Largest city by population (New York State)
('Los Angeles', (SELECT id FROM world_countries WHERE iso_code_2 = 'US'), '90001'), -- Second largest city (California)
('Chicago', (SELECT id FROM world_countries WHERE iso_code_2 = 'US'), '60601'), -- Third largest city (Illinois)
('Houston', (SELECT id FROM world_countries WHERE iso_code_2 = 'US'), '77001'), -- Fourth largest city (Texas)
('Phoenix', (SELECT id FROM world_countries WHERE iso_code_2 = 'US'), '85001'), -- Fifth largest city (Arizona State Capital)
('Philadelphia', (SELECT id FROM world_countries WHERE iso_code_2 = 'US'), '19101'), -- Sixth largest city (Pennsylvania)
('San Antonio', (SELECT id FROM world_countries WHERE iso_code_2 = 'US'), '78201'), -- Seventh largest city (Texas)
('San Diego', (SELECT id FROM world_countries WHERE iso_code_2 = 'US'), '92101'), -- Eighth largest city (California)
('Dallas', (SELECT id FROM world_countries WHERE iso_code_2 = 'US'), '75201'), -- Ninth largest city (Texas)

-- Sample of State Capitals (Not already listed above)
('Sacramento', (SELECT id FROM world_countries WHERE iso_code_2 = 'US'), '95814'), -- California State Capital
('Austin', (SELECT id FROM world_countries WHERE iso_code_2 = 'US'), '78701'), -- Texas State Capital
('Denver', (SELECT id FROM world_countries WHERE iso_code_2 = 'US'), '80202'), -- Colorado State Capital
('Boston', (SELECT id FROM world_countries WHERE iso_code_2 = 'US'), '02108'), -- Massachusetts State Capital
('Atlanta', (SELECT id FROM world_countries WHERE iso_code_2 = 'US'), '30303'), -- Georgia State Capital
('Tallahassee', (SELECT id FROM world_countries WHERE iso_code_2 = 'US'), '32301'), -- Florida State Capital
('Columbus', (SELECT id FROM world_countries WHERE iso_code_2 = 'US'), '43215'), -- Ohio State Capital
('Juneau', (SELECT id FROM world_countries WHERE iso_code_2 = 'US'), '99801'), -- Alaska State Capital
('Honolulu', (SELECT id FROM world_countries WHERE iso_code_2 = 'US'), '96813'), -- Hawaii State Capital

-- Other Significant Cities (Sample from different regions)
('Seattle', (SELECT id FROM world_countries WHERE iso_code_2 = 'US'), '98101'), -- Major city in Pacific Northwest (Washington State)
('San Francisco', (SELECT id FROM world_countries WHERE iso_code_2 = 'US'), '94102'), -- Major city / Tech Hub (California)
('Miami', (SELECT id FROM world_countries WHERE iso_code_2 = 'US'), '33101'), -- Major city in Southeast (Florida)
('Detroit', (SELECT id FROM world_countries WHERE iso_code_2 = 'US'), '48201'), -- Major city in Midwest (Michigan)
('Minneapolis', (SELECT id FROM world_countries WHERE iso_code_2 = 'US'), '55401'), -- Major city in Midwest (Minnesota)
('New Orleans', (SELECT id FROM world_countries WHERE iso_code_2 = 'US'), '70112'), -- Major city / Cultural Hub (Louisiana)
('Las Vegas', (SELECT id FROM world_countries WHERE iso_code_2 = 'US'), '89101'); -- Major entertainment/tourism city (Nevada)


-- End of United States city/town list (Representative Sample)

/*
-- ===========================================================
-- ==    Información sobre los Estados Unidos de América    ==
-- ===========================================================
--
-- Descripción General:
-- Los Estados Unidos de América (United States of America, USA), comúnmente conocidos
-- como Estados Unidos (US), son una república federal constitucional compuesta por 50
-- estados, un distrito federal (Washington D.C., la capital), cinco territorios
-- principales y varias posesiones insulares (incluyendo las Islas Ultramarinas Menores).
-- Ubicado principalmente en América del Norte, se extiende desde el Océano Atlántico
-- hasta el Océano Pacífico. Limita con Canadá al norte y México al sur. El estado de
-- Alaska está en el noroeste del continente y el estado de Hawái es un archipiélago
-- en el Pacífico. El país posee una geografía extremadamente diversa, con llanuras
-- centrales, montañas en el oeste (Rocosas, Sierra Nevada), montañas en el este
-- (Apalaches), desiertos, costas extensas y grandes lagos.
--
-- Ciudades Principales:
-- * Washington D.C.: La capital federal, sede del gobierno nacional.
-- * Nueva York (New York City): La ciudad más poblada, centro financiero, cultural y
--   mediático global.
-- * Los Ángeles: La segunda ciudad más poblada, centro de la industria del entretenimiento.
-- * Chicago: La ciudad más grande del Medio Oeste, importante centro de transporte y finanzas.
-- * Houston, Phoenix, Filadelfia, San Antonio, San Diego, Dallas: Otras de las ciudades
--   más pobladas, con importantes roles económicos regionales.
-- * Cada uno de los 50 estados tiene su propia capital (e.g., Sacramento en California,
--   Austin en Texas, Denver en Colorado, Boston en Massachusetts, Atlanta en Georgia).
--
-- Un Poco de Historia:
-- Habitada por pueblos indígenas durante miles de años. La colonización europea comenzó
-- en el siglo XVI. Las Trece Colonias británicas en la costa atlántica declararon su
-- independencia en 1776, liderando a la Guerra de Independencia y la formación de los
-- Estados Unidos. El país se expandió hacia el oeste durante el siglo XIX a través de
-- compras territoriales, tratados y guerras, desplazando a las poblaciones nativas.
-- La Guerra Civil (1861-1865) se libró por la esclavitud y los derechos de los estados,
-- resultando en la abolición de la esclavitud y la preservación de la unión. Se convirtió
-- en una potencia industrial a finales del siglo XIX y principios del XX. Jugó un papel
-- decisivo en las dos Guerras Mundiales y emergió como una superpotencia global durante
-- la Guerra Fría. Ha sido un centro de inmigración, innovación tecnológica y movimientos
-- por los derechos civiles.
--
-- Datos Adicionales:
-- Aunque no hay un idioma oficial a nivel federal, el inglés es el idioma predominante
-- y de facto. El español es el segundo idioma más hablado. La población es
-- extremadamente diversa étnica y racialmente. La libertad religiosa está protegida
-- constitucionalmente, con una mayoría cristiana pero una creciente diversidad religiosa
-- y secularismo. Estados Unidos tiene la economía nacional más grande del mundo y una
-- influencia cultural, política y militar global significativa. Es una democracia
-- representativa con un sistema presidencialista y federal.
--
*/
