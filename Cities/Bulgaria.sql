-- SQL Script to insert a representative sample of significant cities and towns for Bulgaria (BG).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Bulgaria (BG).

-- NOTE: This list includes the capital, all oblast capitals, and a broad sample of major cities
-- and significant towns. Listing every single village is IMPOSSIBLE.
-- Postal codes are usually 4 digits; examples or '0000' placeholder are provided.

-- Inserting cities for Bulgaria (BG) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Oblast Capitals / Major Cities
('Sofia', (SELECT id FROM world_countries WHERE iso_code_2 = 'BG'), '1000'), -- National Capital & Sofia City Province Capital
('Plovdiv', (SELECT id FROM world_countries WHERE iso_code_2 = 'BG'), '4000'), -- Plovdiv Oblast Capital
('Varna', (SELECT id FROM world_countries WHERE iso_code_2 = 'BG'), '9000'), -- Varna Oblast Capital (Black Sea)
('Burgas', (SELECT id FROM world_countries WHERE iso_code_2 = 'BG'), '8000'), -- Burgas Oblast Capital (Black Sea)
('Ruse', (SELECT id FROM world_countries WHERE iso_code_2 = 'BG'), '7000'), -- Ruse Oblast Capital (Danube River)
('Stara Zagora', (SELECT id FROM world_countries WHERE iso_code_2 = 'BG'), '6000'), -- Stara Zagora Oblast Capital
('Pleven', (SELECT id FROM world_countries WHERE iso_code_2 = 'BG'), '5800'), -- Pleven Oblast Capital
('Sliven', (SELECT id FROM world_countries WHERE iso_code_2 = 'BG'), '8800'), -- Sliven Oblast Capital
('Dobrich', (SELECT id FROM world_countries WHERE iso_code_2 = 'BG'), '9300'), -- Dobrich Oblast Capital
('Shumen', (SELECT id FROM world_countries WHERE iso_code_2 = 'BG'), '9700'), -- Shumen Oblast Capital
('Pernik', (SELECT id FROM world_countries WHERE iso_code_2 = 'BG'), '2300'), -- Pernik Oblast Capital
('Haskovo', (SELECT id FROM world_countries WHERE iso_code_2 = 'BG'), '6300'), -- Haskovo Oblast Capital
('Yambol', (SELECT id FROM world_countries WHERE iso_code_2 = 'BG'), '8600'), -- Yambol Oblast Capital
('Pazardzhik', (SELECT id FROM world_countries WHERE iso_code_2 = 'BG'), '4400'), -- Pazardzhik Oblast Capital
('Blagoevgrad', (SELECT id FROM world_countries WHERE iso_code_2 = 'BG'), '2700'), -- Blagoevgrad Oblast Capital
('Veliko Tarnovo', (SELECT id FROM world_countries WHERE iso_code_2 = 'BG'), '5000'), -- Veliko Tarnovo Oblast Capital (Historic capital)
('Vratsa', (SELECT id FROM world_countries WHERE iso_code_2 = 'BG'), '3000'), -- Vratsa Oblast Capital
('Gabrovo', (SELECT id FROM world_countries WHERE iso_code_2 = 'BG'), '5300'), -- Gabrovo Oblast Capital
('Vidin', (SELECT id FROM world_countries WHERE iso_code_2 = 'BG'), '3700'), -- Vidin Oblast Capital (Danube River)
('Montana', (SELECT id FROM world_countries WHERE iso_code_2 = 'BG'), '3400'), -- Montana Oblast Capital
('Kyustendil', (SELECT id FROM world_countries WHERE iso_code_2 = 'BG'), '2500'), -- Kyustendil Oblast Capital
('Kardzhali', (SELECT id FROM world_countries WHERE iso_code_2 = 'BG'), '6600'), -- Kardzhali Oblast Capital
('Targovishte', (SELECT id FROM world_countries WHERE iso_code_2 = 'BG'), '7700'), -- Targovishte Oblast Capital
('Lovech', (SELECT id FROM world_countries WHERE iso_code_2 = 'BG'), '5500'), -- Lovech Oblast Capital
('Silistra', (SELECT id FROM world_countries WHERE iso_code_2 = 'BG'), '7500'), -- Silistra Oblast Capital (Danube River)
('Razgrad', (SELECT id FROM world_countries WHERE iso_code_2 = 'BG'), '7200'), -- Razgrad Oblast Capital
('Smolyan', (SELECT id FROM world_countries WHERE iso_code_2 = 'BG'), '4700'), -- Smolyan Oblast Capital (Rhodope Mountains)

