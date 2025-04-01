-- SQL Script to insert a representative sample of significant cities and towns for Germany (DE).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Germany (DE).

-- NOTE: Germany has over 10,000 municipalities. This list includes the capital, state capitals,
-- major cities (Großstädte), and a broad sample of significant towns. Listing every single locality is IMPOSSIBLE.
-- Postal codes (PLZ) are 5 digits; examples or '00000' placeholder are provided.

-- Inserting cities for Germany (DE) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & State Capitals (Landeshauptstädte) / Major Cities (Großstädte > 200k pop approx)
('Berlin', (SELECT id FROM world_countries WHERE iso_code_2 = 'DE'), '10115'), -- National Capital & City-State
('Hamburg', (SELECT id FROM world_countries WHERE iso_code_2 = 'DE'), '20095'), -- City-State Capital
('Munich (München)', (SELECT id FROM world_countries WHERE iso_code_2 = 'DE'), '80331'), -- Bavaria State Capital
('Cologne (Köln)', (SELECT id FROM world_countries WHERE iso_code_2 = 'DE'), '50667'), -- North Rhine-Westphalia (Major City)
('Frankfurt am Main', (SELECT id FROM world_countries WHERE iso_code_2 = 'DE'), '60311'), -- Hesse (Major City, Financial Hub)
('Stuttgart', (SELECT id FROM world_countries WHERE iso_code_2 = 'DE'), '70173'), -- Baden-Württemberg State Capital
('Düsseldorf', (SELECT id FROM world_countries WHERE iso_code_2 = 'DE'), '40210'), -- North Rhine-Westphalia State Capital
('Dortmund', (SELECT id FROM world_countries WHERE iso_code_2 = 'DE'), '44135'), -- North Rhine-Westphalia
('Essen', (SELECT id FROM world_countries WHERE iso_code_2 = 'DE'), '45127'), -- North Rhine-Westphalia
('Leipzig', (SELECT id FROM world_countries WHERE iso_code_2 = 'DE'), '04109'), -- Saxony
('Bremen', (SELECT id FROM world_countries WHERE iso_code_2 = 'DE'), '28195'), -- City-State Capital
('Dresden', (SELECT id FROM world_countries WHERE iso_code_2 = 'DE'), '01067'), -- Saxony State Capital
('Hanover (Hannover)', (SELECT id FROM world_countries WHERE iso_code_2 = 'DE'), '30159'), -- Lower Saxony State Capital
('Nuremberg (Nürnberg)', (SELECT id FROM world_countries WHERE iso_code_2 = 'DE'), '90402'), -- Bavaria
('Duisburg', (SELECT id FROM world_countries WHERE iso_code_2 = 'DE'), '47051'), -- North Rhine-Westphalia
('Bochum', (SELECT id FROM world_countries WHERE iso_code_2 = 'DE'), '44787'), -- North Rhine-Westphalia
('Wuppertal', (SELECT id FROM world_countries WHERE iso_code_2 = 'DE'), '42103'), -- North Rhine-Westphalia
('Bielefeld', (SELECT id FROM world_countries WHERE iso_code_2 = 'DE'), '33602'), -- North Rhine-Westphalia
('Bonn', (SELECT id FROM world_countries WHERE iso_code_2 = 'DE'), '53111'), -- North Rhine-Westphalia (Former Capital of West Germany)
('Münster', (SELECT id FROM world_countries WHERE iso_code_2 = 'DE'), '48143'), -- North Rhine-Westphalia
('Karlsruhe', (SELECT id FROM world_countries WHERE iso_code_2 = 'DE'), '76131'), -- Baden-Württemberg
('Mannheim', (SELECT id FROM world_countries WHERE iso_code_2 = 'DE'), '68159'), -- Baden-Württemberg
('Augsburg', (SELECT id FROM world_countries WHERE iso_code_2 = 'DE'), '86150'), -- Bavaria
('Wiesbaden', (SELECT id FROM world_countries WHERE iso_code_2 = 'DE'), '65183'), -- Hesse State Capital
('Gelsenkirchen', (SELECT id FROM world_countries WHERE iso_code_2 = 'DE'), '45879'), -- North Rhine-Westphalia
('Mönchengladbach', (SELECT id FROM world_countries WHERE iso_code_2 = 'DE'), '41061'), -- North Rhine-Westphalia
('Braunschweig (Brunswick)', (SELECT id FROM world_countries WHERE iso_code_2 = 'DE'), '38100'), -- Lower Saxony
('Chemnitz', (SELECT id FROM world_countries WHERE iso_code_2 = 'DE'), '09111'), -- Saxony
('Kiel', (SELECT id FROM world_countries WHERE iso_code_2 = 'DE'), '24103'), -- Schleswig-Holstein State Capital
('Aachen', (SELECT id FROM world_countries WHERE iso_code_2 = 'DE'), '52062'), -- North Rhine-Westphalia
('Halle (Saale)', (SELECT id FROM world_countries WHERE iso_code_2 = 'DE'), '06108'), -- Saxony-Anhalt
('Magdeburg', (SELECT id FROM world_countries WHERE iso_code_2 = 'DE'), '39104'), -- Saxony-Anhalt State Capital
('Freiburg im Breisgau', (SELECT id FROM world_countries WHERE iso_code_2 = 'DE'), '79098'), -- Baden-Württemberg
('Krefeld', (SELECT id FROM world_countries WHERE iso_code_2 = 'DE'), '47798'), -- North Rhine-Westphalia
('Lübeck', (SELECT id FROM world_countries WHERE iso_code_2 = 'DE'), '23552'), -- Schleswig-Holstein (Hanseatic City, UNESCO site)
('Oberhausen', (SELECT id FROM world_countries WHERE iso_code_2 = 'DE'), '46045'), -- North Rhine-Westphalia
('Erfurt', (SELECT id FROM world_countries WHERE iso_code_2 = 'DE'), '99084'), -- Thuringia State Capital
('Mainz', (SELECT id FROM world_countries WHERE iso_code_2 = 'DE'), '55116'), -- Rhineland-Palatinate State Capital
('Rostock', (SELECT id FROM world_countries WHERE iso_code_2 = 'DE'), '18055'), -- Mecklenburg-Vorpommern (Largest city)
('Kassel', (SELECT id FROM world_countries WHERE iso_code_2 = 'DE'), '34117'), -- Hesse
('Hagen', (SELECT id FROM world_countries WHERE iso_code_2 = 'DE'), '58089'), -- North Rhine-Westphalia
('Hamm', (SELECT id FROM world_countries WHERE iso_code_2 = 'DE'), '59063'), -- North Rhine-Westphalia
('Saarbrücken', (SELECT id FROM world_countries WHERE iso_code_2 = 'DE'), '66111'), -- Saarland State Capital
('Potsdam', (SELECT id FROM world_countries WHERE iso_code_2 = 'DE'), '14467'), -- Brandenburg State Capital
('Ludwigshafen am Rhein', (SELECT id FROM world_countries WHERE iso_code_2 = 'DE'), '67059'), -- Rhineland-Palatinate
('Mülheim an der Ruhr', (SELECT id FROM world_countries WHERE iso_code_2 = 'DE'), '45468'), -- North Rhine-Westphalia
('Oldenburg', (SELECT id FROM world_countries WHERE iso_code_2 = 'DE'), '26121'), -- Lower Saxony
('Osnabrück', (SELECT id FROM world_countries WHERE iso_code_2 = 'DE'), '49074'), -- Lower Saxony
('Leverkusen', (SELECT id FROM world_countries WHERE iso_code_2 = 'DE'), '51373'), -- North Rhine-Westphalia
('Heidelberg', (SELECT id FROM world_countries WHERE iso_code_2 = 'DE'), '69115'), -- Baden-Württemberg (University city, castle)
('Schwerin', (SELECT id FROM world_countries WHERE iso_code_2 = 'DE'), '19053'), -- Mecklenburg-Vorpommern State Capital
('Darmstadt', (SELECT id FROM world_countries WHERE iso_code_2 = 'DE'), '64283'), -- Hesse
('Regensburg', (SELECT id FROM world_countries WHERE iso_code_2 = 'DE'), '93047'), -- Bavaria (UNESCO site)
('Ingolstadt', (SELECT id FROM world_countries WHERE iso_code_2 = 'DE'), '85049'), -- Bavaria
('Würzburg', (SELECT id FROM world_countries WHERE iso_code_2 = 'DE'), '97070'), -- Bavaria
('Göttingen', (SELECT id FROM world_countries WHERE iso_code_2 = 'DE'), '37073'), -- Lower Saxony (University city)
('Ulm', (SELECT id FROM world_countries WHERE iso_code_2 = 'DE'), '89073'); -- Baden-Württemberg (shared with Bavaria)

