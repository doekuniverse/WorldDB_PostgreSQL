-- SQL Script to insert a representative sample of significant cities and towns for Ukraine (UA).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Ukraine (UA).

-- NOTE: Ukraine is divided into Oblasts (regions), Raions (districts), cities, urban-type settlements, and villages.
-- Listing every single settlement is impractical for this format. Furthermore, the ongoing war since 2014, escalating in 2022,
-- affects administrative control and data reliability for certain regions. This list focuses on the national capital,
-- major cities, Oblast centers, and a sample of other significant towns, using standard Ukrainian transliterations.
-- Postal codes in Ukraine use a 5-digit format (NNNNN). A representative code is provided where possible,
-- but data availability/accuracy might be affected in conflict zones. Using '00000' as a placeholder if unavailable.

-- Inserting cities/towns for Ukraine (UA) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- National Capital & Major Cities / Oblast Centers
('Kyiv', (SELECT id FROM world_countries WHERE iso_code_2 = 'UA'), '01000'), -- National Capital (City with special status) - Kiev
('Kharkiv', (SELECT id FROM world_countries WHERE iso_code_2 = 'UA'), '61000'), -- Second Largest City (Kharkiv Oblast Center)
('Odesa', (SELECT id FROM world_countries WHERE iso_code_2 = 'UA'), '65000'), -- Major Black Sea Port City (Odesa Oblast Center)
('Dnipro', (SELECT id FROM world_countries WHERE iso_code_2 = 'UA'), '49000'), -- Major Industrial City (Dnipropetrovsk Oblast Center, formerly Dnipropetrovsk)
('Lviv', (SELECT id FROM world_countries WHERE iso_code_2 = 'UA'), '79000'), -- Major Cultural Center in Western Ukraine (Lviv Oblast Center)
('Zaporizhzhia', (SELECT id FROM world_countries WHERE iso_code_2 = 'UA'), '69000'), -- Major Industrial City (Zaporizhzhia Oblast Center)
('Donetsk', (SELECT id FROM world_countries WHERE iso_code_2 = 'UA'), '83000'), -- Major City (Donetsk Oblast Center - Currently occupied)
('Kryvyi Rih', (SELECT id FROM world_countries WHERE iso_code_2 = 'UA'), '50000'), -- Large Industrial City (Dnipropetrovsk Oblast)
('Mykolaiv', (SELECT id FROM world_countries WHERE iso_code_2 = 'UA'), '54000'), -- Shipbuilding Center / Port City (Mykolaiv Oblast Center)
('Mariupol', (SELECT id FROM world_countries WHERE iso_code_2 = 'UA'), '87500'), -- Major Port City on Sea of Azov (Donetsk Oblast - Currently occupied, heavily damaged)
('Luhansk', (SELECT id FROM world_countries WHERE iso_code_2 = 'UA'), '91000'), -- Luhansk Oblast Center (Currently occupied)
('Vinnytsia', (SELECT id FROM world_countries WHERE iso_code_2 = 'UA'), '21000'), -- Vinnytsia Oblast Center
('Simferopol', (SELECT id FROM world_countries WHERE iso_code_2 = 'UA'), '95000'), -- Administrative center of Crimea (Currently occupied)
('Kherson', (SELECT id FROM world_countries WHERE iso_code_2 = 'UA'), '73000'), -- Kherson Oblast Center (Was occupied, now near front line)
('Poltava', (SELECT id FROM world_countries WHERE iso_code_2 = 'UA'), '36000'), -- Poltava Oblast Center
('Chernihiv', (SELECT id FROM world_countries WHERE iso_code_2 = 'UA'), '14000'), -- Chernihiv Oblast Center
('Cherkasy', (SELECT id FROM world_countries WHERE iso_code_2 = 'UA'), '18000'), -- Cherkasy Oblast Center

