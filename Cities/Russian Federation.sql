-- SQL Script to insert a highly selective sample of major cities and administrative centers for Russia (RU).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Russian Federation (RU).

-- NOTE: Russia is the world's largest country with hundreds of thousands of localities. This list includes only a very small fraction,
-- focusing on the capital, federal cities, administrative centers of federal subjects, and other major cities.
-- Listing every locality is ABSOLUTELY IMPOSSIBLE. Includes major cities in Crimea (status disputed).
-- Postal codes are 6 digits; examples or '000000' placeholder are provided.

-- Inserting cities for Russia (RU) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Federal Cities & Major Cities / Administrative Centers
('Moscow', (SELECT id FROM world_countries WHERE iso_code_2 = 'RU'), '101000'), -- National Capital & Federal City
('Saint Petersburg', (SELECT id FROM world_countries WHERE iso_code_2 = 'RU'), '190000'), -- Federal City
('Novosibirsk', (SELECT id FROM world_countries WHERE iso_code_2 = 'RU'), '630000'), -- Novosibirsk Oblast Capital
('Yekaterinburg', (SELECT id FROM world_countries WHERE iso_code_2 = 'RU'), '620000'), -- Sverdlovsk Oblast Capital
('Kazan', (SELECT id FROM world_countries WHERE iso_code_2 = 'RU'), '420000'), -- Tatarstan Republic Capital
('Nizhny Novgorod', (SELECT id FROM world_countries WHERE iso_code_2 = 'RU'), '603000'), -- Nizhny Novgorod Oblast Capital
('Chelyabinsk', (SELECT id FROM world_countries WHERE iso_code_2 = 'RU'), '454000'), -- Chelyabinsk Oblast Capital
('Samara', (SELECT id FROM world_countries WHERE iso_code_2 = 'RU'), '443000'), -- Samara Oblast Capital
('Omsk', (SELECT id FROM world_countries WHERE iso_code_2 = 'RU'), '644000'), -- Omsk Oblast Capital
('Rostov-on-Don', (SELECT id FROM world_countries WHERE iso_code_2 = 'RU'), '344000'), -- Rostov Oblast Capital
('Ufa', (SELECT id FROM world_countries WHERE iso_code_2 = 'RU'), '450000'), -- Bashkortostan Republic Capital
('Krasnoyarsk', (SELECT id FROM world_countries WHERE iso_code_2 = 'RU'), '660000'), -- Krasnoyarsk Krai Capital
('Volgograd', (SELECT id FROM world_countries WHERE iso_code_2 = 'RU'), '400000'), -- Volgograd Oblast Capital
('Perm', (SELECT id FROM world_countries WHERE iso_code_2 = 'RU'), '614000'), -- Perm Krai Capital
('Voronezh', (SELECT id FROM world_countries WHERE iso_code_2 = 'RU'), '394000'), -- Voronezh Oblast Capital
('Saratov', (SELECT id FROM world_countries WHERE iso_code_2 = 'RU'), '410000'), -- Saratov Oblast Capital
('Krasnodar', (SELECT id FROM world_countries WHERE iso_code_2 = 'RU'), '350000'), -- Krasnodar Krai Capital
('Tolyatti', (SELECT id FROM world_countries WHERE iso_code_2 = 'RU'), '445000'), -- Samara Oblast (Major city)
('Barnaul', (SELECT id FROM world_countries WHERE iso_code_2 = 'RU'), '656000'), -- Altai Krai Capital
('Ulyanovsk', (SELECT id FROM world_countries WHERE iso_code_2 = 'RU'), '432000'), -- Ulyanovsk Oblast Capital
('Izhevsk', (SELECT id FROM world_countries WHERE iso_code_2 = 'RU'), '426000'), -- Udmurt Republic Capital
('Vladivostok', (SELECT id FROM world_countries WHERE iso_code_2 = 'RU'), '690000'), -- Primorsky Krai Capital
('Yaroslavl', (SELECT id FROM world_countries WHERE iso_code_2 = 'RU'), '150000'), -- Yaroslavl Oblast Capital
('Khabarovsk', (SELECT id FROM world_countries WHERE iso_code_2 = 'RU'), '680000'), -- Khabarovsk Krai Capital
('Makhachkala', (SELECT id FROM world_countries WHERE iso_code_2 = 'RU'), '367000'), -- Dagestan Republic Capital
('Orenburg', (SELECT id FROM world_countries WHERE iso_code_2 = 'RU'), '460000'), -- Orenburg Oblast Capital
('Tomsk', (SELECT id FROM world_countries WHERE iso_code_2 = 'RU'), '634000'), -- Tomsk Oblast Capital
('Kemerovo', (SELECT id FROM world_countries WHERE iso_code_2 = 'RU'), '650000'), -- Kemerovo Oblast Capital
('Novokuznetsk', (SELECT id FROM world_countries WHERE iso_code_2 = 'RU'), '654000'), -- Kemerovo Oblast (Major city)
('Ryazan', (SELECT id FROM world_countries WHERE iso_code_2 = 'RU'), '390000'), -- Ryazan Oblast Capital
('Astrakhan', (SELECT id FROM world_countries WHERE iso_code_2 = 'RU'), '414000'), -- Astrakhan Oblast Capital
('Naberezhnye Chelny', (SELECT id FROM world_countries WHERE iso_code_2 = 'RU'), '423800'), -- Tatarstan Republic (Major city)
('Penza', (SELECT id FROM world_countries WHERE iso_code_2 = 'RU'), '440000'), -- Penza Oblast Capital
('Lipetsk', (SELECT id FROM world_countries WHERE iso_code_2 = 'RU'), '398000'), -- Lipetsk Oblast Capital
('Kirov', (SELECT id FROM world_countries WHERE iso_code_2 = 'RU'), '610000'), -- Kirov Oblast Capital
('Cheboksary', (SELECT id FROM world_countries WHERE iso_code_2 = 'RU'), '428000'), -- Chuvash Republic Capital
('Tula', (SELECT id FROM world_countries WHERE iso_code_2 = 'RU'), '300000'), -- Tula Oblast Capital
('Kaliningrad', (SELECT id FROM world_countries WHERE iso_code_2 = 'RU'), '236000'), -- Kaliningrad Oblast Capital (Exclave)
('Balashikha', (SELECT id FROM world_countries WHERE iso_code_2 = 'RU'), '143900'), -- Moscow Oblast (Moscow Metro)
('Kursk', (SELECT id FROM world_countries WHERE iso_code_2 = 'RU'), '305000'), -- Kursk Oblast Capital
('Stavropol', (SELECT id FROM world_countries WHERE iso_code_2 = 'RU'), '355000'), -- Stavropol Krai Capital
('Ulan-Ude', (SELECT id FROM world_countries WHERE iso_code_2 = 'RU'), '670000'), -- Buryatia Republic Capital
('Tver', (SELECT id FROM world_countries WHERE iso_code_2 = 'RU'), '170000'), -- Tver Oblast Capital
('Magnitogorsk', (SELECT id FROM world_countries WHERE iso_code_2 = 'RU'), '455000'), -- Chelyabinsk Oblast (Industrial city)
('Sochi', (SELECT id FROM world_countries WHERE iso_code_2 = 'RU'), '354000'), -- Krasnodar Krai (Resort city)
('Ivanovo', (SELECT id FROM world_countries WHERE iso_code_2 = 'RU'), '153000'), -- Ivanovo Oblast Capital
('Bryansk', (SELECT id FROM world_countries WHERE iso_code_2 = 'RU'), '241000'), -- Bryansk Oblast Capital
('Belgorod', (SELECT id FROM world_countries WHERE iso_code_2 = 'RU'), '308000'), -- Belgorod Oblast Capital
('Surgut', (SELECT id FROM world_countries WHERE iso_code_2 = 'RU'), '628400'), -- Khanty-Mansi AO (Oil/Gas city)
('Vladimir', (SELECT id FROM world_countries WHERE iso_code_2 = 'RU'), '600000'), -- Vladimir Oblast Capital
('Nizhny Tagil', (SELECT id FROM world_countries WHERE iso_code_2 = 'RU'), '622000'), -- Sverdlovsk Oblast (Industrial city)
('Arkhangelsk', (SELECT id FROM world_countries WHERE iso_code_2 = 'RU'), '163000'), -- Arkhangelsk Oblast Capital
('Chita', (SELECT id FROM world_countries WHERE iso_code_2 = 'RU'), '672000'), -- Zabaykalsky Krai Capital
('Kaluga', (SELECT id FROM world_countries WHERE iso_code_2 = 'RU'), '248000'), -- Kaluga Oblast Capital
('Smolensk', (SELECT id FROM world_countries WHERE iso_code_2 = 'RU'), '214000'), -- Smolensk Oblast Capital
('Volzhsky', (SELECT id FROM world_countries WHERE iso_code_2 = 'RU'), '404100'), -- Volgograd Oblast
('Kurgan', (SELECT id FROM world_countries WHERE iso_code_2 = 'RU'), '640000'), -- Kurgan Oblast Capital
('Cherepovets', (SELECT id FROM world_countries WHERE iso_code_2 = 'RU'), '162600'), -- Vologda Oblast (Industrial city)
('Oryol (Orel)', (SELECT id FROM world_countries WHERE iso_code_2 = 'RU'), '302000'), -- Oryol Oblast Capital
('Saransk', (SELECT id FROM world_countries WHERE iso_code_2 = 'RU'), '430000'), -- Mordovia Republic Capital
('Vologda', (SELECT id FROM world_countries WHERE iso_code_2 = 'RU'), '160000'), -- Vologda Oblast Capital
('Yakutsk', (SELECT id FROM world_countries WHERE iso_code_2 = 'RU'), '677000'), -- Sakha (Yakutia) Republic Capital
('Vladikavkaz', (SELECT id FROM world_countries WHERE iso_code_2 = 'RU'), '362000'), -- North Ossetia–Alania Republic Capital
('Podolsk', (SELECT id FROM world_countries WHERE iso_code_2 = 'RU'), '142100'), -- Moscow Oblast
('Murmansk', (SELECT id FROM world_countries WHERE iso_code_2 = 'RU'), '183000'), -- Murmansk Oblast Capital (Arctic port)
('Grozny', (SELECT id FROM world_countries WHERE iso_code_2 = 'RU'), '364000'), -- Chechen Republic Capital
('Tambov', (SELECT id FROM world_countries WHERE iso_code_2 = 'RU'), '392000'), -- Tambov Oblast Capital
('Sterlitamak', (SELECT id FROM world_countries WHERE iso_code_2 = 'RU'), '453100'), -- Bashkortostan Republic
('Petrozavodsk', (SELECT id FROM world_countries WHERE iso_code_2 = 'RU'), '185000'), -- Karelia Republic Capital
('Kostroma', (SELECT id FROM world_countries WHERE iso_code_2 = 'RU'), '156000'), -- Kostroma Oblast Capital
('Nizhnevartovsk', (SELECT id FROM world_countries WHERE iso_code_2 = 'RU'), '628600'), -- Khanty-Mansi AO (Oil/Gas city)
('Yoshkar-Ola', (SELECT id FROM world_countries WHERE iso_code_2 = 'RU'), '424000'), -- Mari El Republic Capital
('Novorossiysk', (SELECT id FROM world_countries WHERE iso_code_2 = 'RU'), '353900'), -- Krasnodar Krai (Major Black Sea port)

