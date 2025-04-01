-- SQL Script to insert a representative sample of significant cities and municipalities for the Netherlands (NL).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Netherlands (NL).
-- NOTE: This list covers metropolitan Netherlands, excluding Caribbean parts (BQ).

-- NOTE: The Netherlands is densely populated with over 300 municipalities. This list includes the capital,
-- seat of government, provincial capitals, major cities, and significant municipalities. Listing every single locality is IMPOSSIBLE.
-- Postal codes are ####XX format; 4-digit examples or '0000' placeholder are provided.

-- Inserting cities for Netherlands (NL) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Seat of Government / Provincial Capitals / Major Cities
('Amsterdam', (SELECT id FROM world_countries WHERE iso_code_2 = 'NL'), '1011'), -- National Capital (North Holland Province)
('Rotterdam', (SELECT id FROM world_countries WHERE iso_code_2 = 'NL'), '3011'), -- South Holland Province (Largest port in Europe)
('The Hague (Den Haag)', (SELECT id FROM world_countries WHERE iso_code_2 = 'NL'), '2511'), -- South Holland Province Capital (Seat of Government)
('Utrecht', (SELECT id FROM world_countries WHERE iso_code_2 = 'NL'), '3511'), -- Utrecht Province Capital
('Eindhoven', (SELECT id FROM world_countries WHERE iso_code_2 = 'NL'), '5611'), -- North Brabant Province (Major city)
('Tilburg', (SELECT id FROM world_countries WHERE iso_code_2 = 'NL'), '5011'), -- North Brabant Province
('Groningen', (SELECT id FROM world_countries WHERE iso_code_2 = 'NL'), '9711'), -- Groningen Province Capital
('Almere', (SELECT id FROM world_countries WHERE iso_code_2 = 'NL'), '1311'), -- Flevoland Province (Major new city)
('Breda', (SELECT id FROM world_countries WHERE iso_code_2 = 'NL'), '4811'), -- North Brabant Province
('Nijmegen', (SELECT id FROM world_countries WHERE iso_code_2 = 'NL'), '6511'), -- Gelderland Province
('Enschede', (SELECT id FROM world_countries WHERE iso_code_2 = 'NL'), '7511'), -- Overijssel Province
('Apeldoorn', (SELECT id FROM world_countries WHERE iso_code_2 = 'NL'), '7311'), -- Gelderland Province
('Haarlem', (SELECT id FROM world_countries WHERE iso_code_2 = 'NL'), '2011'), -- North Holland Province Capital
('Arnhem', (SELECT id FROM world_countries WHERE iso_code_2 = 'NL'), '6811'), -- Gelderland Province Capital
('Zaanstad', (SELECT id FROM world_countries WHERE iso_code_2 = 'NL'), '1501'), -- North Holland Province (Near Amsterdam)
('Amersfoort', (SELECT id FROM world_countries WHERE iso_code_2 = 'NL'), '3811'), -- Utrecht Province
('Haarlemmermeer', (SELECT id FROM world_countries WHERE iso_code_2 = 'NL'), '2131'), -- North Holland Province (Includes Schiphol Airport, Hoofddorp town)
('\'s-Hertogenbosch (Den Bosch)', (SELECT id FROM world_countries WHERE iso_code_2 = 'NL'), '5211'), -- North Brabant Province Capital
('Zwolle', (SELECT id FROM world_countries WHERE iso_code_2 = 'NL'), '8011'), -- Overijssel Province Capital
('Zoetermeer', (SELECT id FROM world_countries WHERE iso_code_2 = 'NL'), '2711'), -- South Holland Province
('Leiden', (SELECT id FROM world_countries WHERE iso_code_2 = 'NL'), '2311'), -- South Holland Province (University city)
('Maastricht', (SELECT id FROM world_countries WHERE iso_code_2 = 'NL'), '6211'), -- Limburg Province Capital
('Dordrecht', (SELECT id FROM world_countries WHERE iso_code_2 = 'NL'), '3311'), -- South Holland Province
('Ede', (SELECT id FROM world_countries WHERE iso_code_2 = 'NL'), '6711'), -- Gelderland Province
('Leeuwarden', (SELECT id FROM world_countries WHERE iso_code_2 = 'NL'), '8911'), -- Friesland Province Capital
('Alkmaar', (SELECT id FROM world_countries WHERE iso_code_2 = 'NL'), '1811'), -- North Holland Province
('Emmen', (SELECT id FROM world_countries WHERE iso_code_2 = 'NL'), '7811'), -- Drenthe Province (Largest town)
('Delft', (SELECT id FROM world_countries WHERE iso_code_2 = 'NL'), '2611'), -- South Holland Province (University city, ceramics)
('Venlo', (SELECT id FROM world_countries WHERE iso_code_2 = 'NL'), '5911'), -- Limburg Province
('Deventer', (SELECT id FROM world_countries WHERE iso_code_2 = 'NL'), '7411'), -- Overijssel Province
('Sittard-Geleen', (SELECT id FROM world_countries WHERE iso_code_2 = 'NL'), '6131'), -- Limburg Province
('Oss', (SELECT id FROM world_countries WHERE iso_code_2 = 'NL'), '5341'), -- North Brabant Province
('Helmond', (SELECT id FROM world_countries WHERE iso_code_2 = 'NL'), '5701'), -- North Brabant Province
('Heerlen', (SELECT id FROM world_countries WHERE iso_code_2 = 'NL'), '6411'), -- Limburg Province
('Hilversum', (SELECT id FROM world_countries WHERE iso_code_2 = 'NL'), '1211'), -- North Holland Province (Media center)
('Amstelveen', (SELECT id FROM world_countries WHERE iso_code_2 = 'NL'), '1181'), -- North Holland Province (Amsterdam Metro)
('Assen', (SELECT id FROM world_countries WHERE iso_code_2 = 'NL'), '9401'), -- Drenthe Province Capital
('Lelystad', (SELECT id FROM world_countries WHERE iso_code_2 = 'NL'), '8211'), -- Flevoland Province Capital
('Middelburg', (SELECT id FROM world_countries WHERE iso_code_2 = 'NL'), '4331'), -- Zeeland Province Capital
('Spijkenisse', (SELECT id FROM world_countries WHERE iso_code_2 = 'NL'), '3201'), -- South Holland Province (Part of Nissewaard)
('Gouda', (SELECT id FROM world_countries WHERE iso_code_2 = 'NL'), '2801'), -- South Holland Province (Cheese)
('Vlaardingen', (SELECT id FROM world_countries WHERE iso_code_2 = 'NL'), '3131'), -- South Holland Province (Rotterdam Metro)
('Hoorn', (SELECT id FROM world_countries WHERE iso_code_2 = 'NL'), '1621'); -- North Holland Province

