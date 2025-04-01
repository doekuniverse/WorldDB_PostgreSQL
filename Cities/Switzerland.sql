-- SQL Script to insert a representative sample of significant cities and towns for Switzerland (CH).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Switzerland (CH).

-- NOTE: Switzerland has over 2,000 municipalities ('Gemeinden'/'communes'/'comuni') and numerous smaller localities.
-- Listing every single one is impractical for this format. This list focuses on the de facto capital,
-- major cities, cantonal capitals ('Hauptorte'/'chefs-lieux'/'capoluoghi'), and a sample of other significant towns.
-- Postal codes ('PLZ'/'NPA'/'NPA') are widely used in Switzerland (4-digit format). A representative code for the locality center is provided.

-- Inserting cities for Switzerland (CH) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- De Facto Capital & Major Cities
('Bern', (SELECT id FROM world_countries WHERE iso_code_2 = 'CH'), '3000'), -- De facto Capital (Canton of Bern) - Bundesstadt/Ville fédérale
('Zürich', (SELECT id FROM world_countries WHERE iso_code_2 = 'CH'), '8000'), -- Largest City (Canton of Zürich Seat)
('Genève', (SELECT id FROM world_countries WHERE iso_code_2 = 'CH'), '1200'), -- Major City / International Hub (Canton of Geneva Seat) - Geneva
('Basel', (SELECT id FROM world_countries WHERE iso_code_2 = 'CH'), '4000'), -- Major City (Canton of Basel-Stadt Seat)
('Lausanne', (SELECT id FROM world_countries WHERE iso_code_2 = 'CH'), '1000'), -- Major City / IOC Hub (Canton of Vaud Seat)
('Winterthur', (SELECT id FROM world_countries WHERE iso_code_2 = 'CH'), '8400'), -- Major City (Canton of Zürich)
('Luzern', (SELECT id FROM world_countries WHERE iso_code_2 = 'CH'), '6000'), -- Major City / Tourist Hub (Canton of Lucerne Seat) - Lucerne
('St. Gallen', (SELECT id FROM world_countries WHERE iso_code_2 = 'CH'), '9000'), -- Major City (Canton of St. Gallen Seat)
('Lugano', (SELECT id FROM world_countries WHERE iso_code_2 = 'CH'), '6900'), -- Major City (Canton of Ticino)
('Biel/Bienne', (SELECT id FROM world_countries WHERE iso_code_2 = 'CH'), '2500'), -- Bilingual Major City (Canton of Bern)

-- Cantonal Capitals ('Hauptorte'/'chefs-lieux'/'capoluoghi') not already listed (Sample)
('Aarau', (SELECT id FROM world_countries WHERE iso_code_2 = 'CH'), '5000'), -- Canton of Aargau Seat
('Frauenfeld', (SELECT id FROM world_countries WHERE iso_code_2 = 'CH'), '8500'), -- Canton of Thurgau Seat
('Solothurn', (SELECT id FROM world_countries WHERE iso_code_2 = 'CH'), '4500'), -- Canton of Solothurn Seat
('Schaffhausen', (SELECT id FROM world_countries WHERE iso_code_2 = 'CH'), '8200'), -- Canton of Schaffhausen Seat
('Fribourg/Freiburg', (SELECT id FROM world_countries WHERE iso_code_2 = 'CH'), '1700'), -- Bilingual Canton of Fribourg Seat
('Chur', (SELECT id FROM world_countries WHERE iso_code_2 = 'CH'), '7000'), -- Canton of Graubünden/Grisons Seat
('Neuchâtel', (SELECT id FROM world_countries WHERE iso_code_2 = 'CH'), '2000'), -- Canton of Neuchâtel Seat
('Sion', (SELECT id FROM world_countries WHERE iso_code_2 = 'CH'), '1950'), -- Canton of Valais/Wallis Seat
('Bellinzona', (SELECT id FROM world_countries WHERE iso_code_2 = 'CH'), '6500'), -- Canton of Ticino Seat
('Zug', (SELECT id FROM world_countries WHERE iso_code_2 = 'CH'), '6300'), -- Canton of Zug Seat
('Herisau', (SELECT id FROM world_countries WHERE iso_code_2 = 'CH'), '9100'), -- Canton of Appenzell Ausserrhoden Seat (executive/judicial)
('Appenzell', (SELECT id FROM world_countries WHERE iso_code_2 = 'CH'), '9050'), -- Canton of Appenzell Innerrhoden Seat
('Sarnen', (SELECT id FROM world_countries WHERE iso_code_2 = 'CH'), '6060'), -- Canton of Obwalden Seat
('Stans', (SELECT id FROM world_countries WHERE iso_code_2 = 'CH'), '6370'), -- Canton of Nidwalden Seat
('Glarus', (SELECT id FROM world_countries WHERE iso_code_2 = 'CH'), '8750'), -- Canton of Glarus Seat
('Schwyz', (SELECT id FROM world_countries WHERE iso_code_2 = 'CH'), '6430'), -- Canton of Schwyz Seat
('Altdorf', (SELECT id FROM world_countries WHERE iso_code_2 = 'CH'), '6460'), -- Canton of Uri Seat
('Delémont', (SELECT id FROM world_countries WHERE iso_code_2 = 'CH'), '2800'), -- Canton of Jura Seat
('Liestal', (SELECT id FROM world_countries WHERE iso_code_2 = 'CH'), '4410'), -- Canton of Basel-Landschaft Seat

