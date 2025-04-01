-- SQL Script to insert a representative sample of significant cities and towns for Egypt (EG).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Egypt (EG).

-- NOTE: Egypt is very populous, concentrated along the Nile. This list includes the capital,
-- governorate capitals, and a broad sample of major cities and significant towns.
-- Listing every single locality is IMPOSSIBLE.
-- Postal codes are 5 digits; examples or '00000' placeholder are provided.

-- Inserting cities for Egypt (EG) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Governorate Capitals / Major Cities
('Cairo (Al Qahirah)', (SELECT id FROM world_countries WHERE iso_code_2 = 'EG'), '11511'), -- National Capital (Cairo Governorate)
('Alexandria (Al Iskandariyah)', (SELECT id FROM world_countries WHERE iso_code_2 = 'EG'), '21500'), -- Alexandria Governorate Capital
('Giza (Al Jizah)', (SELECT id FROM world_countries WHERE iso_code_2 = 'EG'), '12511'), -- Giza Governorate Capital (part of Greater Cairo)
('Shubra El Kheima', (SELECT id FROM world_countries WHERE iso_code_2 = 'EG'), '13741'), -- Qalyubia Governorate (part of Greater Cairo)
('Port Said (Bur Sa''id)', (SELECT id FROM world_countries WHERE iso_code_2 = 'EG'), '42511'), -- Port Said Governorate Capital
('Suez (As Suways)', (SELECT id FROM world_countries WHERE iso_code_2 = 'EG'), '43511'), -- Suez Governorate Capital
('Luxor (Al Uqsur)', (SELECT id FROM world_countries WHERE iso_code_2 = 'EG'), '85111'), -- Luxor Governorate Capital
('Mansoura (Al Mansurah)', (SELECT id FROM world_countries WHERE iso_code_2 = 'EG'), '35511'), -- Dakahlia Governorate Capital
('Tanta', (SELECT id FROM world_countries WHERE iso_code_2 = 'EG'), '31511'), -- Gharbia Governorate Capital
('Asyut', (SELECT id FROM world_countries WHERE iso_code_2 = 'EG'), '71111'), -- Asyut Governorate Capital
('Ismailia (Al Isma''iliyah)', (SELECT id FROM world_countries WHERE iso_code_2 = 'EG'), '41511'), -- Ismailia Governorate Capital
('Faiyum (Al Fayyum)', (SELECT id FROM world_countries WHERE iso_code_2 = 'EG'), '63511'), -- Faiyum Governorate Capital
('Zagazig (Az Zaqaziq)', (SELECT id FROM world_countries WHERE iso_code_2 = 'EG'), '44511'), -- Sharqia Governorate Capital
('Aswan', (SELECT id FROM world_countries WHERE iso_code_2 = 'EG'), '81511'), -- Aswan Governorate Capital
('Damietta (Dumyat)', (SELECT id FROM world_countries WHERE iso_code_2 = 'EG'), '34511'), -- Damietta Governorate Capital
('Damanhur', (SELECT id FROM world_countries WHERE iso_code_2 = 'EG'), '22511'), -- Beheira Governorate Capital
('Minya (Al Minya)', (SELECT id FROM world_countries WHERE iso_code_2 = 'EG'), '61511'), -- Minya Governorate Capital
('Beni Suef (Bani Suwayf)', (SELECT id FROM world_countries WHERE iso_code_2 = 'EG'), '62511'), -- Beni Suef Governorate Capital
('Qena (Qina)', (SELECT id FROM world_countries WHERE iso_code_2 = 'EG'), '83511'), -- Qena Governorate Capital
('Sohag (Suhaj)', (SELECT id FROM world_countries WHERE iso_code_2 = 'EG'), '82511'), -- Sohag Governorate Capital
('Hurghada (Al Ghardaqah)', (SELECT id FROM world_countries WHERE iso_code_2 = 'EG'), '84511'), -- Red Sea Governorate Capital
('Shibin El Kom', (SELECT id FROM world_countries WHERE iso_code_2 = 'EG'), '32511'), -- Monufia Governorate Capital
('Banha', (SELECT id FROM world_countries WHERE iso_code_2 = 'EG'), '13511'), -- Qalyubia Governorate Capital
('Kafr El Sheikh', (SELECT id FROM world_countries WHERE iso_code_2 = 'EG'), '33511'), -- Kafr El Sheikh Governorate Capital
('Arish (Al ''Arish)', (SELECT id FROM world_countries WHERE iso_code_2 = 'EG'), '45511'), -- North Sinai Governorate Capital
('Marsa Matruh', (SELECT id FROM world_countries WHERE iso_code_2 = 'EG'), '51511'), -- Matruh Governorate Capital
('Kharga (El Kharga)', (SELECT id FROM world_countries WHERE iso_code_2 = 'EG'), '72511'), -- New Valley Governorate Capital
('El Tor (At Tur)', (SELECT id FROM world_countries WHERE iso_code_2 = 'EG'), '46511'), -- South Sinai Governorate Capital