-- End of Netherlands city list (Representative Sample)

/*
-- ========================================
-- == Información sobre Netherlands ==
-- ========================================
--
-- Descripción General:
-- Los Países Bajos (Netherlands) son un país ubicado principalmente en Europa Occidental,
-- con territorios en el Caribe (Bonaire, Sint Eustatius, Saba, Aruba, Curazao, San Martín).
-- Esta entrada se refiere a la parte europea. Limita con el Mar del Norte al norte y
-- oeste, Alemania al este y Bélgica al sur. Es un país de baja altitud y muy llano,
-- con casi un tercio de su superficie por debajo del nivel del mar, protegido por un
-- extenso sistema de diques y pólderes (tierras ganadas al mar). Es uno de los países
-- más densamente poblados del mundo. Es una monarquía constitucional parlamentaria y
-- miembro fundador de la UE, la OTAN y la Eurozona.
--
-- Ciudades Principales:
-- * Ámsterdam (Amsterdam): La capital constitucional y ciudad más grande, famosa por
--   sus canales, museos (Rijksmuseum, Van Gogh, Anne Frank) y ambiente liberal.
-- * Róterdam (Rotterdam): Segunda ciudad más grande y el puerto más grande de Europa.
--   Conocida por su arquitectura moderna.
-- * La Haya (The Hague / Den Haag): Sede del gobierno, el parlamento, la residencia
--   real y la Corte Internacional de Justicia. Capital de la provincia de Holanda Meridional.
-- * Utrecht: Importante ciudad universitaria y centro de transporte en el corazón del país.
-- * Eindhoven: Centro tecnológico y de diseño en el sur (sede de Philips).
-- * Tilburg, Groningen, Almere, Breda, Nijmegen: Otras ciudades grandes y centros regionales.
-- * La lista incluye también las capitales de todas las 12 provincias y otras ciudades significativas.
--
-- Un Poco de Historia:
-- La región formó parte del Imperio Romano, el Imperio Franco y luego del Sacro Imperio
-- Romano Germánico y los Países Bajos de los Habsburgo. En el siglo XVI, las provincias
-- del norte se rebelaron contra el dominio español (Guerra de los Ochenta Años) y
-- formaron la República Neerlandesa (Provincias Unidas), que se convirtió en una
-- potencia marítima, comercial y cultural mundial en el siglo XVII (Edad de Oro neerlandesa).
-- Estableció un vasto imperio colonial (Indias Orientales Neerlandesas - Indonesia,
-- Surinam, Antillas Neerlandesas). Tras un periodo como república satélite de Francia
-- y luego unida a Bélgica, se estableció el Reino de los Países Bajos en 1815 (Bélgica
-- se separó en 1830). Fue neutral en la Primera Guerra Mundial pero ocupado por
-- Alemania en la Segunda. Fue miembro fundador de las comunidades europeas. Perdió
-- su imperio colonial después de la guerra.
--
-- Datos Adicionales:
-- El neerlandés es el idioma oficial. Los Países Bajos son famosos por sus molinos de
-- viento, tulipanes, quesos (Gouda, Edam), zuecos, canales, bicicletas y pintores
-- (Rembrandt, Vermeer, Van Gogh). Son líderes mundiales en gestión del agua y agricultura
-- intensiva. Tienen una larga tradición de tolerancia social.
--
*/
