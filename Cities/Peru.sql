-- SQL Script to insert a representative sample of significant cities and towns for Peru (PE).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Peru (PE).

-- NOTE: Peru is large and geographically diverse with thousands of localities. This list includes the capital,
-- departmental capitals, and a broad sample of major cities and significant towns. Listing every single locality is IMPOSSIBLE.
-- Postal codes are 5 digits; examples or '00000' placeholder are provided.

-- Inserting cities for Peru (PE) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Departmental Capitals / Major Cities
('Lima', (SELECT id FROM world_countries WHERE iso_code_2 = 'PE'), '15001'), -- National Capital (Lima Province/Metro) - Example PC
('Arequipa', (SELECT id FROM world_countries WHERE iso_code_2 = 'PE'), '04000'), -- Arequipa Department Capital
('Callao', (SELECT id FROM world_countries WHERE iso_code_2 = 'PE'), '07001'), -- Callao Constitutional Province Capital (Part of Lima Metro)
('Trujillo', (SELECT id FROM world_countries WHERE iso_code_2 = 'PE'), '13001'), -- La Libertad Department Capital
('Chiclayo', (SELECT id FROM world_countries WHERE iso_code_2 = 'PE'), '14001'), -- Lambayeque Department Capital
('Piura', (SELECT id FROM world_countries WHERE iso_code_2 = 'PE'), '20001'), -- Piura Department Capital
('Iquitos', (SELECT id FROM world_countries WHERE iso_code_2 = 'PE'), '16001'), -- Loreto Department Capital (Amazon)
('Cusco (Cuzco)', (SELECT id FROM world_countries WHERE iso_code_2 = 'PE'), '08000'), -- Cusco Department Capital (Historic/Tourist)
('Chimbote', (SELECT id FROM world_countries WHERE iso_code_2 = 'PE'), '02800'), -- Ancash Department (Major port city)
('Huancayo', (SELECT id FROM world_countries WHERE iso_code_2 = 'PE'), '12001'), -- Junín Department Capital
('Pucallpa', (SELECT id FROM world_countries WHERE iso_code_2 = 'PE'), '25001'), -- Ucayali Department Capital (Amazon)
('Tacna', (SELECT id FROM world_countries WHERE iso_code_2 = 'PE'), '23001'), -- Tacna Department Capital
('Ica', (SELECT id FROM world_countries WHERE iso_code_2 = 'PE'), '11001'), -- Ica Department Capital
('Juliaca', (SELECT id FROM world_countries WHERE iso_code_2 = 'PE'), '21101'), -- Puno Department (Major city near Lake Titicaca)
('Sullana', (SELECT id FROM world_countries WHERE iso_code_2 = 'PE'), '20101'), -- Piura Department
('Cajamarca', (SELECT id FROM world_countries WHERE iso_code_2 = 'PE'), '06001'), -- Cajamarca Department Capital
('Ayacucho', (SELECT id FROM world_countries WHERE iso_code_2 = 'PE'), '05001'), -- Ayacucho Department Capital
('Chincha Alta', (SELECT id FROM world_countries WHERE iso_code_2 = 'PE'), '11701'), -- Ica Department
('Huánuco', (SELECT id FROM world_countries WHERE iso_code_2 = 'PE'), '10001'), -- Huánuco Department Capital
('Huacho', (SELECT id FROM world_countries WHERE iso_code_2 = 'PE'), '15135'), -- Lima Region Capital (Huaura Province)
('Tarapoto', (SELECT id FROM world_countries WHERE iso_code_2 = 'PE'), '22201'), -- San Martín Department (Major city)
('Puno', (SELECT id FROM world_countries WHERE iso_code_2 = 'PE'), '21001'), -- Puno Department Capital (Lake Titicaca)
('Huaraz', (SELECT id FROM world_countries WHERE iso_code_2 = 'PE'), '02001'), -- Ancash Department Capital
('Tumbes', (SELECT id FROM world_countries WHERE iso_code_2 = 'PE'), '24001'), -- Tumbes Department Capital
('Puerto Maldonado', (SELECT id FROM world_countries WHERE iso_code_2 = 'PE'), '17001'), -- Madre de Dios Department Capital (Amazon)
('Cerro de Pasco', (SELECT id FROM world_countries WHERE iso_code_2 = 'PE'), '19001'), -- Pasco Department Capital (High altitude mining city)
('Huancavelica', (SELECT id FROM world_countries WHERE iso_code_2 = 'PE'), '09001'), -- Huancavelica Department Capital
('Abancay', (SELECT id FROM world_countries WHERE iso_code_2 = 'PE'), '03001'), -- Apurímac Department Capital
('Moquegua', (SELECT id FROM world_countries WHERE iso_code_2 = 'PE'), '18001'), -- Moquegua Department Capital
('Chachapoyas', (SELECT id FROM world_countries WHERE iso_code_2 = 'PE'), '01001'), -- Amazonas Department Capital
('Moyobamba', (SELECT id FROM world_countries WHERE iso_code_2 = 'PE'), '22001'), -- San Martín Department Capital

