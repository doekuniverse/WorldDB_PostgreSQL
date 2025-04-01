-- SQL Script to insert a representative sample of significant cities and towns for Ethiopia (ET).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Ethiopia (ET).

-- NOTE: Ethiopia is large and very populous. This list includes the capital, regional capitals,
-- major cities, and significant towns. Listing every single kebele/village is IMPOSSIBLE.
-- Postal codes are not consistently used; using '0000' as a placeholder.

-- Inserting cities for Ethiopia (ET) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Regional Capitals / Major Cities
('Addis Ababa', (SELECT id FROM world_countries WHERE iso_code_2 = 'ET'), '1000'), -- National Capital (Example PC)
('Dire Dawa', (SELECT id FROM world_countries WHERE iso_code_2 = 'ET'), '0000'), -- Chartered City
('Mek''ele', (SELECT id FROM world_countries WHERE iso_code_2 = 'ET'), '0000'), -- Tigray Region Capital
('Gondar', (SELECT id FROM world_countries WHERE iso_code_2 = 'ET'), '0000'), -- Amhara Region (Major historical city)
('Adama (Nazret)', (SELECT id FROM world_countries WHERE iso_code_2 = 'ET'), '0000'), -- Oromia Region (Major city)
('Hawassa (Awasa)', (SELECT id FROM world_countries WHERE iso_code_2 = 'ET'), '0000'), -- Sidama Region Capital (formerly SNNPR capital)
('Bahir Dar', (SELECT id FROM world_countries WHERE iso_code_2 = 'ET'), '0000'), -- Amhara Region Capital
('Jimma', (SELECT id FROM world_countries WHERE iso_code_2 = 'ET'), '0000'), -- Oromia Region (Major city)
('Dessie', (SELECT id FROM world_countries WHERE iso_code_2 = 'ET'), '0000'), -- Amhara Region
('Jijiga', (SELECT id FROM world_countries WHERE iso_code_2 = 'ET'), '0000'), -- Somali Region Capital
('Shashamane', (SELECT id FROM world_countries WHERE iso_code_2 = 'ET'), '0000'), -- Oromia Region
('Bishoftu (Debre Zeyit)', (SELECT id FROM world_countries WHERE iso_code_2 = 'ET'), '0000'), -- Oromia Region
('Sodo (Wolaita Sodo)', (SELECT id FROM world_countries WHERE iso_code_2 = 'ET'), '0000'), -- SNNPR (Wolaita Zone capital)
('Arba Minch', (SELECT id FROM world_countries WHERE iso_code_2 = 'ET'), '0000'), -- SNNPR (Gamo Zone capital)
('Harar', (SELECT id FROM world_countries WHERE iso_code_2 = 'ET'), '0000'), -- Harari Region Capital (UNESCO site)
('Debre Markos', (SELECT id FROM world_countries WHERE iso_code_2 = 'ET'), '0000'), -- Amhara Region
('Kombolcha', (SELECT id FROM world_countries WHERE iso_code_2 = 'ET'), '0000'), -- Amhara Region (Industrial town near Dessie)
('Debre Birhan', (SELECT id FROM world_countries WHERE iso_code_2 = 'ET'), '0000'), -- Amhara Region
('Nekemte', (SELECT id FROM world_countries WHERE iso_code_2 = 'ET'), '0000'), -- Oromia Region
('Adigrat', (SELECT id FROM world_countries WHERE iso_code_2 = 'ET'), '0000'), -- Tigray Region
('Weldiya (Woldia)', (SELECT id FROM world_countries WHERE iso_code_2 = 'ET'), '0000'), -- Amhara Region
('Axum (Aksum)', (SELECT id FROM world_countries WHERE iso_code_2 = 'ET'), '0000'), -- Tigray Region (Historic capital, UNESCO site)
('Gambela', (SELECT id FROM world_countries WHERE iso_code_2 = 'ET'), '0000'), -- Gambela Region Capital
('Asosa', (SELECT id FROM world_countries WHERE iso_code_2 = 'ET'), '0000'), -- Benishangul-Gumuz Region Capital
('Semera', (SELECT id FROM world_countries WHERE iso_code_2 = 'ET'), '0000'), -- Afar Region Capital
('Shire (Inda Selassie)', (SELECT id FROM world_countries WHERE iso_code_2 = 'ET'), '0000'), -- Tigray Region
('Debre Tabor', (SELECT id FROM world_countries WHERE iso_code_2 = 'ET'), '0000'), -- Amhara Region
('Asella', (SELECT id FROM world_countries WHERE iso_code_2 = 'ET'), '0000'), -- Oromia Region
('Shambu', (SELECT id FROM world_countries WHERE iso_code_2 = 'ET'), '0000'), -- Oromia Region
('Robe (Bale Robe)', (SELECT id FROM world_countries WHERE iso_code_2 = 'ET'), '0000'), -- Oromia Region (Bale Zone)
('Hosaena', (SELECT id FROM world_countries WHERE iso_code_2 = 'ET'), '0000'), -- SNNPR (Hadiya Zone capital)
('Ambo', (SELECT id FROM world_countries WHERE iso_code_2 = 'ET'), '0000'), -- Oromia Region
('Dilla', (SELECT id FROM world_countries WHERE iso_code_2 = 'ET'), '0000'), -- SNNPR (Gedeo Zone)
('Nagele Borana (Negele)', (SELECT id FROM world_countries WHERE iso_code_2 = 'ET'), '0000'), -- Oromia Region (Guji Zone)
('Yirgalem', (SELECT id FROM world_countries WHERE iso_code_2 = 'ET'), '0000'); -- Sidama Region