-- Other Oblast Centers / Significant Towns (Sample)
('Zhytomyr', (SELECT id FROM world_countries WHERE iso_code_2 = 'UA'), '10000'), -- Zhytomyr Oblast Center
('Sumy', (SELECT id FROM world_countries WHERE iso_code_2 = 'UA'), '40000'), -- Sumy Oblast Center
('Rivne', (SELECT id FROM world_countries WHERE iso_code_2 = 'UA'), '33000'), -- Rivne Oblast Center
('Ivano-Frankivsk', (SELECT id FROM world_countries WHERE iso_code_2 = 'UA'), '76000'), -- Ivano-Frankivsk Oblast Center
('Kropyvnytskyi', (SELECT id FROM world_countries WHERE iso_code_2 = 'UA'), '25000'), -- Kirovohrad Oblast Center (formerly Kirovohrad)
('Ternopil', (SELECT id FROM world_countries WHERE iso_code_2 = 'UA'), '46000'), -- Ternopil Oblast Center
('Lutsk', (SELECT id FROM world_countries WHERE iso_code_2 = 'UA'), '43000'), -- Volyn Oblast Center
('Khmelnytskyi', (SELECT id FROM world_countries WHERE iso_code_2 = 'UA'), '29000'), -- Khmelnytskyi Oblast Center
('Uzhhorod', (SELECT id FROM world_countries WHERE iso_code_2 = 'UA'), '88000'), -- Zakarpattia Oblast Center
('Chernivtsi', (SELECT id FROM world_countries WHERE iso_code_2 = 'UA'), '58000'); -- Chernivtsi Oblast Center


-- End of Ukraine city/town list (Representative Sample)

/*
-- =============================================
-- ==      Información sobre Ucrania         ==
-- =============================================
--
-- Descripción General:
-- Ucrania (Україна) es un país ubicado en Europa Oriental. Es el segundo país más
-- grande de Europa por área (después de Rusia). Limita con Rusia al este y noreste,
-- Bielorrusia al norte, Polonia, Eslovaquia y Hungría al oeste, Rumania y Moldavia
-- al suroeste, y tiene costas en el Mar Negro y el Mar de Azov al sur. Gran parte
-- del país consiste en llanuras fértiles (estepas), especialmente en el sur, con
-- montañas como los Cárpatos en el oeste y las montañas de Crimea en el sur (península
-- actualmente ocupada por Rusia). El río Dniéper (Dnipro) atraviesa el país de norte a sur.
--
-- Ciudades Principales:
-- * Kiev (Kyiv): La capital y ciudad más grande, ubicada a orillas del río Dniéper.
--   Es el centro político, científico, cultural y educativo del país.
-- * Járkov (Kharkiv): La segunda ciudad más grande, importante centro industrial,
--   científico y educativo en el este.
-- * Odesa: Principal puerto marítimo en el Mar Negro, centro multicultural.
-- * Dnipró: Gran centro industrial a orillas del río Dniéper.
-- * Leópolis (Lviv): Principal centro cultural en el oeste de Ucrania, con un centro
--   histórico declarado Patrimonio de la Humanidad.
-- * Zaporiyia (Zaporizhzhia): Centro industrial conocido por su planta hidroeléctrica
--   y, más recientemente, por la planta nuclear cercana.
-- * Donetsk, Lugansk (Luhansk), Simferópol: Centros administrativos de regiones
--   actualmente ocupadas por Rusia. Mariúpol, otro puerto importante, también está
--   ocupado y fue severamente dañado.
--
-- Un Poco de Historia:
-- El territorio de Ucrania ha sido habitado desde la prehistoria. Fue el centro de la
-- primera gran civilización eslava oriental, la Rus de Kiev (siglos IX-XIII). Tras la
-- invasión mongola, el territorio fue disputado y dominado por varias potencias,
-- incluyendo la Horda de Oro, el Gran Ducado de Lituania, la Mancomunidad de Polonia-
-- Lituania y el Imperio Ruso. Los cosacos ucranianos jugaron un papel importante en
-- la historia del país. En el siglo XX, tras un breve periodo de independencia después
-- de la Revolución Rusa, Ucrania se convirtió en una república soviética (RSS de Ucrania),
-- sufriendo la hambruna del Holodomor en los años 30 y la devastación de la Segunda
-- Guerra Mundial. Ucrania declaró su independencia de la Unión Soviética en 1991.
-- La historia post-independencia incluye la Revolución Naranja (2004), la Revolución
-- de la Dignidad (Euromaidán, 2014), la anexión rusa de Crimea (2014) y el inicio de
-- la guerra en el Donbás (2014), que escaló a una invasión a gran escala por parte de
-- Rusia en febrero de 2022, conflicto que continúa actualmente.
--
-- Datos Adicionales:
-- El ucraniano es el idioma oficial. El ruso es también ampliamente hablado, especialmente
-- en el este y sur. La religión predominante es el cristianismo ortodoxo. Ucrania es
-- tradicionalmente un gran productor agrícola ("el granero de Europa"). Posee importantes
-- recursos minerales e industria pesada. La cultura ucraniana tiene ricas tradiciones
-- en música, danza, literatura y artes visuales. Desde la invasión de 2022, el país
-- ha recibido un apoyo internacional significativo y ha solicitado la adhesión a la
-- Unión Europea y la OTAN.
--
*/
