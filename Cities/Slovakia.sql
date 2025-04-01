-- SQL Script to insert a representative sample of significant cities and towns for Slovakia (SK).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Slovakia (SK).

-- NOTE: Slovakia has numerous municipalities (obce). This list includes the capital, regional capitals,
-- major cities, and a broad sample of significant towns/district centers. Listing every single village (dedina) is IMPOSSIBLE.
-- Postal codes are ##### (often ### ##); examples or '000 00' placeholder are provided.

-- Inserting cities for Slovakia (SK) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Regional Capitals (Krajské mesto) / Major Cities
('Bratislava', (SELECT id FROM world_countries WHERE iso_code_2 = 'SK'), '811 01'), -- National Capital & Bratislava Region Capital
('Košice', (SELECT id FROM world_countries WHERE iso_code_2 = 'SK'), '040 01'), -- Košice Region Capital
('Prešov', (SELECT id FROM world_countries WHERE iso_code_2 = 'SK'), '080 01'), -- Prešov Region Capital
('Žilina', (SELECT id FROM world_countries WHERE iso_code_2 = 'SK'), '010 01'), -- Žilina Region Capital
('Banská Bystrica', (SELECT id FROM world_countries WHERE iso_code_2 = 'SK'), '974 01'), -- Banská Bystrica Region Capital
('Nitra', (SELECT id FROM world_countries WHERE iso_code_2 = 'SK'), '949 01'), -- Nitra Region Capital
('Trnava', (SELECT id FROM world_countries WHERE iso_code_2 = 'SK'), '917 01'), -- Trnava Region Capital
('Trenčín', (SELECT id FROM world_countries WHERE iso_code_2 = 'SK'), '911 01'), -- Trenčín Region Capital

-- Other Significant Towns / District Centers (Okresné mesto) (Sample)
('Martin', (SELECT id FROM world_countries WHERE iso_code_2 = 'SK'), '036 01'), -- Žilina Region
('Poprad', (SELECT id FROM world_countries WHERE iso_code_2 = 'SK'), '058 01'), -- Prešov Region (Near High Tatras)
('Prievidza', (SELECT id FROM world_countries WHERE iso_code_2 = 'SK'), '971 01'), -- Trenčín Region
('Zvolen', (SELECT id FROM world_countries WHERE iso_code_2 = 'SK'), '960 01'), -- Banská Bystrica Region
('Považská Bystrica', (SELECT id FROM world_countries WHERE iso_code_2 = 'SK'), '017 01'), -- Trenčín Region
('Nové Zámky', (SELECT id FROM world_countries WHERE iso_code_2 = 'SK'), '940 01'), -- Nitra Region
('Michalovce', (SELECT id FROM world_countries WHERE iso_code_2 = 'SK'), '071 01'), -- Košice Region
('Spišská Nová Ves', (SELECT id FROM world_countries WHERE iso_code_2 = 'SK'), '052 01'), -- Košice Region
('Komárno', (SELECT id FROM world_countries WHERE iso_code_2 = 'SK'), '945 01'), -- Nitra Region (Border with Hungary)
('Levice', (SELECT id FROM world_countries WHERE iso_code_2 = 'SK'), '934 01'), -- Nitra Region
('Humenné', (SELECT id FROM world_countries WHERE iso_code_2 = 'SK'), '066 01'), -- Prešov Region
('Bardejov', (SELECT id FROM world_countries WHERE iso_code_2 = 'SK'), '085 01'), -- Prešov Region (UNESCO site)
('Liptovský Mikuláš', (SELECT id FROM world_countries WHERE iso_code_2 = 'SK'), '031 01'), -- Žilina Region
('Ružomberok', (SELECT id FROM world_countries WHERE iso_code_2 = 'SK'), '034 01'), -- Žilina Region
('Piešťany', (SELECT id FROM world_countries WHERE iso_code_2 = 'SK'), '921 01'), -- Trnava Region (Spa town)
('Topoľčany', (SELECT id FROM world_countries WHERE iso_code_2 = 'SK'), '955 01'), -- Nitra Region
('Lučenec', (SELECT id FROM world_countries WHERE iso_code_2 = 'SK'), '984 01'), -- Banská Bystrica Region
('Čadca', (SELECT id FROM world_countries WHERE iso_code_2 = 'SK'), '022 01'), -- Žilina Region
('Dubnica nad Váhom', (SELECT id FROM world_countries WHERE iso_code_2 = 'SK'), '018 41'), -- Trenčín Region
('Rimavská Sobota', (SELECT id FROM world_countries WHERE iso_code_2 = 'SK'), '979 01'), -- Banská Bystrica Region
('Partizánske', (SELECT id FROM world_countries WHERE iso_code_2 = 'SK'), '958 01'), -- Trenčín Region
('Šaľa', (SELECT id FROM world_countries WHERE iso_code_2 = 'SK'), '927 01'), -- Nitra Region
('Hlohovec', (SELECT id FROM world_countries WHERE iso_code_2 = 'SK'), '920 01'), -- Trnava Region
('Dunajská Streda', (SELECT id FROM world_countries WHERE iso_code_2 = 'SK'), '929 01'), -- Trnava Region (Hungarian minority center)
('Vranov nad Topľou', (SELECT id FROM world_countries WHERE iso_code_2 = 'SK'), '093 01'), -- Prešov Region
('Brezno', (SELECT id FROM world_countries WHERE iso_code_2 = 'SK'), '977 01'), -- Banská Bystrica Region
('Snina', (SELECT id FROM world_countries WHERE iso_code_2 = 'SK'), '069 01'), -- Prešov Region
('Senica', (SELECT id FROM world_countries WHERE iso_code_2 = 'SK'), '905 01'), -- Trnava Region
('Nové Mesto nad Váhom', (SELECT id FROM world_countries WHERE iso_code_2 = 'SK'), '915 01'), -- Trenčín Region
('Pezinok', (SELECT id FROM world_countries WHERE iso_code_2 = 'SK'), '902 01'), -- Bratislava Region
('Dolný Kubín', (SELECT id FROM world_countries WHERE iso_code_2 = 'SK'), '026 01'), -- Žilina Region
('Žiar nad Hronom', (SELECT id FROM world_countries WHERE iso_code_2 = 'SK'), '965 01'), -- Banská Bystrica Region
('Rožňava', (SELECT id FROM world_countries WHERE iso_code_2 = 'SK'), '048 01'), -- Košice Region
('Púchov', (SELECT id FROM world_countries WHERE iso_code_2 = 'SK'), '020 01'), -- Trenčín Region
('Malacky', (SELECT id FROM world_countries WHERE iso_code_2 = 'SK'), '901 01'); -- Bratislava Region

