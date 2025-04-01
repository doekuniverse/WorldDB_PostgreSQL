-- SQL Script to insert a representative sample of significant cities and towns for Sweden (SE).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Sweden (SE).

-- NOTE: Sweden has thousands of defined localities ('tätorter' >200 inhabitants, 'småorter' 50-199 inhabitants)
-- and countless smaller named places. Listing every single one is impractical for this format.
-- This list focuses on the capital, major cities, county seats (residensstäder), and a sample of other significant localities ('tätorter').
-- Postal codes ('postnummer') are widely used in Sweden (format NNN NN). A representative code for the locality center is provided where possible,
-- but a single locality might span multiple codes, and smaller ones might share codes with surrounding areas.

-- Inserting cities for Sweden (SE) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Major Cities
('Stockholm', (SELECT id FROM world_countries WHERE iso_code_2 = 'SE'), '100 00'), -- National Capital (Stockholm County)
('Göteborg', (SELECT id FROM world_countries WHERE iso_code_2 = 'SE'), '400 10'), -- Major City (Västra Götaland County)
('Malmö', (SELECT id FROM world_countries WHERE iso_code_2 = 'SE'), '200 10'), -- Major City (Skåne County)
('Uppsala', (SELECT id FROM world_countries WHERE iso_code_2 = 'SE'), '750 00'), -- Major City / University City (Uppsala County Seat)
('Linköping', (SELECT id FROM world_countries WHERE iso_code_2 = 'SE'), '580 00'), -- Major City / University City (Östergötland County Seat)
('Västerås', (SELECT id FROM world_countries WHERE iso_code_2 = 'SE'), '720 00'), -- Major City (Västmanland County Seat)
('Örebro', (SELECT id FROM world_countries WHERE iso_code_2 = 'SE'), '700 00'), -- Major City (Örebro County Seat)
('Helsingborg', (SELECT id FROM world_countries WHERE iso_code_2 = 'SE'), '250 00'), -- Major City (Skåne County)
('Jönköping', (SELECT id FROM world_countries WHERE iso_code_2 = 'SE'), '550 00'), -- Major City (Jönköping County Seat)
('Norrköping', (SELECT id FROM world_countries WHERE iso_code_2 = 'SE'), '600 00'), -- Major City (Östergötland County)

