-- SQL Script to insert a representative sample of significant settlements for the British Virgin Islands (VG).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Virgin Islands (British) (VG).

-- NOTE: The British Virgin Islands (BVI) consist of the main islands of Tortola, Virgin Gorda, Anegada, and Jost Van Dyke, along with over 50 other smaller islands and cays.
-- Listing every single small settlement or locality is impractical for this format. This list focuses on the capital
-- and the primary settlements on the other main inhabited islands.
-- The BVI uses postal codes (e.g., VG1110). Representative codes for the main settlement/island area are provided where possible,
-- but finer granularity exists.

-- Inserting settlements for British Virgin Islands (VG) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Main Settlements on Major Inhabited Islands
('Road Town', (SELECT id FROM world_countries WHERE iso_code_2 = 'VG'), 'VG1110'), -- Capital (on Tortola island)
('Spanish Town', (SELECT id FROM world_countries WHERE iso_code_2 = 'VG'), 'VG1150'), -- Main settlement on Virgin Gorda island
('The Settlement', (SELECT id FROM world_countries WHERE iso_code_2 = 'VG'), 'VG1130'), -- Main settlement on Anegada island
('Great Harbour', (SELECT id FROM world_countries WHERE iso_code_2 = 'VG'), 'VG1140'); -- Main settlement on Jost Van Dyke island


-- End of British Virgin Islands settlement list (Representative Sample)

/*
-- ===========================================================
-- ==    Información sobre las Islas Vírgenes Británicas    ==
-- ===========================================================
--
-- Descripción General:
-- Las Islas Vírgenes Británicas (British Virgin Islands, BVI) son un Territorio Británico
-- de Ultramar ubicado en el Mar Caribe, al este de Puerto Rico y las Islas Vírgenes de
-- los Estados Unidos. Forman parte del archipiélago de las Islas Vírgenes. El territorio
-- comprende cuatro islas principales (Tórtola, Virgen Gorda, Anegada y Jost Van Dyke)
-- y más de 50 islas y cayos más pequeños, muchos deshabitados. Son conocidas por sus
-- playas, navegación a vela y como centro financiero extraterritorial.
--
-- Asentamientos Principales:
-- * Road Town: La capital y asentamiento más grande, ubicada en la isla de Tórtola.
--   Es el centro administrativo y comercial.
-- * Spanish Town: El segundo asentamiento más grande, ubicado en Virgen Gorda.
-- * The Settlement: El principal y casi único asentamiento en la isla de Anegada.
-- * Great Harbour: El principal asentamiento en la isla de Jost Van Dyke.
--
-- Un Poco de Historia:
-- Habitadas originalmente por pueblos arawak y caribes. Fueron avistadas por Cristóbal
-- Colón en 1493. Durante los siglos siguientes, diversas potencias europeas (España,
-- Países Bajos, Francia, Dinamarca, Inglaterra) compitieron por el control. Los
-- neerlandeses establecieron un asentamiento permanente en Tórtola alrededor de 1648,
-- pero fueron expulsados por corsarios ingleses en 1672, y las islas pasaron a formar
-- parte de las Islas de Sotavento británicas. Se desarrolló una economía de plantación
-- basada en la caña de azúcar y la esclavitud africana. Tras la abolición de la
-- esclavitud, la economía declinó. Las islas fueron administradas como parte de la
-- Colonia Federal de las Islas de Sotavento y luego brevemente con San Cristóbal y Nieves
-- antes de convertirse en una colonia de la Corona separada en 1960, obteniendo mayor
-- autonomía en 1967. Siguen siendo un Territorio Británico de Ultramar con autogobierno interno.
--
-- Datos Adicionales:
-- El inglés es el idioma oficial. La población es mayoritariamente de ascendencia
-- africana o mixta. La religión principal es el cristianismo (metodista, anglicano,
-- católico, etc.). La economía depende en gran medida de dos pilares: el turismo
-- (especialmente yates, buceo y resorts de lujo) y los servicios financieros
-- extraterritoriales (registro de empresas offshore). La moneda oficial es el dólar
-- estadounidense (USD), aunque el territorio sea británico. Como Territorio Británico
-- de Ultramar, el jefe de estado es el monarca británico, representado por un Gobernador,
-- mientras que el jefe de gobierno es un Premier elegido localmente.
--
*/
