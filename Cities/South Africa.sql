-- SQL Script to insert a representative sample of significant cities and towns for South Africa (ZA).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains South Africa (ZA).

-- NOTE: South Africa is large and diverse with thousands of localities. This list includes the capitals,
-- provincial capitals, major metropolitan cities, and a broad sample of significant towns.
-- Listing every single locality is ABSOLUTELY IMPOSSIBLE.
-- Postal codes are 4 digits; examples or '0000' placeholder are provided.

-- Inserting cities for South Africa (ZA) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- National Capitals & Provincial Capitals / Major Metros
('Pretoria (Tshwane)', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZA'), '0001'), -- Administrative Capital (Gauteng)
('Cape Town (Kaapstad)', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZA'), '8000'), -- Legislative Capital (Western Cape Capital)
('Bloemfontein (Mangaung)', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZA'), '9300'), -- Judicial Capital (Free State Capital)
('Johannesburg', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZA'), '2000'), -- Gauteng Capital (Largest city)
('Durban (eThekwini)', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZA'), '4000'), -- KwaZulu-Natal (Major city/port)
('Gqeberha (Port Elizabeth)', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZA'), '6000'), -- Eastern Cape (Major city)
('East London (Buffalo City)', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZA'), '5201'), -- Eastern Cape (Major city)
('Pietermaritzburg', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZA'), '3200'), -- KwaZulu-Natal Capital
('Nelspruit (Mbombela)', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZA'), '1200'), -- Mpumalanga Capital
('Polokwane (Pietersburg)', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZA'), '0700'), -- Limpopo Capital
('Kimberley', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZA'), '8300'), -- Northern Cape Capital
('Mahikeng (Mafikeng)', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZA'), '2745'), -- North West Capital
('Bhisho', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZA'), '5605'), -- Eastern Cape Capital

-- Other Major Cities & Significant Towns (Sample)
('Soweto', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZA'), '1804'), -- Gauteng (Part of Johannesburg Metro)
('Vereeniging', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZA'), '1930'), -- Gauteng
('Germiston (Ekurhuleni)', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZA'), '1400'), -- Gauteng (Metro)
('Boksburg (Ekurhuleni)', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZA'), '1459'), -- Gauteng (Metro)
('Benoni (Ekurhuleni)', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZA'), '1500'), -- Gauteng (Metro)
('Tembisa (Ekurhuleni)', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZA'), '1632'), -- Gauteng (Metro)
('Krugersdorp (Mogale City)', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZA'), '1739'), -- Gauteng
('Randburg', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZA'), '2194'), -- Gauteng (Part of Johannesburg Metro)
('Roodepoort', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZA'), '1724'), -- Gauteng (Part of Johannesburg Metro)
('Centurion', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZA'), '0157'), -- Gauteng (Part of Tshwane Metro)
('Klerksdorp', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZA'), '2570'), -- North West
('Potchefstroom', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZA'), '2520'), -- North West
('Rustenburg', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZA'), '0300'), -- North West (Mining)
('Welkom', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZA'), '9459'), -- Free State (Gold mining)
('George', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZA'), '6529'), -- Western Cape (Garden Route)
('Paarl', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZA'), '7646'), -- Western Cape (Winelands)
('Stellenbosch', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZA'), '7600'), -- Western Cape (Winelands, University)
('Witbank (Emalahleni)', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZA'), '1035'), -- Mpumalanga (Coal mining)
('Middelburg', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZA'), '1050'), -- Mpumalanga
('Newcastle', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZA'), '2940'), -- KwaZulu-Natal
('Richards Bay', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZA'), '3900'), -- KwaZulu-Natal (Port, Industrial)
('Upington', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZA'), '8800'), -- Northern Cape
('Worcester', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZA'), '6850'), -- Western Cape
('Grahamstown (Makhanda)', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZA'), '6139'), -- Eastern Cape (University town)
('King William''s Town', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZA'), '5600'), -- Eastern Cape
('Queenstown (Komani)', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZA'), '5320'), -- Eastern Cape
('Mthatha (Umtata)', (SELECT id FROM world_countries WHERE iso_code_2 = 'ZA'), '5100'); -- Eastern Cape (Former Transkei capital)

-- End of South Africa city list (Representative Sample)

/*
-- ========================================
-- == Información sobre South Africa ==
-- ========================================
--
-- Descripción General:
-- La República de Sudáfrica es un país ubicado en el extremo sur del continente
-- africano. Limita con Namibia, Botsuana y Zimbabue al norte, Mozambique y Esuatini
-- al noreste, y rodea completamente a Lesoto. Tiene una larga costa que se extiende
-- a lo largo de los océanos Atlántico Sur e Índico. Es conocido por su diversidad
-- étnica y cultural ("Nación del Arcoíris"), sus paisajes variados (mesetas,
-- montañas, costas, sabanas) y su compleja historia. Es una república parlamentaria.
--
-- Ciudades Principales:
-- Sudáfrica tiene tres capitales:
-- * Pretoria (parte de la Municipalidad Metropolitana de Tshwane): La capital administrativa.
-- * Ciudad del Cabo (Cape Town): La capital legislativa y segunda ciudad más poblada.
-- * Bloemfontein (parte de la Municipalidad Metropolitana de Mangaung): La capital judicial.
-- Otras ciudades importantes incluyen:
-- * Johannesburgo: La ciudad más grande y centro financiero del país (capital de Gauteng).
-- * Durban (eThekwini): La tercera ciudad más grande, principal puerto en el Océano Índico.
-- * Gqeberha (antes Port Elizabeth) y East London: Principales ciudades en la Provincia Oriental del Cabo.
-- * Pietermaritzburg (KwaZulu-Natal), Nelspruit/Mbombela (Mpumalanga), Polokwane (Limpopo),
--   Kimberley (Cabo Norte), Mahikeng (Noroeste), Bhisho (Cabo Oriental): Capitales provinciales.
-- * La lista incluye también otras ciudades grandes y centros regionales significativos.
--
-- Un Poco de Historia:
-- Habitada por pueblos Khoisan, seguidos por migraciones Bantúes. Los neerlandeses
-- establecieron la Colonia del Cabo a mediados del siglo XVII. Gran Bretaña tomó el
-- control a principios del siglo XIX. Conflictos entre los británicos y los colonos
-- de origen neerlandés (Bóers o Afrikáneres) llevaron a las migraciones bóers al
-- interior (Gran Trek) y a las Guerras Bóer a finales del siglo XIX y principios
-- del XX, que resultaron en la victoria británica. En 1910 se formó la Unión Sudafricana
-- como un dominio británico autónomo. El Partido Nacional llegó al poder en 1948 e
-- implementó el sistema de segregación racial del Apartheid. El Congreso Nacional
-- Africano (ANC) y otras organizaciones lideraron la lucha contra el Apartheid, con
-- figuras como Nelson Mandela. Tras décadas de lucha, sanciones internacionales y
-- negociaciones, el Apartheid fue desmantelado a principios de los años 90. Las
-- primeras elecciones multirraciales en 1994 llevaron a Nelson Mandela a la presidencia,
-- estableciendo una democracia multirracial. El país sigue enfrentando desafíos
-- socioeconómicos heredados del Apartheid.
--
-- Datos Adicionales:
-- Sudáfrica tiene 11 idiomas oficiales (incluyendo inglés, afrikáans, zulú, xhosa).
-- Es un país con una gran diversidad étnica. Es rico en recursos minerales (oro,
-- diamantes, platino, carbón). Es famoso por el Parque Nacional Kruger, la Montaña
-- de la Mesa (Table Mountain) en Ciudad del Cabo, la Ruta Jardín y su producción de vino.
-- El rugby y el fútbol son deportes muy populares.
--
*/