-- County Seats ('Residensstäder') not already listed above (Sample)
('Luleå', (SELECT id FROM world_countries WHERE iso_code_2 = 'SE'), '970 00'), -- Norrbotten County Seat
('Umeå', (SELECT id FROM world_countries WHERE iso_code_2 = 'SE'), '900 00'), -- Västerbotten County Seat
('Gävle', (SELECT id FROM world_countries WHERE iso_code_2 = 'SE'), '800 00'), -- Gävleborg County Seat
('Karlstad', (SELECT id FROM world_countries WHERE iso_code_2 = 'SE'), '650 00'), -- Värmland County Seat
('Växjö', (SELECT id FROM world_countries WHERE iso_code_2 = 'SE'), '350 00'), -- Kronoberg County Seat
('Halmstad', (SELECT id FROM world_countries WHERE iso_code_2 = 'SE'), '300 00'), -- Halland County Seat
('Visby', (SELECT id FROM world_countries WHERE iso_code_2 = 'SE'), '621 00'), -- Gotland County Seat
('Falun', (SELECT id FROM world_countries WHERE iso_code_2 = 'SE'), '791 00'), -- Dalarna County Seat
('Nyköping', (SELECT id FROM world_countries WHERE iso_code_2 = 'SE'), '611 00'), -- Södermanland County Seat
('Kalmar', (SELECT id FROM world_countries WHERE iso_code_2 = 'SE'), '390 00'), -- Kalmar County Seat
('Karlskrona', (SELECT id FROM world_countries WHERE iso_code_2 = 'SE'), '371 00'), -- Blekinge County Seat
('Härnösand', (SELECT id FROM world_countries WHERE iso_code_2 = 'SE'), '871 00'), -- Västernorrland County Seat
('Östersund', (SELECT id FROM world_countries WHERE iso_code_2 = 'SE'), '831 00'), -- Jämtland County Seat
-- ('Mariestad' is Västra Götaland's seat, but Göteborg is the main city)
-- ('Kristianstad' is Skåne's seat, but Malmö is the main city)

-- Other Significant Towns/Localities ('Tätorter' - Sample)
('Lund', (SELECT id FROM world_countries WHERE iso_code_2 = 'SE'), '220 00'), -- University City (Skåne)
('Borås', (SELECT id FROM world_countries WHERE iso_code_2 = 'SE'), '500 00'), -- Industrial City (Västra Götaland)
('Eskilstuna', (SELECT id FROM world_countries WHERE iso_code_2 = 'SE'), '630 00'), -- Industrial City (Södermanland)
('Sundsvall', (SELECT id FROM world_countries WHERE iso_code_2 = 'SE'), '850 00'), -- Coastal City (Västernorrland)
('Skövde', (SELECT id FROM world_countries WHERE iso_code_2 = 'SE'), '540 00'), -- Industrial/Military City (Västra Götaland)
('Trollhättan', (SELECT id FROM world_countries WHERE iso_code_2 = 'SE'), '460 00'), -- Industrial City (Västra Götaland)
('Kiruna', (SELECT id FROM world_countries WHERE iso_code_2 = 'SE'), '981 00'), -- Mining Town (Norrbotten)
('Sigtuna', (SELECT id FROM world_countries WHERE iso_code_2 = 'SE'), '193 00'), -- Historic Town (Stockholm)
('Ystad', (SELECT id FROM world_countries WHERE iso_code_2 = 'SE'), '271 00'), -- Coastal Town (Skåne)
('Marstrand', (SELECT id FROM world_countries WHERE iso_code_2 = 'SE'), '440 30'), -- Coastal/Sailing Town (Västra Götaland)
('Abisko', (SELECT id FROM world_countries WHERE iso_code_2 = 'SE'), '981 07'); -- Tourist/Research Station (Norrbotten)

-- End of Sweden city list (Representative Sample)

/*
-- ====================================
-- ==    Información sobre Suecia    ==
-- ====================================
--
-- Descripción General:
-- Suecia (Sverige), oficialmente el Reino de Suecia, es un país nórdico ubicado
-- en el norte de Europa, en la península escandinava. Limita con Noruega al oeste
-- y norte, Finlandia al este, y está conectada a Dinamarca al suroeste por el
-- puente de Øresund. Tiene una larga costa a lo largo del Mar Báltico y el Golfo
-- de Botnia. Es el tercer país más grande de la Unión Europea por área, pero tiene
-- una baja densidad de población, concentrada principalmente en el sur y en las
-- áreas urbanas. Gran parte del país está cubierta por bosques y lagos.
--
-- Ciudades Principales:
-- * Stockholm: La capital y ciudad más grande, construida sobre 14 islas donde el
--   lago Mälaren se encuentra con el Mar Báltico. Es el centro político, económico
--   y cultural del país.
-- * Göteborg (Gotemburgo): La segunda ciudad más grande, ubicada en la costa oeste.
--   Es un importante puerto y centro industrial.
-- * Malmö: La tercera ciudad más grande, en el sur, conectada a Copenhague (Dinamarca)
--   por el puente de Øresund. Es un centro multicultural y de negocios.
-- * Uppsala: Una histórica ciudad universitaria al norte de Estocolmo.
-- * Linköping, Västerås, Örebro, Helsingborg, Jönköping, Norrköping: Otras ciudades
--   importantes con industria, comercio y servicios.
-- * Luleå, Umeå: Principales ciudades del norte de Suecia.
--
-- Un Poco de Historia:
-- Habitada desde la prehistoria. Conocida por la Era Vikinga (aprox. 800-1050 d.C.),
-- cuando los suecos (Varegos) comerciaron y exploraron hacia el este (Rusia, Bizancio).
-- Se cristianizó gradualmente alrededor del siglo XI. Formó la Unión de Kalmar con
-- Dinamarca y Noruega en 1397, de la cual se separó en 1523 bajo el rey Gustavo Vasa,
-- marcando el inicio de la Suecia moderna. En el siglo XVII, Suecia se convirtió en
-- una gran potencia europea (el Imperio Sueco), controlando gran parte del Báltico.
-- Tras la Gran Guerra del Norte (principios del s. XVIII), perdió gran parte de su
-- imperio. Suecia no ha participado en ninguna guerra desde 1814, manteniendo una
-- política de neutralidad (aunque ahora es miembro de la OTAN desde 2024). Desarrolló
-- un estado de bienestar modelo durante el siglo XX. Es una monarquía constitucional
-- con un sistema parlamentario.
--
-- Datos Adicionales:
-- El sueco es el idioma oficial. El inglés es ampliamente hablado, especialmente por
-- las generaciones más jóvenes. Suecia es conocida por su alto nivel de vida, igualdad
-- social, innovación (empresas como IKEA, Volvo, Ericsson, Spotify), y diseño. Tiene
-- una fuerte tradición de protección ambiental. La cultura incluye el concepto de
-- 'fika' (pausa para café y pastel), celebraciones como Midsommar (Solsticio de Verano),
-- y un gran aprecio por la naturaleza ('Allemansrätten' - derecho de acceso público).
-- La población indígena Sami vive en el norte del país.
--
*/