-- Other Significant Towns (Sample)
('Talara', (SELECT id FROM world_countries WHERE iso_code_2 = 'PE'), '20811'), -- Piura Department (Oil industry)
('Paita', (SELECT id FROM world_countries WHERE iso_code_2 = 'PE'), '20761'), -- Piura Department (Port)
('Jaén', (SELECT id FROM world_countries WHERE iso_code_2 = 'PE'), '06801'), -- Cajamarca Department
('Huaral', (SELECT id FROM world_countries WHERE iso_code_2 = 'PE'), '15201'), -- Lima Region
('Pisco', (SELECT id FROM world_countries WHERE iso_code_2 = 'PE'), '11601'), -- Ica Department (Port, Pisco sour origin)
('Andahuaylas', (SELECT id FROM world_countries WHERE iso_code_2 = 'PE'), '03701'), -- Apurímac Department
('Yurimaguas', (SELECT id FROM world_countries WHERE iso_code_2 = 'PE'), '16501'); -- Loreto Department (River port)

-- End of Peru city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Peru ==
-- ====================================
--
-- Descripción General:
-- Perú, oficialmente República del Perú, es un país ubicado en el oeste de América
-- del Sur. Limita con Ecuador y Colombia al norte, Brasil al este, Bolivia al
-- sureste, Chile al sur y el Océano Pacífico al oeste. Es uno de los países con
-- mayor biodiversidad del mundo, con una geografía muy variada que incluye la árida
-- costa del Pacífico, las altas cumbres de la Cordillera de los Andes y la vasta
-- selva tropical de la cuenca del Amazonas. Fue cuna de antiguas civilizaciones,
-- destacando el Imperio Inca.
--
-- Ciudades Principales:
-- * Lima: La capital y ciudad más grande, ubicada en la costa central. Es el centro
--   político, financiero, cultural y comercial del país, formando una gran área
--   metropolitana con el puerto del Callao. Su centro histórico es Patrimonio de la Humanidad.
-- * Arequipa: La segunda ciudad más grande, ubicada en el sur andino, conocida por
--   su arquitectura colonial de sillar blanco (Patrimonio de la Humanidad).
-- * Trujillo: Importante ciudad en la costa norte, cerca de sitios arqueológicos
--   preincaicos (Chan Chan).
-- * Chiclayo: Centro comercial y arqueológico en la costa norte.
-- * Iquitos: La ciudad más grande del mundo a la que no se puede acceder por carretera,
--   principal centro urbano en la Amazonía peruana, ubicada en el río Amazonas.
-- * Cusco (Cuzco): Antigua capital del Imperio Inca, puerta de entrada a Machu Picchu
--   y al Valle Sagrado (Patrimonio de la Humanidad).
-- * Huancayo, Piura, Chimbote, Pucallpa, Tacna, Ica, Juliaca: Otras ciudades importantes
--   y capitales departamentales.
-- * La lista incluye también las capitales de todos los departamentos y otras ciudades significativas.
--
-- Un Poco de Historia:
-- Perú fue cuna de varias civilizaciones antiguas notables, como la Caral-Supe (una
-- de las más antiguas de América), Chavín, Moche, Nazca, Wari, Chimú y, finalmente,
-- el Imperio Inca, el imperio precolombino más grande de América, con capital en Cusco.
-- Fue conquistado por los españoles liderados por Francisco Pizarro en el siglo XVI.
-- Se estableció el Virreinato del Perú, uno de los más importantes del Imperio Español,
-- con Lima como su capital. Perú declaró su independencia de España en 1821, consolidada
-- en 1824 tras las batallas de Junín y Ayacucho. La historia republicana ha estado
-- marcada por periodos de inestabilidad política, gobiernos militares, conflictos
-- fronterizos y, a finales del siglo XX, un conflicto armado interno con grupos
-- terroristas como Sendero Luminoso. Desde la década de 1990, ha experimentado una
-- mayor estabilidad democrática y un crecimiento económico significativo, aunque
-- persisten desafíos sociales y políticos.
--
-- Datos Adicionales:
-- El español es el idioma oficial principal; el quechua, el aimara y otras lenguas
-- indígenas también son oficiales en las zonas donde predominan. Perú es famoso por
-- su patrimonio arqueológico (Machu Picchu, Líneas de Nazca, Sipán, Chan Chan), su
-- diversa gastronomía (considerada una de las mejores del mundo), su música andina
-- y su biodiversidad. Es un importante productor de minerales (cobre, oro, zinc).
--
*/
