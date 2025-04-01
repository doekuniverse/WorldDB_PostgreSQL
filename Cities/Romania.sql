-- SQL Script to insert a representative sample of significant cities and towns for Romania (RO).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Romania (RO).

-- NOTE: Romania has over 3,000 municipalities/communes. This list includes the capital, county seats (reședință de județ),
-- major cities, and a broad sample of significant towns. Listing every single village (sat) is IMPOSSIBLE.
-- Postal codes are 6 digits; examples or '000000' placeholder are provided.

-- Inserting cities for Romania (RO) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & County Seats (Reședință de Județ) / Major Cities
('Bucharest (București)', (SELECT id FROM world_countries WHERE iso_code_2 = 'RO'), '010000'), -- National Capital (Municipality)
('Cluj-Napoca', (SELECT id FROM world_countries WHERE iso_code_2 = 'RO'), '400000'), -- Cluj County Seat
('Timișoara', (SELECT id FROM world_countries WHERE iso_code_2 = 'RO'), '300000'), -- Timiș County Seat
('Iași', (SELECT id FROM world_countries WHERE iso_code_2 = 'RO'), '700000'), -- Iași County Seat
('Constanța', (SELECT id FROM world_countries WHERE iso_code_2 = 'RO'), '900000'), -- Constanța County Seat (Black Sea port)
('Craiova', (SELECT id FROM world_countries WHERE iso_code_2 = 'RO'), '200000'), -- Dolj County Seat
('Brașov', (SELECT id FROM world_countries WHERE iso_code_2 = 'RO'), '500000'), -- Brașov County Seat
('Galați', (SELECT id FROM world_countries WHERE iso_code_2 = 'RO'), '800000'), -- Galați County Seat (Danube port)
('Ploiești', (SELECT id FROM world_countries WHERE iso_code_2 = 'RO'), '100000'), -- Prahova County Seat
('Oradea', (SELECT id FROM world_countries WHERE iso_code_2 = 'RO'), '410000'), -- Bihor County Seat
('Brăila', (SELECT id FROM world_countries WHERE iso_code_2 = 'RO'), '810000'), -- Brăila County Seat (Danube port)
('Arad', (SELECT id FROM world_countries WHERE iso_code_2 = 'RO'), '310000'), -- Arad County Seat
('Pitești', (SELECT id FROM world_countries WHERE iso_code_2 = 'RO'), '110000'), -- Argeș County Seat
('Sibiu', (SELECT id FROM world_countries WHERE iso_code_2 = 'RO'), '550000'), -- Sibiu County Seat
('Bacău', (SELECT id FROM world_countries WHERE iso_code_2 = 'RO'), '600000'), -- Bacău County Seat
('Târgu Mureș', (SELECT id FROM world_countries WHERE iso_code_2 = 'RO'), '540000'), -- Mureș County Seat
('Baia Mare', (SELECT id FROM world_countries WHERE iso_code_2 = 'RO'), '430000'), -- Maramureș County Seat
('Buzău', (SELECT id FROM world_countries WHERE iso_code_2 = 'RO'), '120000'), -- Buzău County Seat
('Botoșani', (SELECT id FROM world_countries WHERE iso_code_2 = 'RO'), '710000'), -- Botoșani County Seat
('Satu Mare', (SELECT id FROM world_countries WHERE iso_code_2 = 'RO'), '440000'), -- Satu Mare County Seat
('Râmnicu Vâlcea', (SELECT id FROM world_countries WHERE iso_code_2 = 'RO'), '240000'), -- Vâlcea County Seat
('Suceava', (SELECT id FROM world_countries WHERE iso_code_2 = 'RO'), '720000'), -- Suceava County Seat
('Piatra Neamț', (SELECT id FROM world_countries WHERE iso_code_2 = 'RO'), '610000'), -- Neamț County Seat
('Drobeta-Turnu Severin', (SELECT id FROM world_countries WHERE iso_code_2 = 'RO'), '220000'), -- Mehedinți County Seat (Danube port)
('Târgu Jiu', (SELECT id FROM world_countries WHERE iso_code_2 = 'RO'), '210000'), -- Gorj County Seat
('Tulcea', (SELECT id FROM world_countries WHERE iso_code_2 = 'RO'), '820000'), -- Tulcea County Seat (Gateway to Danube Delta)
('Târgoviște', (SELECT id FROM world_countries WHERE iso_code_2 = 'RO'), '130000'), -- Dâmbovița County Seat (Historic capital)
('Focșani', (SELECT id FROM world_countries WHERE iso_code_2 = 'RO'), '620000'), -- Vrancea County Seat
('Bistrița', (SELECT id FROM world_countries WHERE iso_code_2 = 'RO'), '420000'), -- Bistrița-Năsăud County Seat
('Reșița', (SELECT id FROM world_countries WHERE iso_code_2 = 'RO'), '320000'), -- Caraș-Severin County Seat
('Slatina', (SELECT id FROM world_countries WHERE iso_code_2 = 'RO'), '230000'), -- Olt County Seat
('Călărași', (SELECT id FROM world_countries WHERE iso_code_2 = 'RO'), '910000'), -- Călărași County Seat
('Alba Iulia', (SELECT id FROM world_countries WHERE iso_code_2 = 'RO'), '510000'), -- Alba County Seat (Historic city)
('Giurgiu', (SELECT id FROM world_countries WHERE iso_code_2 = 'RO'), '080000'), -- Giurgiu County Seat (Danube port, border with Bulgaria)
('Deva', (SELECT id FROM world_countries WHERE iso_code_2 = 'RO'), '330000'), -- Hunedoara County Seat
('Zalău', (SELECT id FROM world_countries WHERE iso_code_2 = 'RO'), '450000'), -- Sălaj County Seat
('Sfântu Gheorghe', (SELECT id FROM world_countries WHERE iso_code_2 = 'RO'), '520000'), -- Covasna County Seat
('Vaslui', (SELECT id FROM world_countries WHERE iso_code_2 = 'RO'), '730000'), -- Vaslui County Seat
('Slobozia', (SELECT id FROM world_countries WHERE iso_code_2 = 'RO'), '920000'), -- Ialomița County Seat
('Alexandria', (SELECT id FROM world_countries WHERE iso_code_2 = 'RO'), '140000'), -- Teleorman County Seat
('Miercurea Ciuc', (SELECT id FROM world_countries WHERE iso_code_2 = 'RO'), '530000'), -- Harghita County Seat