-- End of Ethiopia city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Ethiopia ==
-- ====================================
--
-- Descripción General:
-- Etiopía es un país sin salida al mar ubicado en el Cuerno de África, en África
-- Oriental. Es el segundo país más poblado de África (después de Nigeria). Limita
-- con Eritrea al norte, Yibuti y Somalia al este, Kenia al sur, y Sudán del Sur y
-- Sudán al oeste. Su geografía es muy variada, dominada por el Macizo Etíope
-- (una gran meseta de alta montaña dividida por el Gran Valle del Rift) y rodeada
-- por tierras bajas más áridas. Es considerado uno de los lugares de origen de la
-- humanidad.
--
-- Ciudades Principales:
-- * Adís Abeba (Addis Ababa): La capital y ciudad más grande, sede de la Unión
--   Africana y numerosas organizaciones internacionales.
-- * Dire Dawa: La segunda ciudad más grande, administrativamente separada.
-- * Mek'ele, Gondar, Adama (Nazret), Hawassa, Bahir Dar, Jimma, Dessie, Jijiga:
--   Importantes capitales regionales y centros urbanos. Gondar y Axum son antiguas
--   capitales imperiales con gran importancia histórica.
-- * Harar: Ciudad histórica amurallada en el este, Patrimonio de la Humanidad.
-- * La lista incluye también las capitales de la mayoría de las regiones (kililoch)
--   y otras ciudades significativas.
--
-- Un Poco de Historia:
-- Etiopía tiene una historia antigua y única en África. Fue el centro del poderoso
-- Reino de Aksum (siglos I-VII d.C.), uno de los primeros estados en adoptar el
-- cristianismo. La dinastía salomónica posterior gobernó durante siglos, manteniendo
-- la independencia del país excepto por una breve ocupación italiana (1936-1941).
-- El emperador Haile Selassie fue una figura prominente en el siglo XX, derrocado
-- por un golpe militar marxista (el Derg) en 1974. El régimen del Derg fue a su
-- vez derrocado en 1991 por una coalición de grupos rebeldes (EPRDF). Eritrea se
-- independizó en 1993 tras una larga guerra. Etiopía adoptó un sistema de federalismo
-- étnico, pero ha enfrentado tensiones y conflictos internos, incluyendo la reciente
-- guerra en la región de Tigray.
--
-- Datos Adicionales:
-- El amárico es el idioma de trabajo federal, pero se hablan muchas otras lenguas
-- (oromo, tigrinya, somalí, etc.). El cristianismo ortodoxo etíope y el islam son
-- las religiones principales. Etiopía es considerada la cuna del café. Alberga
-- importantes sitios arqueológicos y paleontológicos, como el hallazgo de "Lucy".
-- Las iglesias excavadas en la roca de Lalibela son Patrimonio de la Humanidad.
--
*/