-- Other Significant Towns (Sample)
('Asenovgrad', (SELECT id FROM world_countries WHERE iso_code_2 = 'BG'), '4230'), -- Plovdiv Oblast
('Kazanlak', (SELECT id FROM world_countries WHERE iso_code_2 = 'BG'), '6100'), -- Stara Zagora Oblast (Valley of Roses)
('Dupnitsa', (SELECT id FROM world_countries WHERE iso_code_2 = 'BG'), '2600'), -- Kyustendil Oblast
('Gorna Oryahovitsa', (SELECT id FROM world_countries WHERE iso_code_2 = 'BG'), '5100'), -- Veliko Tarnovo Oblast
('Petrich', (SELECT id FROM world_countries WHERE iso_code_2 = 'BG'), '2850'), -- Blagoevgrad Oblast
('Dimitrovgrad', (SELECT id FROM world_countries WHERE iso_code_2 = 'BG'), '6400'), -- Haskovo Oblast
('Svishtov', (SELECT id FROM world_countries WHERE iso_code_2 = 'BG'), '5250'), -- Veliko Tarnovo Oblast (Danube River)
('Lom', (SELECT id FROM world_countries WHERE iso_code_2 = 'BG'), '3600'), -- Montana Oblast (Danube River)
('Samokov', (SELECT id FROM world_countries WHERE iso_code_2 = 'BG'), '2000'), -- Sofia Province (Near Borovets ski resort)
('Botevgrad', (SELECT id FROM world_countries WHERE iso_code_2 = 'BG'), '2140'), -- Sofia Province
('Sevlievo', (SELECT id FROM world_countries WHERE iso_code_2 = 'BG'), '5400'), -- Gabrovo Oblast
('Troyan', (SELECT id FROM world_countries WHERE iso_code_2 = 'BG'), '5600'), -- Lovech Oblast
('Sandanski', (SELECT id FROM world_countries WHERE iso_code_2 = 'BG'), '2800'), -- Blagoevgrad Oblast (Spa town)
('Gotse Delchev', (SELECT id FROM world_countries WHERE iso_code_2 = 'BG'), '2900'), -- Blagoevgrad Oblast
('Aytos', (SELECT id FROM world_countries WHERE iso_code_2 = 'BG'), '8500'), -- Burgas Oblast
('Karnobat', (SELECT id FROM world_countries WHERE iso_code_2 = 'BG'), '8400'), -- Burgas Oblast
('Nova Zagora', (SELECT id FROM world_countries WHERE iso_code_2 = 'BG'), '8900'), -- Sliven Oblast
('Popovo', (SELECT id FROM world_countries WHERE iso_code_2 = 'BG'), '7800'); -- Targovishte Oblast

-- End of Bulgaria city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Bulgaria ==
-- ====================================
--
-- Descripción General:
-- Bulgaria es un país ubicado en el sureste de Europa, en la Península Balcánica.
-- Limita con Rumania al norte (principalmente a lo largo del río Danubio), Serbia
-- y Macedonia del Norte al oeste, Grecia y Turquía al sur, y el Mar Negro al este.
-- Su geografía es diversa, incluyendo la llanura del Danubio, la cordillera de los
-- Balcanes (Stara Planina), las montañas Ródope y Rila (donde se encuentra el pico
-- más alto de los Balcanes, Musala), y la costa del Mar Negro.
--
-- Ciudades Principales:
-- * Sofía: La capital y ciudad más grande, ubicada en el oeste del país.
-- * Plovdiv: La segunda ciudad más grande, una de las ciudades habitadas más
--   antiguas de Europa, Capital Europea de la Cultura 2019.
-- * Varna y Burgas: Principales ciudades y centros turísticos en la costa del Mar Negro.
-- * Ruse: La ciudad más grande de Bulgaria a orillas del Danubio.
-- * Stara Zagora, Pleven, Sliven: Otros importantes centros regionales.
-- * Veliko Tarnovo: Capital histórica del Segundo Imperio Búlgaro.
-- * La lista incluye todas las capitales de provincia (óblast) y otras ciudades significativas.
--
-- Un Poco de Historia:
-- El territorio búlgaro tiene una historia rica, habitado por los tracios en la
-- antigüedad. Los búlgaros (un pueblo túrquico) y los eslavos formaron el Primer
-- Imperio Búlgaro en el siglo VII, que fue una potencia importante en Europa y
-- donde se desarrolló el alfabeto cirílico. Tras periodos de dominio bizantino,
-- surgió el Segundo Imperio Búlgaro. Cayó bajo dominio otomano durante casi cinco
-- siglos, logrando la autonomía en 1878 y la independencia total en 1908. Después
-- de la Segunda Guerra Mundial, se convirtió en un estado comunista alineado con
-- la URSS. La transición a la democracia comenzó en 1989 y Bulgaria se unió a la
-- OTAN en 2004 y a la Unión Europea en 2007.
--
-- Datos Adicionales:
-- El búlgaro es el idioma oficial y utiliza el alfabeto cirílico. Bulgaria es
-- famosa por su yogur, el aceite de rosas (Valle de las Rosas) y sus monasterios
-- ortodoxos (como el Monasterio de Rila, Patrimonio de la Humanidad).
--
*/
