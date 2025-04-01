-- SQL Script to insert a representative sample of significant cities and municipalities for Spain (ES).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Spain (ES).

-- NOTE: Spain has over 8,000 municipalities. This list includes the capital, autonomous community/provincial capitals,
-- major cities, and a broad sample of significant towns/municipalities. Listing every single locality is IMPOSSIBLE.
-- Postal codes are 5 digits; examples or '00000' placeholder are provided.

-- Inserting cities for Spain (ES) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- National Capital & Autonomous Community Capitals / Provincial Capitals / Major Cities
('Madrid', (SELECT id FROM world_countries WHERE iso_code_2 = 'ES'), '28001'), -- National Capital & Community of Madrid Capital
('Barcelona', (SELECT id FROM world_countries WHERE iso_code_2 = 'ES'), '08001'), -- Catalonia Capital & Barcelona Province Capital
('Valencia', (SELECT id FROM world_countries WHERE iso_code_2 = 'ES'), '46001'), -- Valencian Community Capital & Valencia Province Capital
('Seville (Sevilla)', (SELECT id FROM world_countries WHERE iso_code_2 = 'ES'), '41001'), -- Andalusia Capital & Seville Province Capital
('Zaragoza', (SELECT id FROM world_countries WHERE iso_code_2 = 'ES'), '50001'), -- Aragon Capital & Zaragoza Province Capital
('Málaga', (SELECT id FROM world_countries WHERE iso_code_2 = 'ES'), '29001'), -- Málaga Province Capital
('Murcia', (SELECT id FROM world_countries WHERE iso_code_2 = 'ES'), '30001'), -- Region of Murcia Capital
('Palma (de Mallorca)', (SELECT id FROM world_countries WHERE iso_code_2 = 'ES'), '07001'), -- Balearic Islands Capital
('Las Palmas de Gran Canaria', (SELECT id FROM world_countries WHERE iso_code_2 = 'ES'), '35001'), -- Co-Capital of Canary Islands & Las Palmas Province Capital
('Bilbao', (SELECT id FROM world_countries WHERE iso_code_2 = 'ES'), '48001'), -- Basque Country (Largest city)
('Alicante (Alacant)', (SELECT id FROM world_countries WHERE iso_code_2 = 'ES'), '03001'), -- Alicante Province Capital
('Córdoba', (SELECT id FROM world_countries WHERE iso_code_2 = 'ES'), '14001'), -- Córdoba Province Capital
('Valladolid', (SELECT id FROM world_countries WHERE iso_code_2 = 'ES'), '47001'), -- Castile and León Capital & Valladolid Province Capital
('Vigo', (SELECT id FROM world_countries WHERE iso_code_2 = 'ES'), '36201'), -- Galicia (Largest city)
('Gijón', (SELECT id FROM world_countries WHERE iso_code_2 = 'ES'), '33201'), -- Asturias (Largest city)
('L''Hospitalet de Llobregat', (SELECT id FROM world_countries WHERE iso_code_2 = 'ES'), '08901'), -- Catalonia (Barcelona Metro)
('Vitoria-Gasteiz', (SELECT id FROM world_countries WHERE iso_code_2 = 'ES'), '01001'), -- Basque Country Capital & Álava Province Capital
('A Coruña (La Coruña)', (SELECT id FROM world_countries WHERE iso_code_2 = 'ES'), '15001'), -- A Coruña Province Capital
('Granada', (SELECT id FROM world_countries WHERE iso_code_2 = 'ES'), '18001'), -- Granada Province Capital
('Elche (Elx)', (SELECT id FROM world_countries WHERE iso_code_2 = 'ES'), '03201'), -- Valencian Community (Alicante Province)
('Oviedo', (SELECT id FROM world_countries WHERE iso_code_2 = 'ES'), '33001'), -- Asturias Capital
('Badalona', (SELECT id FROM world_countries WHERE iso_code_2 = 'ES'), '08911'), -- Catalonia (Barcelona Metro)
('Terrassa', (SELECT id FROM world_countries WHERE iso_code_2 = 'ES'), '08221'), -- Catalonia (Barcelona Province)
('Sabadell', (SELECT id FROM world_countries WHERE iso_code_2 = 'ES'), '08201'), -- Catalonia (Barcelona Province)
('Cartagena', (SELECT id FROM world_countries WHERE iso_code_2 = 'ES'), '30201'), -- Murcia (Major city/port)
('Jerez de la Frontera', (SELECT id FROM world_countries WHERE iso_code_2 = 'ES'), '11401'), -- Andalusia (Cádiz Province)
('Móstoles', (SELECT id FROM world_countries WHERE iso_code_2 = 'ES'), '28930'), -- Community of Madrid (Metro Area)
('Santa Cruz de Tenerife', (SELECT id FROM world_countries WHERE iso_code_2 = 'ES'), '38001'), -- Co-Capital of Canary Islands & Santa Cruz de Tenerife Province Capital
('Pamplona', (SELECT id FROM world_countries WHERE iso_code_2 = 'ES'), '31001'), -- Navarre Capital
('Almería', (SELECT id FROM world_countries WHERE iso_code_2 = 'ES'), '04001'), -- Almería Province Capital
('Alcalá de Henares', (SELECT id FROM world_countries WHERE iso_code_2 = 'ES'), '28801'), -- Community of Madrid (UNESCO site)
('Fuenlabrada', (SELECT id FROM world_countries WHERE iso_code_2 = 'ES'), '28940'), -- Community of Madrid (Metro Area)
('Leganés', (SELECT id FROM world_countries WHERE iso_code_2 = 'ES'), '28910'), -- Community of Madrid (Metro Area)
('Getafe', (SELECT id FROM world_countries WHERE iso_code_2 = 'ES'), '28901'), -- Community of Madrid (Metro Area)
('Burgos', (SELECT id FROM world_countries WHERE iso_code_2 = 'ES'), '09001'), -- Burgos Province Capital
('Albacete', (SELECT id FROM world_countries WHERE iso_code_2 = 'ES'), '02001'), -- Albacete Province Capital
('Santander', (SELECT id FROM world_countries WHERE iso_code_2 = 'ES'), '39001'), -- Cantabria Capital
('Castellón de la Plana (Castelló)', (SELECT id FROM world_countries WHERE iso_code_2 = 'ES'), '12001'), -- Castellón Province Capital
('Badajoz', (SELECT id FROM world_countries WHERE iso_code_2 = 'ES'), '06001'), -- Badajoz Province Capital
('Logroño', (SELECT id FROM world_countries WHERE iso_code_2 = 'ES'), '26001'), -- La Rioja Capital
('Salamanca', (SELECT id FROM world_countries WHERE iso_code_2 = 'ES'), '37001'), -- Salamanca Province Capital (UNESCO site)
('Huelva', (SELECT id FROM world_countries WHERE iso_code_2 = 'ES'), '21001'), -- Huelva Province Capital
('Lleida (Lérida)', (SELECT id FROM world_countries WHERE iso_code_2 = 'ES'), '25001'), -- Lleida Province Capital
('Tarragona', (SELECT id FROM world_countries WHERE iso_code_2 = 'ES'), '43001'), -- Tarragona Province Capital
('León', (SELECT id FROM world_countries WHERE iso_code_2 = 'ES'), '24001'), -- León Province Capital
('Cádiz', (SELECT id FROM world_countries WHERE iso_code_2 = 'ES'), '11001'), -- Cádiz Province Capital
('Jaén', (SELECT id FROM world_countries WHERE iso_code_2 = 'ES'), '23001'), -- Jaén Province Capital
('Ourense (Orense)', (SELECT id FROM world_countries WHERE iso_code_2 = 'ES'), '32001'), -- Ourense Province Capital
('Lugo', (SELECT id FROM world_countries WHERE iso_code_2 = 'ES'), '27001'), -- Lugo Province Capital (Roman walls UNESCO site)
('Girona (Gerona)', (SELECT id FROM world_countries WHERE iso_code_2 = 'ES'), '17001'), -- Girona Province Capital
('Cáceres', (SELECT id FROM world_countries WHERE iso_code_2 = 'ES'), '10001'), -- Cáceres Province Capital (UNESCO site)
('Santiago de Compostela', (SELECT id FROM world_countries WHERE iso_code_2 = 'ES'), '15701'), -- Galicia Capital (UNESCO site, pilgrimage)
('Melilla', (SELECT id FROM world_countries WHERE iso_code_2 = 'ES'), '52001'), -- Autonomous City
('Ceuta', (SELECT id FROM world_countries WHERE iso_code_2 = 'ES'), '51001'), -- Autonomous City
('Guadalajara', (SELECT id FROM world_countries WHERE iso_code_2 = 'ES'), '19001'), -- Guadalajara Province Capital
('Toledo', (SELECT id FROM world_countries WHERE iso_code_2 = 'ES'), '45001'), -- Castile-La Mancha Capital & Toledo Province Capital (UNESCO site)
('Pontevedra', (SELECT id FROM world_countries WHERE iso_code_2 = 'ES'), '36001'), -- Pontevedra Province Capital
('Palencia', (SELECT id FROM world_countries WHERE iso_code_2 = 'ES'), '34001'), -- Palencia Province Capital
('Ciudad Real', (SELECT id FROM world_countries WHERE iso_code_2 = 'ES'), '13001'), -- Ciudad Real Province Capital
('Zamora', (SELECT id FROM world_countries WHERE iso_code_2 = 'ES'), '49001'), -- Zamora Province Capital
('Ávila', (SELECT id FROM world_countries WHERE iso_code_2 = 'ES'), '05001'), -- Ávila Province Capital (UNESCO site - walls)
('Segovia', (SELECT id FROM world_countries WHERE iso_code_2 = 'ES'), '40001'), -- Segovia Province Capital (UNESCO site - aqueduct)
('Huesca', (SELECT id FROM world_countries WHERE iso_code_2 = 'ES'), '22001'), -- Huesca Province Capital
('Cuenca', (SELECT id FROM world_countries WHERE iso_code_2 = 'ES'), '16001'), -- Cuenca Province Capital (UNESCO site - hanging houses)
('Soria', (SELECT id FROM world_countries WHERE iso_code_2 = 'ES'), '42001'), -- Soria Province Capital
('Teruel', (SELECT id FROM world_countries WHERE iso_code_2 = 'ES'), '44001'); -- Teruel Province Capital