-- Other Significant Towns/Municipalities (Sample)
('Thun', (SELECT id FROM world_countries WHERE iso_code_2 = 'CH'), '3600'), -- Town on Lake Thun (Bern)
('Köniz', (SELECT id FROM world_countries WHERE iso_code_2 = 'CH'), '3098'), -- Large municipality near Bern (Bern)
('La Chaux-de-Fonds', (SELECT id FROM world_countries WHERE iso_code_2 = 'CH'), '2300'), -- Watchmaking city (Neuchâtel)
('Rapperswil-Jona', (SELECT id FROM world_countries WHERE iso_code_2 = 'CH'), '8640'), -- Town on Lake Zurich (St. Gallen)
('Montreux', (SELECT id FROM world_countries WHERE iso_code_2 = 'CH'), '1820'), -- Town on Lake Geneva / Jazz Festival (Vaud)
('Yverdon-les-Bains', (SELECT id FROM world_countries WHERE iso_code_2 = 'CH'), '1400'), -- Town on Lake Neuchâtel (Vaud)
('Zug', (SELECT id FROM world_countries WHERE iso_code_2 = 'CH'), '6300'), -- Town/Canton known for low taxes (Zug) - Also Cantonal Capital
('Nyon', (SELECT id FROM world_countries WHERE iso_code_2 = 'CH'), '1260'), -- Town on Lake Geneva / UEFA HQ (Vaud)
('Vevey', (SELECT id FROM world_countries WHERE iso_code_2 = 'CH'), '1800'), -- Town on Lake Geneva / Nestlé HQ (Vaud)
('Zermatt', (SELECT id FROM world_countries WHERE iso_code_2 = 'CH'), '3920'); -- Famous mountain resort (Valais/Wallis) - No cars allowed

-- End of Switzerland city list (Representative Sample)

/*
-- =======================================
-- ==    Información sobre Suiza       ==
-- =======================================
--
-- Descripción General:
-- Suiza (Schweiz/Suisse/Svizzera/Svizra), oficialmente la Confederación Suiza,
-- es un país sin salida al mar ubicado en Europa Central. Limita con Alemania al
-- norte, Francia al oeste, Italia al sur, y Austria y Liechtenstein al este. Es
-- una república federal compuesta por 26 cantones, con autoridades federales
-- basadas en Berna (capital de facto). Geográficamente se divide entre los Alpes,
-- la Meseta Suiza (Mittelland) y las montañas Jura. Es conocida por su neutralidad
-- política y militar histórica, su alta calidad de vida y su estabilidad económica.
--
-- Ciudades Principales:
-- * Bern: La capital de facto (Bundesstadt/Ville fédérale), sede del gobierno federal.
--   Su ciudad vieja medieval es Patrimonio de la Humanidad por la UNESCO.
-- * Zürich: La ciudad más grande y principal centro financiero y económico del país.
-- * Genève (Ginebra): Un centro global para la diplomacia (sede europea de la ONU,
--   Cruz Roja) y la banca, ubicada en el lago Lemán.
-- * Basel (Basilea): Importante centro industrial (farmacéutico, químico) y cultural,
--   ubicada en el río Rin, en la frontera con Francia y Alemania.
-- * Lausanne: Sede del Comité Olímpico Internacional (COI), en el lago Lemán.
-- * Luzern (Lucerna), St. Gallen, Lugano, Winterthur, Biel/Bienne: Otras ciudades
--   importantes con roles económicos, culturales o turísticos significativos.
--
-- Un Poco de Historia:
-- Habitada por tribus celtas (Helvetii) y luego parte del Imperio Romano. Durante la
-- Edad Media, formó parte del Sacro Imperio Romano Germánico. La Antigua Confederación
-- Suiza se originó a finales del siglo XIII (tradicionalmente en 1291) como una
-- alianza defensiva entre cantones alpinos. Ganó independencia de facto tras derrotar
-- a los Habsburgo y Borgoña. La Reforma Protestante dividió la Confederación. Fue
-- ocupada por Francia durante las Guerras Napoleónicas (República Helvética). El
-- estado federal moderno se estableció en 1848. Mantuvo una estricta neutralidad
-- durante las Guerras Mundiales. Se unió a las Naciones Unidas en 2002.
--
-- Datos Adicionales:
-- Suiza tiene cuatro idiomas oficiales: alemán (hablado por la mayoría, principalmente
-- en dialectos suizo-alemanes), francés (en el oeste), italiano (en el sur, Ticino)
-- y romanche (en algunas partes de Graubünden/Grisons). Es conocida por sus paisajes
-- alpinos espectaculares, relojes, chocolate, queso y sistema bancario. Tiene una
-- fuerte tradición de democracia directa (referendos frecuentes). Es uno de los
-- países más ricos y con mayor calidad de vida del mundo. No es miembro de la Unión
-- Europea, pero está asociada a través de acuerdos bilaterales.
--
*/
