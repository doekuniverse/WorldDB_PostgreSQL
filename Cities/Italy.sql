-- SQL Script to insert a representative sample of significant cities and towns (comuni) for Italy (IT).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Italy (IT).

-- NOTE: Italy has nearly 8,000 municipalities (comuni). This list includes the capital, regional capitals,
-- provincial capitals, and a broad sample of major cities and significant towns. Listing every single locality is IMPOSSIBLE.
-- Postal codes (CAP) are 5 digits; examples or '00000' placeholder are provided.

-- Inserting cities for Italy (IT) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Regional Capitals / Major Cities
('Rome (Roma)', (SELECT id FROM world_countries WHERE iso_code_2 = 'IT'), '00100'), -- National Capital (Lazio Region Capital)
('Milan (Milano)', (SELECT id FROM world_countries WHERE iso_code_2 = 'IT'), '20100'), -- Lombardy Region Capital
('Naples (Napoli)', (SELECT id FROM world_countries WHERE iso_code_2 = 'IT'), '80100'), -- Campania Region Capital
('Turin (Torino)', (SELECT id FROM world_countries WHERE iso_code_2 = 'IT'), '10100'), -- Piedmont Region Capital
('Palermo', (SELECT id FROM world_countries WHERE iso_code_2 = 'IT'), '90100'), -- Sicily Region Capital
('Genoa (Genova)', (SELECT id FROM world_countries WHERE iso_code_2 = 'IT'), '16100'), -- Liguria Region Capital
('Bologna', (SELECT id FROM world_countries WHERE iso_code_2 = 'IT'), '40100'), -- Emilia-Romagna Region Capital
('Florence (Firenze)', (SELECT id FROM world_countries WHERE iso_code_2 = 'IT'), '50100'), -- Tuscany Region Capital
('Bari', (SELECT id FROM world_countries WHERE iso_code_2 = 'IT'), '70100'), -- Apulia Region Capital
('Catania', (SELECT id FROM world_countries WHERE iso_code_2 = 'IT'), '95100'), -- Sicily (Major city)
('Venice (Venezia)', (SELECT id FROM world_countries WHERE iso_code_2 = 'IT'), '30100'), -- Veneto Region Capital
('Verona', (SELECT id FROM world_countries WHERE iso_code_2 = 'IT'), '37100'), -- Veneto (Major city)
('Messina', (SELECT id FROM world_countries WHERE iso_code_2 = 'IT'), '98100'), -- Sicily (Major city)
('Padua (Padova)', (SELECT id FROM world_countries WHERE iso_code_2 = 'IT'), '35100'), -- Veneto (Major city)
('Trieste', (SELECT id FROM world_countries WHERE iso_code_2 = 'IT'), '34100'), -- Friuli-Venezia Giulia Region Capital
('Brescia', (SELECT id FROM world_countries WHERE iso_code_2 = 'IT'), '25100'), -- Lombardy
('Parma', (SELECT id FROM world_countries WHERE iso_code_2 = 'IT'), '43100'), -- Emilia-Romagna
('Taranto', (SELECT id FROM world_countries WHERE iso_code_2 = 'IT'), '74100'), -- Apulia
('Prato', (SELECT id FROM world_countries WHERE iso_code_2 = 'IT'), '59100'), -- Tuscany
('Modena', (SELECT id FROM world_countries WHERE iso_code_2 = 'IT'), '41100'), -- Emilia-Romagna
('Reggio Calabria', (SELECT id FROM world_countries WHERE iso_code_2 = 'IT'), '89100'), -- Calabria Region Capital
('Reggio Emilia', (SELECT id FROM world_countries WHERE iso_code_2 = 'IT'), '42100'), -- Emilia-Romagna
('Perugia', (SELECT id FROM world_countries WHERE iso_code_2 = 'IT'), '06100'), -- Umbria Region Capital
('Ravenna', (SELECT id FROM world_countries WHERE iso_code_2 = 'IT'), '48100'), -- Emilia-Romagna (UNESCO sites)
('Livorno', (SELECT id FROM world_countries WHERE iso_code_2 = 'IT'), '57100'), -- Tuscany (Major port)
('Cagliari', (SELECT id FROM world_countries WHERE iso_code_2 = 'IT'), '09100'), -- Sardinia Region Capital
('Foggia', (SELECT id FROM world_countries WHERE iso_code_2 = 'IT'), '71100'), -- Apulia
('Rimini', (SELECT id FROM world_countries WHERE iso_code_2 = 'IT'), '47900'), -- Emilia-Romagna (Coastal resort)
('Salerno', (SELECT id FROM world_countries WHERE iso_code_2 = 'IT'), '84100'), -- Campania
('Ferrara', (SELECT id FROM world_countries WHERE iso_code_2 = 'IT'), '44100'), -- Emilia-Romagna (UNESCO site)
('Sassari', (SELECT id FROM world_countries WHERE iso_code_2 = 'IT'), '07100'), -- Sardinia
('Latina', (SELECT id FROM world_countries WHERE iso_code_2 = 'IT'), '04100'), -- Lazio
('Giugliano in Campania', (SELECT id FROM world_countries WHERE iso_code_2 = 'IT'), '80014'), -- Campania (Naples Metro)
('Monza', (SELECT id FROM world_countries WHERE iso_code_2 = 'IT'), '20900'), -- Lombardy (Milan Metro, F1 track)
('Syracuse (Siracusa)', (SELECT id FROM world_countries WHERE iso_code_2 = 'IT'), '96100'), -- Sicily (UNESCO site)
('Pescara', (SELECT id FROM world_countries WHERE iso_code_2 = 'IT'), '65100'), -- Abruzzo Region (Largest city)
('Bergamo', (SELECT id FROM world_countries WHERE iso_code_2 = 'IT'), '24100'), -- Lombardy
('Forlì', (SELECT id FROM world_countries WHERE iso_code_2 = 'IT'), '47100'), -- Emilia-Romagna
('Trento', (SELECT id FROM world_countries WHERE iso_code_2 = 'IT'), '38100'), -- Trentino-Alto Adige/Südtirol Region Capital (Trentino)
('Vicenza', (SELECT id FROM world_countries WHERE iso_code_2 = 'IT'), '36100'), -- Veneto (UNESCO site - Palladian Villas)
('Terni', (SELECT id FROM world_countries WHERE iso_code_2 = 'IT'), '05100'), -- Umbria
('Bolzano (Bozen)', (SELECT id FROM world_countries WHERE iso_code_2 = 'IT'), '39100'), -- Trentino-Alto Adige/Südtirol (Alto Adige/Südtirol capital)
('Novara', (SELECT id FROM world_countries WHERE iso_code_2 = 'IT'), '28100'), -- Piedmont
('Piacenza', (SELECT id FROM world_countries WHERE iso_code_2 = 'IT'), '29100'), -- Emilia-Romagna
('Ancona', (SELECT id FROM world_countries WHERE iso_code_2 = 'IT'), '60100'), -- Marche Region Capital
('Andria', (SELECT id FROM world_countries WHERE iso_code_2 = 'IT'), '76123'), -- Apulia (Co-capital of Barletta-Andria-Trani)
('Udine', (SELECT id FROM world_countries WHERE iso_code_2 = 'IT'), '33100'), -- Friuli-Venezia Giulia
('Arezzo', (SELECT id FROM world_countries WHERE iso_code_2 = 'IT'), '52100'), -- Tuscany
('Cesena', (SELECT id FROM world_countries WHERE iso_code_2 = 'IT'), '47521'), -- Emilia-Romagna
('Lecce', (SELECT id FROM world_countries WHERE iso_code_2 = 'IT'), '73100'), -- Apulia ("Florence of the South")
('Pisa', (SELECT id FROM world_countries WHERE iso_code_2 = 'IT'), '56100'), -- Tuscany (Leaning Tower)
('La Spezia', (SELECT id FROM world_countries WHERE iso_code_2 = 'IT'), '19100'), -- Liguria (Naval base, near Cinque Terre)
('Catanzaro', (SELECT id FROM world_countries WHERE iso_code_2 = 'IT'), '88100'), -- Calabria Region Capital
('Potenza', (SELECT id FROM world_countries WHERE iso_code_2 = 'IT'), '85100'), -- Basilicata Region Capital
('L''Aquila', (SELECT id FROM world_countries WHERE iso_code_2 = 'IT'), '67100'), -- Abruzzo Region Capital
('Campobasso', (SELECT id FROM world_countries WHERE iso_code_2 = 'IT'), '86100'), -- Molise Region Capital
('Aosta', (SELECT id FROM world_countries WHERE iso_code_2 = 'IT'), '11100'); -- Aosta Valley Region Capital