-- End of Spain city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Spain ==
-- ====================================
--
-- Descripción General:
-- España (Spain), oficialmente Reino de España, es un país ubicado principalmente
-- en la Península Ibérica, en el suroeste de Europa. También incluye dos archipiélagos
-- principales (las Islas Baleares en el Mediterráneo y las Islas Canarias en el
-- Atlántico frente a África) y dos ciudades autónomas en el norte de África (Ceuta y
-- Melilla). Limita con Francia, Andorra y el Golfo de Vizcaya al norte; Portugal y
-- el Océano Atlántico al oeste; el Océano Atlántico y el Mar Mediterráneo al sur
-- (separada de África por el Estrecho de Gibraltar); y el Mar Mediterráneo al este.
-- Es una monarquía constitucional parlamentaria y miembro de la Unión Europea y la OTAN.
--
-- Ciudades Principales:
-- * Madrid: La capital y ciudad más grande, ubicada en el centro de la península.
--   Centro político, financiero y cultural.
-- * Barcelona: Segunda ciudad más grande, capital de Cataluña, importante centro
--   cultural, económico y turístico en la costa mediterránea.
-- * Valencia: Tercera ciudad, capital de la Comunidad Valenciana, en la costa este.
-- * Sevilla: Cuarta ciudad, capital de Andalucía, rica en historia y cultura.
-- * Zaragoza: Principal ciudad del valle del Ebro y capital de Aragón.
-- * Málaga: Importante ciudad y centro turístico en la Costa del Sol (Andalucía).
-- * Murcia, Palma (Mallorca), Las Palmas de Gran Canaria, Bilbao, Alicante, Córdoba,
--   Valladolid: Otras grandes ciudades y capitales autonómicas o provinciales.
-- * La lista incluye también las capitales de todas las 17 comunidades autónomas,
--   las 2 ciudades autónomas, las capitales de las 50 provincias y otras ciudades muy grandes.
--
-- Un Poco de Historia:
-- Habitada por pueblos íberos, celtas y otros. Fue conquistada por Roma (Hispania).
-- Tras la caída de Roma, fue dominada por los Visigodos. En el siglo VIII, gran
-- parte de la península fue conquistada por los musulmanes (Al-Ándalus). La
-- Reconquista cristiana culminó en 1492 con la toma de Granada por los Reyes
-- Católicos (Isabel I de Castilla y Fernando II de Aragón), quienes también financiaron
-- el viaje de Colón. España se convirtió en un vasto imperio global en los siglos
-- XVI y XVII bajo los Habsburgo. Tras la Guerra de Sucesión, los Borbones ascendieron
-- al trono. El siglo XIX estuvo marcado por la invasión napoleónica, la pérdida de
-- la mayoría de las colonias americanas y la inestabilidad política. El siglo XX vio
-- la Segunda República, la Guerra Civil Española (1936-1939) y la larga dictadura
-- de Francisco Franco (1939-1975). Tras la muerte de Franco, se restauró la monarquía
-- constitucional y se estableció la democracia actual. España se unió a la Comunidad
-- Económica Europea (ahora UE) en 1986.
--
-- Datos Adicionales:
-- El español (castellano) es el idioma oficial en todo el país; el catalán/valenciano,
-- gallego y euskera son cooficiales en sus respectivas comunidades autónomas. España
-- es famosa por su rica historia, arte (Velázquez, Goya, Picasso, Dalí), arquitectura
-- (Gaudí, Alhambra), música y danza (flamenco), gastronomía (tapas, paella),
-- fiestas (San Fermín, Fallas) y fútbol (La Liga). Es un destino turístico líder mundial.
--
*/
