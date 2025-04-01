-- SQL Script to insert a representative sample of significant cities and towns for Tajikistan (TJ).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Tajikistan (TJ).

-- NOTE: Tajikistan has numerous cities, towns ('shahrak'), and villages ('deha'). Listing every single
-- settlement is impractical for this format, and data availability can be inconsistent.
-- This list focuses on the capital, major cities, regional administrative centers, and a sample of other significant towns.
-- Postal codes in Tajikistan use a 6-digit format (NNNNNN). Availability in datasets can be limited; using '000000' as a placeholder where necessary.

-- Inserting cities for Tajikistan (TJ) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Major Cities / Regional Centers
('Dushanbe', (SELECT id FROM world_countries WHERE iso_code_2 = 'TJ'), '734000'), -- National Capital (Districts of Republican Subordination)
('Khujand', (SELECT id FROM world_countries WHERE iso_code_2 = 'TJ'), '735700'), -- Second Largest City (Sughd Region Capital, formerly Leninabad)
('Bokhtar', (SELECT id FROM world_countries WHERE iso_code_2 = 'TJ'), '735140'), -- Major City (Khatlon Region Capital, formerly Qurghonteppa/Kurgan-Tyube)
('Kulob', (SELECT id FROM world_countries WHERE iso_code_2 = 'TJ'), '735140'), -- Major City (Khatlon Region)
('Istaravshan', (SELECT id FROM world_countries WHERE iso_code_2 = 'TJ'), '735690'), -- Historic City (Sughd Region, formerly Ura-Tyube)
('Konibodom', (SELECT id FROM world_countries WHERE iso_code_2 = 'TJ'), '735600'), -- City in Fergana Valley (Sughd Region)
('Panjakent', (SELECT id FROM world_countries WHERE iso_code_2 = 'TJ'), '735500'), -- City near ancient ruins (Sughd Region)
('Tursunzoda', (SELECT id FROM world_countries WHERE iso_code_2 = 'TJ'), '735000'), -- Industrial City (Districts of Republican Subordination, formerly Regar)
('Isfara', (SELECT id FROM world_countries WHERE iso_code_2 = 'TJ'), '735920'), -- City in Fergana Valley (Sughd Region)
('Vahdat', (SELECT id FROM world_countries WHERE iso_code_2 = 'TJ'), '735400'), -- City near Dushanbe (Districts of Republican Subordination, formerly Kofarnihon/Ordzhonikidzeabad)
('Khorugh', (SELECT id FROM world_countries WHERE iso_code_2 = 'TJ'), '736000'), -- Gorno-Badakhshan Autonomous Region Capital (Pamir)

-- Other Significant Towns/Shahrak (Sample)
('Buston', (SELECT id FROM world_countries WHERE iso_code_2 = 'TJ'), '735750'), -- Town in Sughd Region (formerly Chkalovsk)
('Norak', (SELECT id FROM world_countries WHERE iso_code_2 = 'TJ'), '735300'), -- Town known for its dam (Khatlon Region)
('Hisor', (SELECT id FROM world_countries WHERE iso_code_2 = 'TJ'), '735020'), -- Town near Dushanbe with fortress (Districts of Republican Subordination, formerly Gissar)
('Danghara', (SELECT id FROM world_countries WHERE iso_code_2 = 'TJ'), '735320'), -- Town in Khatlon Region
('Moskovskiy (Hamadoni)', (SELECT id FROM world_countries WHERE iso_code_2 = 'TJ'), '735100'), -- Town in Khatlon Region (District named Hamadoni)
('Farkhor', (SELECT id FROM world_countries WHERE iso_code_2 = 'TJ'), '735460'), -- Town in Khatlon Region
('Ghafurov', (SELECT id FROM world_countries WHERE iso_code_2 = 'TJ'), '735730'); -- Town near Khujand (Sughd Region)


-- End of Tajikistan city list (Representative Sample)

/*
-- =============================================
-- ==    Información sobre Tayikistán        ==
-- =============================================
--
-- Descripción General:
-- Tayikistán (Тоҷикистон), oficialmente la República de Tayikistán, es un país
-- montañoso y sin salida al mar ubicado en Asia Central. Limita con Afganistán al
-- sur, Uzbekistán al oeste, Kirguistán al norte y China al este. Más del 90% de su
-- territorio está cubierto por montañas, incluyendo las cordilleras del Pamir y
-- Alay, lo que le vale el apodo de "el techo del mundo". La población se concentra
-- en los valles fluviales y en el extremo norte (parte del Valle de Fergana).
--
-- Ciudades Principales:
-- * Dusambé (Dushanbe): La capital y ciudad más grande, ubicada en el oeste del país.
--   Centro político, cultural y económico.
-- * Khujand (Judzhand): La segunda ciudad más grande, situada en el Valle de Fergana
--   en el norte. Es una de las ciudades más antiguas de Asia Central.
-- * Bojtar (Bokhtar): Anteriormente Qurghonteppa, es la capital de la región sureña
--   de Khatlon y un importante centro agrícola.
-- * Kulob (Kulyab): Otra ciudad importante en la región de Khatlon.
-- * Istaravshan, Konibodom, Panjakent: Ciudades históricas en la región norteña de Sughd.
-- * Khorugh (Jorog): La capital de la Región Autónoma de Gorno-Badakhshan (Pamir),
--   ubicada en un valle montañoso remoto.
--
-- Un Poco de Historia:
-- El territorio de Tayikistán ha sido parte de varios imperios persas antiguos
-- (Aqueménida, Sasánida) y fue un centro importante en la Ruta de la Seda. Fue
-- parte de los imperios Samánida y Timúrida. Fue conquistado por el Imperio Ruso
-- en el siglo XIX (parte del Turquestán Ruso y el Emirato de Bujará). Tras la
-- Revolución Rusa, se estableció la República Socialista Soviética Autónoma de
-- Tayikistán dentro de Uzbekistán en 1924, y luego se convirtió en una república
-- soviética de pleno derecho (RSS de Tayikistán) en 1929. Obtuvo la independencia
-- de la Unión Soviética en 1991. Poco después, el país se sumió en una devastadora
-- guerra civil (1992-1997) entre facciones regionales y políticas. Desde el fin de
-- la guerra, el país ha estado bajo el liderazgo del presidente Emomali Rahmon.
--
-- Datos Adicionales:
-- El tayiko es el idioma oficial y está estrechamente relacionado con el persa (farsi/dari).
-- El ruso sigue siendo ampliamente utilizado, especialmente en los negocios y el gobierno.
-- La mayoría de la población es de etnia tayika, con minorías significativas de uzbekos
-- y kirguises. La mayoría de los tayikos son musulmanes sunitas. La Región Autónoma
-- de Gorno-Badakhshan (Pamir) es hogar de varios pequeños grupos étnicos pamiris que
-- hablan lenguas iranias orientales y son predominantemente musulmanes ismaelitas.
-- La economía depende en gran medida de las remesas de los trabajadores emigrantes
-- (principalmente en Rusia), la producción de aluminio y el cultivo de algodón.
-- Es un país de gran belleza natural, dominado por altas montañas, glaciares y lagos.
--
*/