-- Other Significant Towns (Sample)
('Hunedoara', (SELECT id FROM world_countries WHERE iso_code_2 = 'RO'), '331000'), -- Hunedoara County (Corvin Castle)
('Bârlad', (SELECT id FROM world_countries WHERE iso_code_2 = 'RO'), '731000'), -- Vaslui County
('Roman', (SELECT id FROM world_countries WHERE iso_code_2 = 'RO'), '611000'), -- Neamț County
('Turda', (SELECT id FROM world_countries WHERE iso_code_2 = 'RO'), '401000'), -- Cluj County (Salt mine)
('Mediaș', (SELECT id FROM world_countries WHERE iso_code_2 = 'RO'), '551000'), -- Sibiu County
('Lugoj', (SELECT id FROM world_countries WHERE iso_code_2 = 'RO'), '305500'), -- Timiș County
('Mangalia', (SELECT id FROM world_countries WHERE iso_code_2 = 'RO'), '905500'); -- Constanța County (Black Sea resort)

-- End of Romania city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Romania ==
-- ====================================
--
-- Descripción General:
-- Rumania (Romania) es un país ubicado en el sureste de Europa, en la Península
-- Balcánica. Limita con Ucrania al norte y este, Moldavia al este, el Mar Negro al
-- sureste, Bulgaria al sur, Serbia al suroeste y Hungría al oeste. La cordillera
-- de los Cárpatos atraviesa el centro del país, rodeando la meseta de Transilvania.
-- El río Danubio forma gran parte de la frontera sur y desemboca en el Mar Negro a
-- través del Delta del Danubio (Patrimonio de la Humanidad). Es una república
-- semipresidencialista unitaria y miembro de la Unión Europea y la OTAN.
--
-- Ciudades Principales:
-- * Bucarest (Bucharest / București): La capital y ciudad más grande, centro
--   político, económico y cultural.
-- * Cluj-Napoca: Principal ciudad de Transilvania, importante centro universitario y tecnológico.
-- * Timișoara: Principal ciudad del oeste (Banato), cuna de la Revolución Rumana de 1989.
-- * Iași: Principal centro cultural e histórico de la región de Moldavia rumana.
-- * Constanța: Principal puerto de Rumania en el Mar Negro.
-- * Craiova, Brașov, Galați, Ploiești, Oradea: Otras grandes ciudades y centros
--   industriales o regionales. Brașov y Sibiu son ciudades importantes en Transilvania.
-- * La lista incluye también las capitales de todos los 41 condados (județe) y otras
--   ciudades significativas.
--
-- Un Poco de Historia:
-- El territorio corresponde en gran parte a la antigua Dacia, conquistada por el
-- Imperio Romano. Tras la retirada romana, fue invadida por diversos pueblos. En la
-- Edad Media, surgieron los principados de Valaquia, Moldavia y Transilvania, que
-- estuvieron bajo influencia o dominio otomano, húngaro y austriaco (Habsburgo).
-- Los principados de Valaquia y Moldavia se unieron en 1859 para formar los
-- Principados Unidos, que adoptaron el nombre de Rumania en 1866 y obtuvieron la
-- plena independencia del Imperio Otomano en 1878. Se convirtió en reino. Tras la
-- Primera Guerra Mundial, se unieron Transilvania, Besarabia y Bucovina, formando
-- la Gran Rumania. Durante la Segunda Guerra Mundial, se alió inicialmente con el Eje,
-- luego cambió de bando. Después de la guerra, cayó bajo la influencia soviética y
-- se estableció un régimen comunista, liderado durante mucho tiempo por Nicolae
-- Ceaușescu de forma dictatorial. La Revolución Rumana de 1989 derrocó y ejecutó a
-- Ceaușescu. Desde entonces, Rumania ha sido una democracia multipartidista y se
-- unió a la OTAN en 2004 y a la UE en 2007.
--
-- Datos Adicionales:
-- El rumano es el idioma oficial (una lengua romance). La mayoría de la población es
-- cristiana ortodoxa rumana. Rumania es conocida por la región de Transilvania
-- (asociada al mito de Drácula), los Cárpatos, los monasterios pintados de Bucovina
-- (Patrimonio de la Humanidad) y el Delta del Danubio (Patrimonio de la Humanidad).
--
*/