-- End of Germany city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Germany ==
-- ====================================
--
-- Descripción General:
-- Alemania (Germany) es un país ubicado en Europa Central y Occidental. Es una
-- república federal parlamentaria compuesta por 16 estados (Länder). Limita con
-- Dinamarca al norte, Polonia y Chequia al este, Austria y Suiza al sur, y Francia,
-- Luxemburgo, Bélgica y los Países Bajos al oeste. Tiene costas en el Mar del Norte
-- y el Mar Báltico. Es el país más poblado de la Unión Europea y tiene la economía
-- más grande de Europa. Su geografía varía desde las llanuras del norte hasta las
-- tierras altas centrales y los Alpes bávaros en el sur.
--
-- Ciudades Principales:
-- * Berlín: La capital y ciudad más grande, centro cultural y político.
-- * Hamburgo: Segunda ciudad más grande, importante ciudad portuaria y estado federado.
-- * Múnich (München): Capital de Baviera, tercera ciudad más grande, famosa por el Oktoberfest.
-- * Colonia (Köln): Ciudad más grande de Renania del Norte-Westfalia, conocida por su catedral.
-- * Fráncfort del Meno (Frankfurt am Main): Principal centro financiero de Alemania y Europa continental.
-- * Stuttgart, Düsseldorf, Dortmund, Essen, Leipzig, Bremen, Dresde, Hannover, Núremberg:
--   Otras grandes metrópolis y capitales estatales con gran importancia económica y cultural.
-- * La lista incluye también las capitales de todos los estados federados (Länder) y
--   muchas otras ciudades importantes (Großstädte).
--
-- Un Poco de Historia:
-- Habitada por tribus germánicas en la antigüedad. La región formó parte del Sacro
-- Imperio Romano Germánico. La Reforma Protestante (Lutero) tuvo un impacto profundo.
-- La unificación de Alemania bajo el liderazgo de Prusia se logró en 1871, formando
-- el Imperio Alemán. Tras la derrota en la Primera Guerra Mundial, se estableció la
-- República de Weimar, seguida por el ascenso del nazismo bajo Adolf Hitler, la
-- Segunda Guerra Mundial y el Holocausto. Después de la guerra, Alemania fue dividida
-- en Alemania Occidental (República Federal de Alemania, RFA) y Alemania Oriental
-- (República Democrática Alemana, RDA) durante la Guerra Fría. El país se reunificó
-- pacíficamente en 1990 tras la caída del Muro de Berlín. Alemania reunificada se ha
-- convertido en una potencia económica y un pilar de la Unión Europea.
--
-- Datos Adicionales:
-- El alemán es el idioma oficial. Alemania es conocida por su ingeniería (automóviles,
-- maquinaria), su filosofía (Kant, Hegel, Nietzsche), su música clásica (Bach,
-- Beethoven, Brahms), sus cervezas y salchichas, y sus numerosos castillos.
--
*/
