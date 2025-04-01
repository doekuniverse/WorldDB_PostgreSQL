-- SQL Script to insert a representative sample of significant cities and towns for Ireland (IE).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Ireland (IE).

-- NOTE: This list includes the capital, major cities, county towns, and significant towns.
-- Listing every single village or townland is IMPOSSIBLE.
-- Eircodes (postal codes) are unique to addresses, not towns; using '0000' as a placeholder.

-- Inserting cities for Ireland (IE) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Major Cities / County Towns
('Dublin', (SELECT id FROM world_countries WHERE iso_code_2 = 'IE'), '0000'), -- National Capital (County Dublin)
('Cork', (SELECT id FROM world_countries WHERE iso_code_2 = 'IE'), '0000'), -- Cork County / City
('Limerick', (SELECT id FROM world_countries WHERE iso_code_2 = 'IE'), '0000'), -- Limerick County / City
('Galway', (SELECT id FROM world_countries WHERE iso_code_2 = 'IE'), '0000'), -- Galway County / City
('Waterford', (SELECT id FROM world_countries WHERE iso_code_2 = 'IE'), '0000'), -- Waterford County / City
('Drogheda', (SELECT id FROM world_countries WHERE iso_code_2 = 'IE'), '0000'), -- Louth County (Large town)
('Dundalk', (SELECT id FROM world_countries WHERE iso_code_2 = 'IE'), '0000'), -- Louth County Town
('Swords', (SELECT id FROM world_countries WHERE iso_code_2 = 'IE'), '0000'), -- Fingal County Town (Dublin Region)
('Bray', (SELECT id FROM world_countries WHERE iso_code_2 = 'IE'), '0000'), -- Wicklow County (Large town)
('Navan', (SELECT id FROM world_countries WHERE iso_code_2 = 'IE'), '0000'), -- Meath County Town (An Uaimh)
('Ennis', (SELECT id FROM world_countries WHERE iso_code_2 = 'IE'), '0000'), -- Clare County Town
('Tralee', (SELECT id FROM world_countries WHERE iso_code_2 = 'IE'), '0000'), -- Kerry County Town
('Kilkenny', (SELECT id FROM world_countries WHERE iso_code_2 = 'IE'), '0000'), -- Kilkenny County Town / City status
('Carlow', (SELECT id FROM world_countries WHERE iso_code_2 = 'IE'), '0000'), -- Carlow County Town
('Naas', (SELECT id FROM world_countries WHERE iso_code_2 = 'IE'), '0000'), -- Kildare County Town
('Sligo', (SELECT id FROM world_countries WHERE iso_code_2 = 'IE'), '0000'), -- Sligo County Town
('Athlone', (SELECT id FROM world_countries WHERE iso_code_2 = 'IE'), '0000'), -- Westmeath County (Major town on Shannon)
('Mullingar', (SELECT id FROM world_countries WHERE iso_code_2 = 'IE'), '0000'), -- Westmeath County Town
('Wexford', (SELECT id FROM world_countries WHERE iso_code_2 = 'IE'), '0000'), -- Wexford County Town
('Clonmel', (SELECT id FROM world_countries WHERE iso_code_2 = 'IE'), '0000'), -- Tipperary County Town (South)
('Nenagh', (SELECT id FROM world_countries WHERE iso_code_2 = 'IE'), '0000'), -- Tipperary County Town (North)
('Letterkenny', (SELECT id FROM world_countries WHERE iso_code_2 = 'IE'), '0000'), -- Donegal County (Largest town)
('Portlaoise', (SELECT id FROM world_countries WHERE iso_code_2 = 'IE'), '0000'), -- Laois County Town
('Tullamore', (SELECT id FROM world_countries WHERE iso_code_2 = 'IE'), '0000'), -- Offaly County Town
('Longford', (SELECT id FROM world_countries WHERE iso_code_2 = 'IE'), '0000'), -- Longford County Town
('Castlebar', (SELECT id FROM world_countries WHERE iso_code_2 = 'IE'), '0000'), -- Mayo County Town
('Carrick-on-Shannon', (SELECT id FROM world_countries WHERE iso_code_2 = 'IE'), '0000'), -- Leitrim County Town
('Roscommon', (SELECT id FROM world_countries WHERE iso_code_2 = 'IE'), '0000'), -- Roscommon County Town
('Monaghan', (SELECT id FROM world_countries WHERE iso_code_2 = 'IE'), '0000'), -- Monaghan County Town
('Cavan', (SELECT id FROM world_countries WHERE iso_code_2 = 'IE'), '0000'), -- Cavan County Town
('Lifford', (SELECT id FROM world_countries WHERE iso_code_2 = 'IE'), '0000'), -- Donegal County Town (Smaller than Letterkenny)
('Wicklow', (SELECT id FROM world_countries WHERE iso_code_2 = 'IE'), '0000'), -- Wicklow County Town

