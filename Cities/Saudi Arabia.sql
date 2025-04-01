-- SQL Script to insert a representative sample of significant cities and towns for Saudi Arabia (SA).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Saudi Arabia (SA).

-- NOTE: Saudi Arabia is vast, mostly desert. This list includes the capital, provincial capitals,
-- major cities, and significant towns. Listing every single locality is IMPOSSIBLE.
-- Postal codes are 5 digits; examples or '00000' placeholder are provided.

-- Inserting cities for Saudi Arabia (SA) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Provincial Capitals / Major Cities
('Riyadh', (SELECT id FROM world_countries WHERE iso_code_2 = 'SA'), '11111'), -- National Capital (Riyadh Province)
('Jeddah', (SELECT id FROM world_countries WHERE iso_code_2 = 'SA'), '21411'), -- Makkah Province (Largest city, major port)
('Mecca (Makkah)', (SELECT id FROM world_countries WHERE iso_code_2 = 'SA'), '21955'), -- Makkah Province Capital (Holiest city in Islam)
('Medina (Al Madinah)', (SELECT id FROM world_countries WHERE iso_code_2 = 'SA'), '41311'), -- Al Madinah Province Capital (Second holiest city)
('Dammam', (SELECT id FROM world_countries WHERE iso_code_2 = 'SA'), '31411'), -- Eastern Province Capital
('Hofuf (Al-Hofuf)', (SELECT id FROM world_countries WHERE iso_code_2 = 'SA'), '31982'), -- Eastern Province (Al-Ahsa oasis)
('Ta''if', (SELECT id FROM world_countries WHERE iso_code_2 = 'SA'), '21944'), -- Makkah Province (Mountain city)
('Tabuk', (SELECT id FROM world_countries WHERE iso_code_2 = 'SA'), '71411'), -- Tabuk Province Capital
('Buraydah', (SELECT id FROM world_countries WHERE iso_code_2 = 'SA'), '51411'), -- Al-Qassim Province Capital
('Khamis Mushait', (SELECT id FROM world_countries WHERE iso_code_2 = 'SA'), '61961'), -- Asir Province (Major city)
('Jubail (Al Jubayl)', (SELECT id FROM world_countries WHERE iso_code_2 = 'SA'), '31951'), -- Eastern Province (Major industrial city)
('Hafar Al-Batin', (SELECT id FROM world_countries WHERE iso_code_2 = 'SA'), '31991'), -- Eastern Province
('Hail (Ha''il)', (SELECT id FROM world_countries WHERE iso_code_2 = 'SA'), '81411'), -- Ha'il Province Capital
('Najran', (SELECT id FROM world_countries WHERE iso_code_2 = 'SA'), '61411'), -- Najran Province Capital
('Abha', (SELECT id FROM world_countries WHERE iso_code_2 = 'SA'), '61411'), -- Asir Province Capital
('Yanbu (Yanbu'' al Bahr)', (SELECT id FROM world_countries WHERE iso_code_2 = 'SA'), '41912'), -- Al Madinah Province (Port/Industrial city)
('Khobar (Al Khubar)', (SELECT id FROM world_countries WHERE iso_code_2 = 'SA'), '31952'), -- Eastern Province (Part of Dammam Metro)
('Arar', (SELECT id FROM world_countries WHERE iso_code_2 = 'SA'), '91411'), -- Northern Borders Province Capital
('Sakakah', (SELECT id FROM world_countries WHERE iso_code_2 = 'SA'), '75411'), -- Al Jawf Province Capital
('Jizan (Jazan)', (SELECT id FROM world_countries WHERE iso_code_2 = 'SA'), '82711'), -- Jizan Province Capital
('Al Bahah', (SELECT id FROM world_countries WHERE iso_code_2 = 'SA'), '65511'), -- Al Bahah Province Capital

-- Other Significant Towns (Sample)
('Qatif', (SELECT id FROM world_countries WHERE iso_code_2 = 'SA'), '31911'), -- Eastern Province
('Dhahran', (SELECT id FROM world_countries WHERE iso_code_2 = 'SA'), '31311'), -- Eastern Province (Aramco HQ)
('Al Mubarraz', (SELECT id FROM world_countries WHERE iso_code_2 = 'SA'), '31982'), -- Eastern Province (Part of Hofuf oasis)
('Al Kharj', (SELECT id FROM world_countries WHERE iso_code_2 = 'SA'), '11942'), -- Riyadh Province
('Unaizah', (SELECT id FROM world_countries WHERE iso_code_2 = 'SA'), '51911'), -- Al-Qassim Province
('Qurayyat', (SELECT id FROM world_countries WHERE iso_code_2 = 'SA'), '75911'), -- Al Jawf Province
('Bisha', (SELECT id FROM world_countries WHERE iso_code_2 = 'SA'), '61922'), -- Asir Province
('Dhahran Al Janub', (SELECT id FROM world_countries WHERE iso_code_2 = 'SA'), '61953'), -- Asir Province
('Rafha', (SELECT id FROM world_countries WHERE iso_code_2 = 'SA'), '91911'); -- Northern Borders Province