-- End of Slovakia city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Slovakia ==
-- ====================================
--
-- Descripción General:
-- Eslovaquia (Slovakia), oficialmente República Eslovaca, es un país sin salida al
-- mar ubicado en Europa Central. Limita con Chequia al noroeste, Austria al oeste,
-- Polonia al norte, Ucrania al este y Hungría al sur. Es un país mayormente
-- montañoso, dominado por la cordillera de los Cárpatos (incluyendo los Altos Tatras
-- en la frontera con Polonia). El río Danubio forma parte de su frontera sur. Es una
-- república parlamentaria y miembro de la Unión Europea, la OTAN y la Eurozona.
--
-- Ciudades Principales:
-- * Bratislava: La capital y ciudad más grande, ubicada en el suroeste, a orillas
--   del Danubio, cerca de las fronteras con Austria y Hungría.
-- * Košice: La segunda ciudad más grande, principal centro urbano en el este de Eslovaquia.
-- * Prešov, Žilina, Banská Bystrica, Nitra, Trnava, Trenčín: Capitales de las demás
--   regiones (kraje) y ciudades importantes.
-- * Martin, Poprad (cerca de los Altos Tatras), Prievidza, Zvolen: Otras ciudades
--   significativas.
-- * La lista incluye también las capitales de todas las regiones y otros pueblos importantes.
--
-- Un Poco de Historia:
-- Habitada por tribus eslavas a partir del siglo V/VI. Formó parte del Imperio de
-- la Gran Moravia en el siglo IX. Tras la caída de Gran Moravia, el territorio fue
-- incorporado gradualmente al Reino de Hungría (conocido como Alta Hungría), del
-- cual formó parte durante casi mil años (incluyendo el período bajo los Habsburgo).
-- Tras la Primera Guerra Mundial y la disolución del Imperio Austrohúngaro, Eslovaquia
-- se unió a las tierras checas para formar Checoslovaquia en 1918. Durante la Segunda
-- Guerra Mundial, existió una República Eslovaca títere de la Alemania nazi. Después
-- de la guerra, se restauró Checoslovaquia como un estado comunista bajo influencia
-- soviética. La Primavera de Praga de 1968 fue seguida por la federalización de
-- Checoslovaquia en dos repúblicas (Checa y Eslovaca). La Revolución de Terciopelo
-- de 1989 puso fin al régimen comunista. El 1 de enero de 1993, Checoslovaquia se
-- disolvió pacíficamente ("Divorcio de Terciopelo"), dando lugar a la República
-- Eslovaca y Chequia como estados independientes. Eslovaquia se unió a la OTAN y a
-- la UE en 2004 y adoptó el euro en 2009.
--
-- Datos Adicionales:
-- El eslovaco es el idioma oficial (una lengua eslava occidental muy cercana al checo).
-- El catolicismo romano es la religión predominante. Eslovaquia es conocida por sus
-- montañas (Altos Tatras, Bajos Tatras), sus numerosos castillos (Spiš, Bojnice) y
-- sus cuevas kársticas. La industria automotriz es un sector económico importante.
--
*/
