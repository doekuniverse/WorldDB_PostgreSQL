-- SQL Script to insert a representative sample of significant cities and towns for Norway (NO).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Norway (NO).
-- NOTE: Excludes Svalbard and Jan Mayen.

-- NOTE: Norway has numerous municipalities and smaller localities (tettsteder). This list includes the capital,
-- major cities, county administrative centers, and significant towns. Listing every single locality is IMPOSSIBLE.
-- Postal codes are 4 digits; examples or '0000' placeholder are provided.

-- Inserting cities for Norway (NO) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Major Cities / County Admin Centers (Fylkeshovedstad - approx.)
('Oslo', (SELECT id FROM world_countries WHERE iso_code_2 = 'NO'), '0101'), -- National Capital & Oslo County
('Bergen', (SELECT id FROM world_countries WHERE iso_code_2 = 'NO'), '5003'), -- Vestland County (Largest city)
('Stavanger', (SELECT id FROM world_countries WHERE iso_code_2 = 'NO'), '4001'), -- Rogaland County Capital (part of Stavanger/Sandnes metro)
('Trondheim', (SELECT id FROM world_countries WHERE iso_code_2 = 'NO'), '7010'), -- Trøndelag County Capital
('Drammen', (SELECT id FROM world_countries WHERE iso_code_2 = 'NO'), '3001'), -- Buskerud County Capital (Viken before/after?)
('Skien', (SELECT id FROM world_countries WHERE iso_code_2 = 'NO'), '3701'), -- Telemark County Capital (Vestfold og Telemark before/after?)
('Kristiansand', (SELECT id FROM world_countries WHERE iso_code_2 = 'NO'), '4601'), -- Agder County Capital
('Tromsø', (SELECT id FROM world_countries WHERE iso_code_2 = 'NO'), '9008'), -- Troms County Capital (Troms og Finnmark before/after?)
('Ålesund', (SELECT id FROM world_countries WHERE iso_code_2 = 'NO'), '6001'), -- Møre og Romsdal County (Major city)
('Tønsberg', (SELECT id FROM world_countries WHERE iso_code_2 = 'NO'), '3101'), -- Vestfold County Capital (Vestfold og Telemark before/after?)
('Moss', (SELECT id FROM world_countries WHERE iso_code_2 = 'NO'), '1501'), -- Østfold County (Viken before/after?) (Sarpsborg also admin center)
('Haugesund', (SELECT id FROM world_countries WHERE iso_code_2 = 'NO'), '5501'), -- Rogaland County
('Sandefjord', (SELECT id FROM world_countries WHERE iso_code_2 = 'NO'), '3201'), -- Vestfold County (Large town)
('Arendal', (SELECT id FROM world_countries WHERE iso_code_2 = 'NO'), '4801'), -- Agder County (Admin center with Kristiansand)
('Bodø', (SELECT id FROM world_countries WHERE iso_code_2 = 'NO'), '8001'), -- Nordland County Capital
('Fredrikstad', (SELECT id FROM world_countries WHERE iso_code_2 = 'NO'), '1601'), -- Østfold County (Viken before/after?)
('Sarpsborg', (SELECT id FROM world_countries WHERE iso_code_2 = 'NO'), '1701'), -- Østfold County Capital (Viken before/after?)
('Hamar', (SELECT id FROM world_countries WHERE iso_code_2 = 'NO'), '2301'), -- Innlandet County Capital
('Larvik', (SELECT id FROM world_countries WHERE iso_code_2 = 'NO'), '3251'), -- Vestfold County
('Halden', (SELECT id FROM world_countries WHERE iso_code_2 = 'NO'), '1751'), -- Østfold County (Viken before/after?)
('Lillehammer', (SELECT id FROM world_countries WHERE iso_code_2 = 'NO'), '2601'), -- Innlandet County (Major town, Winter Olympics '94)
('Molde', (SELECT id FROM world_countries WHERE iso_code_2 = 'NO'), '6401'), -- Møre og Romsdal County Capital
('Kristiansund', (SELECT id FROM world_countries WHERE iso_code_2 = 'NO'), '6501'), -- Møre og Romsdal County
('Harstad', (SELECT id FROM world_countries WHERE iso_code_2 = 'NO'), '9401'), -- Troms County (Troms og Finnmark before/after?)
('Gjøvik', (SELECT id FROM world_countries WHERE iso_code_2 = 'NO'), '2801'), -- Innlandet County Capital
('Horten', (SELECT id FROM world_countries WHERE iso_code_2 = 'NO'), '3181'), -- Vestfold County
('Steinkjer', (SELECT id FROM world_countries WHERE iso_code_2 = 'NO'), '7701'), -- Trøndelag County (Admin center with Trondheim)
('Kongsberg', (SELECT id FROM world_countries WHERE iso_code_2 = 'NO'), '3601'), -- Buskerud County (Viken before/after?)
('Vadsø', (SELECT id FROM world_countries WHERE iso_code_2 = 'NO'), '9800'), -- Finnmark County Capital (Troms og Finnmark before/after?)
('Førde', (SELECT id FROM world_countries WHERE iso_code_2 = 'NO'), '6800'), -- Vestland County (Former Sogn og Fjordane capital)
('Leikanger / Hermansverk', (SELECT id FROM world_countries WHERE iso_code_2 = 'NO'), '6863'), -- Vestland County (Former Sogn og Fjordane capital)
('Alta', (SELECT id FROM world_countries WHERE iso_code_2 = 'NO'), '9501'), -- Finnmark County (Troms og Finnmark before/after?)
('Mo i Rana', (SELECT id FROM world_countries WHERE iso_code_2 = 'NO'), '8601'), -- Nordland County (Industrial town)
('Porsgrunn', (SELECT id FROM world_countries WHERE iso_code_2 = 'NO'), '3901'); -- Telemark County (Vestfold og Telemark before/after?)

-- End of Norway city list (Representative Sample of Mainland Norway)

/*
-- ====================================
-- == Información sobre Norway ==
-- ====================================
--
-- Descripción General:
-- Noruega (Norway) es un país nórdico ubicado en el norte de Europa, ocupando la
-- parte occidental de la Península Escandinava. Limita con Suecia al este, Finlandia
-- y Rusia al noreste, y tiene una extensa costa a lo largo del Océano Atlántico Norte
-- (incluyendo el Mar de Noruega y el Mar de Barents), famosa por sus profundos fiordos.
-- El país es muy montañoso. El Reino de Noruega también incluye los territorios árticos
-- de Svalbard y Jan Mayen (excluidos de esta entrada 'NO') y la Isla Bouvet en el
-- Atlántico Sur. Es una monarquía constitucional parlamentaria.
--
-- Ciudades Principales:
-- * Oslo: La capital y ciudad más grande, ubicada al final del Fiordo de Oslo.
-- * Bergen: La segunda ciudad más grande, importante centro histórico (liga Hanseática)
--   y puerta de entrada a los fiordos occidentales. Su muelle Bryggen es Patrimonio
--   de la Humanidad.
-- * Stavanger/Sandnes: Tercera área urbana, centro de la industria petrolera noruega.
-- * Trondheim: Tercera ciudad individualmente, centro tecnológico e histórico (Catedral
--   de Nidaros).
-- * Drammen, Skien, Kristiansand, Tromsø (importante ciudad ártica): Otras ciudades
--   significativas y centros regionales/administrativos.
-- * La lista incluye también las principales ciudades de cada condado (fylke) y otros
--   pueblos importantes. (Nota: Hubo reformas de condados recientes, algunos nombres
--   pueden referirse a entidades anteriores/posteriores a 2020/2024).
--
-- Un Poco de Historia:
-- Habitada desde la Edad de Piedra. La Era Vikinga (siglos VIII-XI) vio a los
-- noruegos explorar, comerciar y colonizar extensas áreas (Islandia, Groenlandia,
-- partes de Gran Bretaña, Irlanda, Normandía). Noruega fue unificada como reino
-- alrededor del siglo IX/X. Formó parte de la Unión de Kalmar con Dinamarca y Suecia
-- (1397-1523), y luego permaneció unida a Dinamarca durante siglos. En 1814, tras
-- las guerras napoleónicas, Noruega fue cedida a Suecia, aunque logró establecer su
-- propia constitución. Formó una unión personal con Suecia hasta que obtuvo la plena
-- independencia pacíficamente en 1905, estableciéndose como monarquía. Fue neutral
-- en la Primera Guerra Mundial pero ocupada por Alemania en la Segunda. Después de la
-- guerra, se convirtió en un próspero estado de bienestar, especialmente tras el
-- descubrimiento de petróleo y gas en el Mar del Norte en los años 60. Noruega ha
-- votado dos veces en referéndum en contra de unirse a la Unión Europea, pero es
-- miembro del Espacio Económico Europeo (EEE) y de la OTAN.
--
-- Datos Adicionales:
-- El noruego (bokmål y nynorsk) es el idioma oficial; el sami también es oficial en
-- algunas áreas. Noruega es famosa por sus fiordos espectaculares, la aurora boreal,
-- los deportes de invierno (esquí), su industria pesquera y petrolera, y su alto
-- nivel de vida.
--
*/