-- Major cities in Crimea (Disputed Territory, administered by Russia)
('Sevastopol', (SELECT id FROM world_countries WHERE iso_code_2 = 'RU'), '299000'), -- Federal City (Disputed)
('Simferopol', (SELECT id FROM world_countries WHERE iso_code_2 = 'RU'), '295000'); -- Republic of Crimea Capital (Disputed)

-- End of Russia city list (Highly Selective Sample)

/*
-- ============================================
-- == Información sobre Russian Federation ==
-- ============================================
--
-- Descripción General:
-- La Federación de Rusia (Russia) es el país más extenso del mundo, abarcando gran
-- parte de Europa del Este y el norte de Asia. Se extiende por 11 zonas horarias y
-- posee una enorme diversidad de paisajes y climas, desde la tundra ártica y los
-- bosques de taiga en Siberia, hasta las estepas del sur y las costas de los mares
-- Báltico, Negro, Caspio y los océanos Pacífico y Ártico. Es una república federal
-- semipresidencialista.
--
-- Ciudades Principales:
-- * Moscú (Moscow): La capital y ciudad más grande, centro político, económico y
--   cultural del país, ubicada en la parte europea.
-- * San Petersburgo (Saint Petersburg): Segunda ciudad más grande, antigua capital
--   imperial, importante centro cultural y puerto en el Báltico.
-- * Novosibirsk, Ekaterimburgo (Yekaterinburg), Kazán, Nizhni Nóvgorod, Cheliábinsk,
--   Samara, Omsk, Rostov del Don, Ufá, Krasnoyarsk, Volgogrado, Perm, Vorónezh:
--   Otras megaciudades y centros regionales clave repartidos por el vasto territorio.
-- * Vladivostok y Khabarovsk: Principales ciudades en el Lejano Oriente ruso.
-- * La lista incluye también las capitales de la mayoría de los sujetos federales
--   (repúblicas, krais, óblasts, etc.) y otras ciudades muy grandes o significativas.
--   Se incluyen las principales ciudades de Crimea (Sebastopol, Simferopol), cuya
--   anexión por Rusia en 2014 no es reconocida por la mayoría de la comunidad internacional.
--
-- Un Poco de Historia:
-- Los orígenes del estado ruso se remontan a la Rus de Kiev, un estado eslavo oriental
-- medieval. Tras la invasión mongola, el Principado de Moscú emergió como centro de
-- poder, expandiéndose para formar el Zarato Ruso y luego el Imperio Ruso bajo zares
-- como Iván IV, Pedro el Grande y Catalina la Grande, extendiéndose por Eurasia. La
-- Revolución Rusa de 1917 derrocó a la monarquía y llevó al establecimiento de la
-- Unión Soviética (URSS) en 1922, un estado socialista de partido único que se
-- convirtió en una superpotencia global. La URSS jugó un papel crucial en la derrota
-- de la Alemania nazi en la Segunda Guerra Mundial y luego mantuvo una rivalidad
-- ideológica y geopolítica con Estados Unidos durante la Guerra Fría. La URSS se
-- disolvió en 1991, dando lugar a la Federación de Rusia como su estado sucesor y
-- a otras repúblicas independientes. La Rusia postsoviética ha pasado por transiciones
-- económicas y políticas complejas bajo presidentes como Boris Yeltsin y Vladimir Putin.
--
-- Datos Adicionales:
-- El ruso es el idioma oficial. Rusia es étnicamente diversa, aunque los rusos son
-- la mayoría. La Iglesia Ortodoxa Rusa es la religión predominante. Es una potencia
-- nuclear y miembro permanente del Consejo de Seguridad de la ONU. Posee vastos
-- recursos naturales (petróleo, gas, minerales, madera). Es famosa por su literatura
-- (Tolstói, Dostoievski), música clásica (Chaikovski, Stravinski), ballet y el
-- Ferrocarril Transiberiano. El Lago Baikal es el lago más profundo y antiguo del mundo.
--
*/