-- Other Major/Significant Towns (Sample)
('Helwan', (SELECT id FROM world_countries WHERE iso_code_2 = 'EG'), '11722'), -- Cairo Governorate (Industrial suburb)
('6th of October City', (SELECT id FROM world_countries WHERE iso_code_2 = 'EG'), '12566'), -- Giza Governorate (New city)
('10th of Ramadan City', (SELECT id FROM world_countries WHERE iso_code_2 = 'EG'), '44609'), -- Sharqia Governorate (New city)
('Mahalla El Kubra', (SELECT id FROM world_countries WHERE iso_code_2 = 'EG'), '31951'), -- Gharbia Governorate (Industrial city)
('New Cairo', (SELECT id FROM world_countries WHERE iso_code_2 = 'EG'), '11835'), -- Cairo Governorate (New city development)
('Nasr City', (SELECT id FROM world_countries WHERE iso_code_2 = 'EG'), '11765'), -- District of Cairo
('Heliopolis', (SELECT id FROM world_countries WHERE iso_code_2 = 'EG'), '11341'), -- District of Cairo
('Sharm El Sheikh', (SELECT id FROM world_countries WHERE iso_code_2 = 'EG'), '46619'), -- South Sinai Governorate (Resort city)
('Edfu', (SELECT id FROM world_countries WHERE iso_code_2 = 'EG'), '81728'), -- Aswan Governorate (Temple site)
('Kom Ombo', (SELECT id FROM world_countries WHERE iso_code_2 = 'EG'), '81624'), -- Aswan Governorate (Temple site)
('Siwa Oasis', (SELECT id FROM world_countries WHERE iso_code_2 = 'EG'), '51714'), -- Matruh Governorate (Oasis town)
('Qus', (SELECT id FROM world_countries WHERE iso_code_2 = 'EG'), '83811'); -- Qena Governorate

-- End of Egypt city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Egypt ==
-- ====================================
--
-- Descripción General:
-- Egipto (Egypt) es un país transcontinental que abarca la esquina noreste de África
-- y la esquina suroeste de Asia a través de un puente terrestre formado por la
-- Península del Sinaí. Limita con el Mar Mediterráneo al norte, la Franja de Gaza
-- e Israel al noreste, el Mar Rojo al este, Sudán al sur y Libia al oeste. La
-- gran mayoría de su población y toda su agricultura se concentran a lo largo de
-- las estrechas riberas fértiles y el delta del río Nilo, mientras que el resto
-- del país es mayoritariamente desierto árido. Egipto es famoso por su antigua
-- civilización y sus monumentos icónicos. Controla el Canal de Suez, una ruta
-- marítima vital.
--
-- Ciudades Principales:
-- * El Cairo (Cairo / Al Qahirah): La capital y ciudad más grande de África y del
--   mundo árabe. Una vasta metrópolis que es el centro político, cultural y
--   económico del país. Cerca se encuentra Giza, famosa por las pirámides y la esfinge.
-- * Alejandría (Alexandria / Al Iskandariyah): La segunda ciudad más grande,
--   importante puerto histórico en la costa mediterránea.
-- * Port Said y Suez: Ciudades clave en los extremos norte y sur del Canal de Suez.
-- * Luxor y Asuán (Aswan): Ciudades importantes en el Alto Nilo, centros turísticos
--   por sus templos y tumbas antiguas.
-- * Otras ciudades importantes incluyen centros industriales y agrícolas en el Delta
--   del Nilo (Mansoura, Tanta, Zagazig) y a lo largo del Nilo (Asyut, Minya, Sohag).
-- * Hurghada y Sharm El Sheikh: Importantes centros turísticos en la costa del Mar Rojo.
-- * La lista incluye también las capitales de todas las gobernaciones (muhafazat).
--
-- Un Poco de Historia:
-- Egipto tiene una de las historias más largas de cualquier país, cuna de una de las
-- primeras y más influyentes civilizaciones del mundo (Antiguo Egipto, con sus
-- faraones, pirámides y jeroglíficos). Posteriormente fue conquistado y gobernado
-- por persas, griegos (Ptolomeos, incluyendo a Cleopatra), romanos, bizantinos,
-- árabes (introduciendo el Islam y el idioma árabe), otomanos y, más recientemente,
-- bajo influencia británica. Se convirtió en una república en 1953 tras derrocar
-- a la monarquía. Bajo Gamal Abdel Nasser, se convirtió en un líder del panarabismo.
-- Ha jugado un papel central en los conflictos árabe-israelíes. La historia reciente
-- ha visto cambios políticos significativos, incluyendo la revolución de 2011.
--
-- Datos Adicionales:
-- El árabe es el idioma oficial. El Islam sunita es la religión predominante, con
-- una minoría cristiana copta significativa. La economía depende del turismo, las
-- remesas, los ingresos del Canal de Suez y la agricultura a lo largo del Nilo.
-- Los monumentos del Antiguo Egipto son atracciones turísticas mundialmente famosas.
--
*/
