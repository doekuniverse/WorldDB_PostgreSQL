-- SQL Script to insert a representative sample of significant cities and towns for Zimbabwe (ZW).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Zimbabwe (ZW).

-- NOTE: This list includes the capital, major cities, provincial capitals, and significant towns.
-- Listing every single village is IMPOSSIBLE.
-- Postal codes are not used; using '0000' as a placeholder.

-- Inserting cities for Zimbabwe (ZW) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Provincial Capitals / Major Cities
('Harare', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZW'), '0000'), -- National Capital (Harare Province)
('Bulawayo', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZW'), '0000'), -- Bulawayo Province Capital (Second largest city)
('Chitungwiza', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZW'), '0000'), -- Harare Province (Large town near Harare)
('Mutare', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZW'), '0000'), -- Manicaland Province Capital
('Gweru', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZW'), '0000'), -- Midlands Province Capital
('Kwekwe', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZW'), '0000'), -- Midlands Province (Major city)
('Kadoma', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZW'), '0000'), -- Mashonaland West Province (Major city)
('Masvingo', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZW'), '0000'), -- Masvingo Province Capital (Near Great Zimbabwe ruins)
('Chinhoyi', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZW'), '0000'), -- Mashonaland West Province Capital
('Marondera', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZW'), '0000'), -- Mashonaland East Province Capital
('Bindura', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZW'), '0000'), -- Mashonaland Central Province Capital
('Gwanda', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZW'), '0000'), -- Matabeleland South Province Capital
('Lupane', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZW'), '0000'), -- Matabeleland North Province Capital

-- Other Significant Towns (Sample)
('Hwange', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZW'), '0000'), -- Matabeleland North Province (Coal mining, near Hwange NP)
('Victoria Falls', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZW'), '0000'), -- Matabeleland North Province (Tourist town)
('Redcliff', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZW'), '0000'), -- Midlands Province (Steel industry)
('Rusape', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZW'), '0000'), -- Manicaland Province
('Chiredzi', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZW'), '0000'), -- Masvingo Province (Sugar estates)
('Beitbridge', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZW'), '0000'), -- Matabeleland South Province (Border town with South Africa)
('Kariba', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZW'), '0000'), -- Mashonaland West Province (Dam town, Lake Kariba)
('Karoi', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZW'), '0000'), -- Mashonaland West Province
('Zvishavane', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZW'), '0000'), -- Midlands Province (Mining town)
('Chipinge', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZW'), '0000'), -- Manicaland Province
('Norton', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZW'), '0000'), -- Mashonaland West Province (Near Harare)
('Chegutu', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZW'), '0000'), -- Mashonaland West Province
('Shurugwi', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZW'), '0000'); -- Midlands Province

-- End of Zimbabwe city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Zimbabwe ==
-- ====================================
--
-- Descripción General:
-- Zimbabue (Zimbabwe), oficialmente República de Zimbabue, es un país sin salida al
-- mar ubicado en el sur de África. Limita con Sudáfrica al sur, Botsuana al oeste y
-- suroeste, Zambia al noroeste y Mozambique al este y noreste. Su geografía consiste
-- principalmente en una meseta alta (Highveld) con algunas cadenas montañosas en el
-- este (Eastern Highlands). El río Zambezi forma la frontera norte (con las Cataratas
-- Victoria) y el río Limpopo forma parte de la frontera sur.
--
-- Ciudades Principales:
-- * Harare: La capital y ciudad más grande, ubicada en la meseta nororiental. Centro
--   político, financiero y comercial.
-- * Bulawayo: La segunda ciudad más grande, ubicada en el suroeste, centro histórico
--   y cultural de la región de Matabeleland.
-- * Chitungwiza: Gran ciudad dormitorio cerca de Harare.
-- * Mutare: Principal ciudad en el este, cerca de la frontera con Mozambique.
-- * Gweru: Ciudad importante en el centro del país (Midlands).
-- * Kwekwe, Kadoma: Otros centros industriales/mineros en Midlands y Mashonaland West.
-- * Masvingo: Ciudad cerca de las ruinas del Gran Zimbabue.
-- * Chinhoyi, Marondera, Bindura, Gwanda, Lupane: Capitales de las demás provincias.
-- * Victoria Falls: Importante centro turístico junto a las cataratas homónimas.
--
-- Un Poco de Historia:
-- La región fue hogar de importantes reinos e imperios africanos, destacando el
-- Reino de Zimbabue (siglos XIII-XV), que construyó la impresionante ciudad de piedra
-- del Gran Zimbabue (Patrimonio de la Humanidad), y posteriormente el Imperio Rozwi.
-- En el siglo XIX, llegaron los pueblos Ndebele (relacionados con los Zulúes) desde
-- el sur. A finales del siglo XIX, la Compañía Británica de Sudáfrica (British South
-- Africa Company) de Cecil Rhodes obtuvo concesiones mineras y estableció el control
-- sobre el territorio, llamándolo Rodesia (Rhodesia). Se convirtió en la colonia
-- británica autónoma de Rodesia del Sur en 1923. En 1965, el gobierno de la minoría
-- blanca liderado por Ian Smith declaró unilateralmente la independencia (UDI) del
-- Reino Unido para evitar la transición a un gobierno de mayoría negra. Esto llevó a
-- sanciones internacionales y a una guerra de guerrillas (Guerra de Rodesia o Chimurenga)
-- por parte de movimientos nacionalistas negros (ZANU y ZAPU). Tras un acuerdo de paz,
-- el país obtuvo la independencia reconocida internacionalmente como Zimbabue en 1980,
-- bajo el liderazgo de Robert Mugabe (ZANU). Mugabe gobernó el país durante 37 años
-- (primero como Primer Ministro y luego como Presidente), un período marcado inicialmente
-- por avances en educación y salud, pero luego por un creciente autoritarismo,
-- represión política, controvertidas reformas agrarias, hiperinflación y colapso
-- económico. Mugabe fue depuesto en un golpe de estado en 2017 y sucedido por
-- Emmerson Mnangagwa. El país sigue enfrentando graves desafíos económicos y políticos.
--
-- Datos Adicionales:
-- El inglés es uno de los idiomas oficiales, junto con numerosas lenguas bantúes
-- (Shona y Ndebele son las más habladas). Las ruinas del Gran Zimbabue son un
-- importante símbolo nacional. Las Cataratas Victoria (compartidas con Zambia) son
-- una de las mayores atracciones turísticas de África.
--
*/