-- Other Significant Towns (Sample)
('Celbridge', (SELECT id FROM world_countries WHERE iso_code_2 = 'IE'), '0000'), -- Kildare County
('Newbridge', (SELECT id FROM world_countries WHERE iso_code_2 = 'IE'), '0000'), -- Kildare County
('Ballina', (SELECT id FROM world_countries WHERE iso_code_2 = 'IE'), '0000'), -- Mayo County
('Enniscorthy', (SELECT id FROM world_countries WHERE iso_code_2 = 'IE'), '0000'), -- Wexford County
('Shannon', (SELECT id FROM world_countries WHERE iso_code_2 = 'IE'), '0000'), -- Clare County (Airport town)
('Arklow', (SELECT id FROM world_countries WHERE iso_code_2 = 'IE'), '0000'), -- Wicklow County
('Killarney', (SELECT id FROM world_countries WHERE iso_code_2 = 'IE'), '0000'), -- Kerry County (Major tourist town)
('Thurles', (SELECT id FROM world_countries WHERE iso_code_2 = 'IE'), '0000'); -- Tipperary County

-- End of Ireland city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Ireland ==
-- ====================================
--
-- Descripción General:
-- Irlanda (Ireland), oficialmente República de Irlanda, es un país soberano que ocupa
-- aproximadamente cinco sextas partes de la isla de Irlanda, al oeste de Gran Bretaña.
-- La sexta parte restante pertenece a Irlanda del Norte, parte del Reino Unido. Es una
-- isla con una llanura central rodeada por colinas y montañas costeras bajas. Es
-- conocida como la "Isla Esmeralda" por su exuberante vegetación. Es una república
-- parlamentaria y miembro de la Unión Europea.
--
-- Ciudades Principales:
-- * Dublín (Dublin): La capital y ciudad más grande, ubicada en la costa este. Es el
--   centro político, económico, cultural y de transporte del país.
-- * Cork: La segunda ciudad más grande, ubicada en la costa sur.
-- * Limerick, Galway y Waterford: Otras ciudades importantes con estatus de ciudad (city status).
-- * Drogheda, Dundalk, Swords, Bray: Grandes pueblos que a menudo superan en población
--   a algunas de las ciudades con estatus oficial.
-- * Ennis, Tralee, Kilkenny, Carlow, Naas, Sligo, etc.: Capitales de condado (county towns)
--   y centros regionales importantes.
-- * La lista incluye también las demás capitales de condado y otros pueblos significativos.
--
-- Un Poco de Historia:
-- Habitada por pueblos celtas. El cristianismo fue introducido por San Patricio en el
-- siglo V. Sufrió invasiones vikingas a partir del siglo VIII. La invasión normanda
-- en el siglo XII marcó el inicio de siglos de influencia y control inglés y luego
-- británico. La Gran Hambruna (Great Famine) de la década de 1840 devastó la población.
-- El movimiento nacionalista irlandés creció en el siglo XIX y principios del XX,
-- culminando en el Alzamiento de Pascua de 1916 y la Guerra de Independencia
-- (1919-1921). El Tratado Anglo-Irlandés de 1921 llevó a la partición de la isla y
-- al establecimiento del Estado Libre Irlandés (luego República de Irlanda) como un
-- dominio autónomo. Una breve guerra civil siguió al tratado. Irlanda se convirtió
-- formalmente en república en 1949. El conflicto en Irlanda del Norte ("The Troubles")
-- afectó a la República durante décadas. Irlanda se unió a la Comunidad Económica
-- Europea (ahora UE) en 1973 y experimentó un rápido crecimiento económico ("Tigre Celta")
-- a finales del siglo XX, seguido de una severa crisis financiera.
--
-- Datos Adicionales:
-- Los idiomas oficiales son el irlandés (gaélico) y el inglés, predominando este último
-- en el uso diario. Irlanda es famosa por su literatura (Joyce, Yeats, Beckett, Wilde),
-- su música tradicional, los pubs, la cerveza Guinness y el whiskey irlandés. El Día
-- de San Patricio es una fiesta nacional celebrada mundialmente.
--
*/