-- End of Italy city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Italy ==
-- ====================================
--
-- Descripción General:
-- Italia (Italy) es un país ubicado en el sur de Europa, que consiste principalmente
-- en la península itálica con forma de bota que se adentra en el Mar Mediterráneo,
-- junto con dos grandes islas, Sicilia y Cerdeña, y numerosas islas más pequeñas.
-- Limita con Francia, Suiza, Austria y Eslovenia al norte, a través de los Alpes.
-- También rodea a los microestados de San Marino y la Ciudad del Vaticano. Italia
-- es famosa por su inmenso legado histórico y cultural (Imperio Romano, Renacimiento),
-- su arte, arquitectura, música, diseño, moda y gastronomía. Es una república
-- parlamentaria y miembro fundador de la Unión Europea y la OTAN.
--
-- Ciudades Principales:
-- * Roma (Rome): La capital y ciudad más grande, centro histórico del Imperio Romano
--   y de la Iglesia Católica (con la Ciudad del Vaticano en su interior). Famosa
--   por el Coliseo, el Foro Romano, etc.
-- * Milán (Milan): Segunda ciudad más grande, capital económica y de la moda de Italia.
-- * Nápoles (Naples): Ciudad más grande del sur de Italia, rica en historia y cultura,
--   cerca del Vesubio y Pompeya.
-- * Turín (Turin): Importante centro industrial en el norte.
-- * Palermo: Principal ciudad de Sicilia.
-- * Génova (Genoa): Importante puerto histórico en Liguria.
-- * Bolonia (Bologna): Famosa por su universidad (una de las más antiguas del mundo) y su gastronomía.
-- * Florencia (Florence): Cuna del Renacimiento, repleta de arte y arquitectura (Patrimonio de la Humanidad).
-- * Venecia (Venice): Ciudad única construida sobre canales (Patrimonio de la Humanidad).
-- * La lista incluye también las capitales de todas las regiones, muchas capitales
--   de provincia y otras ciudades muy grandes o significativas.
--
-- Un Poco de Historia:
-- Hogar de diversas culturas antiguas (etruscos, latinos, griegos). La República
-- Romana y luego el Imperio Romano dominaron gran parte de Europa y el Mediterráneo.
-- Tras la caída del Imperio Romano de Occidente, la península se fragmentó en
-- numerosos estados (reinos, ducados, ciudades-estado como Venecia y Florencia,
-- Estados Pontificios). El Renacimiento floreció en las ciudades italianas. La
-- unificación de Italia (Risorgimento) se logró en 1861 bajo el Reino de Cerdeña
-- (Casa de Saboya). Italia participó en la Primera Guerra Mundial. El régimen
-- fascista de Benito Mussolini llegó al poder en los años 20 y se alió con Alemania
-- en la Segunda Guerra Mundial. Tras la guerra, se abolió la monarquía y se
-- estableció la República Italiana en 1946. Fue miembro fundador de la Comunidad
-- Económica Europea (ahora UE).
--
-- Datos Adicionales:
-- El italiano es el idioma oficial. Italia es mundialmente famosa por su cocina
-- (pasta, pizza, etc.), vinos, moda, diseño de automóviles, ópera y arte. Posee
-- el mayor número de sitios declarados Patrimonio de la Humanidad por la UNESCO.
--
*/