-- End of Saudi Arabia city list (Representative Sample)

/*
-- ========================================
-- == Información sobre Saudi Arabia ==
-- ========================================
--
-- Descripción General:
-- El Reino de Arabia Saudita ocupa la mayor parte de la Península Arábiga en Asia
-- Occidental (Oriente Medio). Limita con Jordania e Irak al norte, Kuwait al noreste,
-- Qatar, Baréin y los Emiratos Árabes Unidos al este, Omán al sureste y Yemen al sur.
-- Tiene costas en el Mar Rojo al oeste y el Golfo Pérsico al este. Es el lugar de
-- nacimiento del Islam y alberga los dos sitios más sagrados de esta religión: La Meca
-- (Makkah) y Medina. Es una monarquía absoluta gobernada por la Casa de Saúd. Su
-- vasta riqueza proviene de ser uno de los mayores productores y exportadores de
-- petróleo del mundo. Gran parte del país está cubierta por desiertos áridos,
-- incluyendo el Rub al-Jali ("Cuarto Vacío").
--
-- Ciudades Principales:
-- * Riad (Riyadh): La capital y ciudad más grande, ubicada en el centro del país.
--   Es el centro político y administrativo.
-- * Yeda (Jeddah): La segunda ciudad más grande y principal puerto en el Mar Rojo,
--   puerta de entrada para los peregrinos a La Meca. Es el centro comercial del país.
-- * La Meca (Mecca / Makkah): La ciudad más sagrada del Islam, lugar de nacimiento
--   del profeta Mahoma y destino de la peregrinación Hajj. El acceso está restringido
--   a musulmanes.
-- * Medina (Al Madinah): La segunda ciudad más sagrada del Islam, donde Mahoma está
--   enterrado.
-- * Dammam, Khobar, Dhahran: Forman una importante área metropolitana en la Provincia
--   Oriental, centro de la industria petrolera (sede de Saudi Aramco en Dhahran).
-- * Hofuf (Al-Hofuf): Gran oasis y centro agrícola en la Provincia Oriental.
-- * Ta'if: Ciudad de veraneo en las montañas cerca de La Meca.
-- * Tabuk, Buraydah, Abha, Hail, Najran, Jizan, etc.: Capitales de las demás provincias.
-- * Jubail y Yanbu: Grandes ciudades industriales planificadas en las costas del Golfo
--   Pérsico y el Mar Rojo, respectivamente.
--
-- Un Poco de Historia:
-- La Península Arábiga fue cuna de antiguas civilizaciones y rutas comerciales. El
-- Islam surgió en el siglo VII en La Meca y Medina bajo el profeta Mahoma, unificando
-- las tribus árabes y creando un vasto califato. Posteriormente, la región quedó
-- bajo influencia otomana (excepto el interior). En el siglo XVIII, surgió un
-- movimiento de reforma religiosa (wahabismo) aliado con la Casa de Saúd en la región
-- de Nejd (centro). Tras periodos de expansión y contracción, Abdulaziz Ibn Saúd
-- unificó gran parte de la península a principios del siglo XX, estableciendo el
-- Reino de Arabia Saudita en 1932. El descubrimiento de petróleo en 1938 transformó
-- radicalmente el país, otorgándole una enorme riqueza e influencia global. El país
-- sigue siendo una monarquía absoluta basada en una interpretación conservadora del
-- Islam (wahabismo), aunque en años recientes ha iniciado reformas sociales y
-- económicas (Visión 2030).
--
-- Datos Adicionales:
-- El árabe es el idioma oficial. El Islam (predominantemente sunita wahabí) es la
-- religión oficial. Arabia Saudita es el custodio de las Dos Mezquitas Sagradas (La
-- Meca y Medina). Posee algunas de las mayores reservas de petróleo del mundo. La
-- ley se basa en la Sharia.
--
*/
