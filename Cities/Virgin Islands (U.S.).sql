-- SQL Script to insert a representative sample of significant towns for the U.S. Virgin Islands (VI).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Virgin Islands (U.S.) (VI).

-- NOTE: The U.S. Virgin Islands (USVI) consist of the main islands of Saint Croix, Saint John, and Saint Thomas, along with many smaller islands and cays.
-- Listing every single small settlement, estate, or locality is impractical for this format. This list focuses on the capital
-- and the primary towns/administrative centers on the main inhabited islands.
-- The USVI uses standard U.S. ZIP Codes (5-digit format, 008xx range). A representative code for the main town area is provided.

-- Inserting towns for U.S. Virgin Islands (VI) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Main Towns on Major Inhabited Islands
('Charlotte Amalie', (SELECT id FROM world_countries WHERE iso_code_2 = 'VI'), '00802'), -- Territorial Capital (on Saint Thomas island)
('Christiansted', (SELECT id FROM world_countries WHERE iso_code_2 = 'VI'), '00820'), -- Main town on Saint Croix island (historic capital)
('Frederiksted', (SELECT id FROM world_countries WHERE iso_code_2 = 'VI'), '00840'), -- Second main town on Saint Croix island
('Cruz Bay', (SELECT id FROM world_countries WHERE iso_code_2 = 'VI'), '00830'); -- Main town on Saint John island


-- End of U.S. Virgin Islands town list (Representative Sample)

/*
-- ===========================================================
-- ==    Información sobre las Islas Vírgenes de EE. UU.    ==
-- ===========================================================
--
-- Descripción General:
-- Las Islas Vírgenes de los Estados Unidos (United States Virgin Islands, USVI) son un
-- territorio insular no incorporado y organizado de los Estados Unidos, ubicado en el
-- Mar Caribe, al este de Puerto Rico y al oeste de las Islas Vírgenes Británicas.
-- Forman parte del archipiélago de las Islas Vírgenes. El territorio consta de tres
-- islas principales (Saint Thomas, Saint John y Saint Croix) y varias islas menores
-- circundantes. Son conocidas por sus playas, arrecifes de coral y clima tropical.
--
-- Asentamientos Principales:
-- * Charlotte Amalie: La capital territorial y ciudad más grande, ubicada en la isla
--   de Saint Thomas. Es un importante puerto de cruceros y centro comercial.
-- * Christiansted: Uno de los dos pueblos principales en la isla de Saint Croix, conocido
--   por su arquitectura colonial danesa y su sitio histórico nacional.
-- * Frederiksted: El otro pueblo principal en Saint Croix, ubicado en el extremo oeste
--   de la isla.
-- * Cruz Bay: El principal pueblo y puerto en la isla de Saint John, gran parte de la
--   cual está protegida como Parque Nacional de las Islas Vírgenes.
--
-- Un Poco de Historia:
-- Habitadas originalmente por pueblos ciboney, caribes y arawaks. Fueron avistadas por
-- Cristóbal Colón en 1493. Durante los siglos siguientes, diversas potencias europeas
-- intentaron colonizar las islas. Dinamarca (a través de la Compañía Danesa de las
-- Indias Occidentales y Guinea) colonizó Saint Thomas (1672), Saint John (1718) y
-- compró Saint Croix a Francia (1733). Las islas, conocidas como las Indias Occidentales
-- Danesas, desarrollaron una economía de plantación basada en la caña de azúcar y la
-- esclavitud africana. Tras la abolición de la esclavitud, la economía declinó. Estados
-- Unidos compró las islas a Dinamarca en 1917 por razones estratégicas durante la
-- Primera Guerra Mundial. Los habitantes recibieron la ciudadanía estadounidense en 1927.
--
-- Datos Adicionales:
-- El inglés es el idioma principal y oficial. También se hablan criollos locales. La
-- población es mayoritariamente de ascendencia afrocaribeña, con minorías de origen
-- europeo y puertorriqueño/latino. La religión principal es el cristianismo. La economía
-- depende en gran medida del turismo (cruceros, resorts, yates). Anteriormente, la
-- refinería de petróleo Hovensa en Saint Croix fue un pilar económico importante, pero
-- cerró (aunque ha habido intentos de reapertura). Como territorio no incorporado, los
-- residentes son ciudadanos estadounidenses pero generalmente no pueden votar en las
-- elecciones presidenciales y tienen representación sin voto en el Congreso de EE. UU.
-- El jefe de estado es el Presidente de los Estados Unidos, y eligen localmente un
-- Gobernador y una legislatura territorial. La moneda es el dólar estadounidense (USD).
-- Conducen por la izquierda, a diferencia del resto de EE. UU.
--
*/
