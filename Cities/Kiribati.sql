-- SQL Script to insert a representative sample of significant settlements for Kiribati (KI).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Kiribati (KI).

-- NOTE: Kiribati consists of 32 atolls spread over a vast ocean area. This list includes the capital area settlements
-- and main villages on significant inhabited atolls across the island groups. Listing every single village is IMPOSSIBLE.
-- Postal codes are not used; using '0000' as a placeholder.

-- Inserting settlements for Kiribati (KI) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Tarawa Atoll (Capital Area - South Tarawa)
('Bairiki', (SELECT id FROM world_countries WHERE iso_code_2 = 'KI'), '0000'), -- Administrative center in South Tarawa
('Betio', (SELECT id FROM world_countries WHERE iso_code_2 = 'KI'), '0000'), -- Largest town, port (South Tarawa)
('Bikenibeu', (SELECT id FROM world_countries WHERE iso_code_2 = 'KI'), '0000'), -- Settlement in South Tarawa
('Bonriki', (SELECT id FROM world_countries WHERE iso_code_2 = 'KI'), '0000'), -- Location of international airport (South Tarawa)
('Ambo', (SELECT id FROM world_countries WHERE iso_code_2 = 'KI'), '0000'), -- Location of parliament (South Tarawa)
('Eita', (SELECT id FROM world_countries WHERE iso_code_2 = 'KI'), '0000'), -- Settlement in South Tarawa
('Teaoraereke', (SELECT id FROM world_countries WHERE iso_code_2 = 'KI'), '0000'), -- Settlement in South Tarawa

-- Other Gilbert Islands (Main Settlements - Sample)
('Butaritari Village', (SELECT id FROM world_countries WHERE iso_code_2 = 'KI'), '0000'), -- Butaritari Atoll
('Utiroa', (SELECT id FROM world_countries WHERE iso_code_2 = 'KI'), '0000'), -- Tabiteuea North Atoll
('Rungata', (SELECT id FROM world_countries WHERE iso_code_2 = 'KI'), '0000'), -- Nikunau Atoll
('Rawannawi', (SELECT id FROM world_countries WHERE iso_code_2 = 'KI'), '0000'), -- Marakei Atoll
('Tanaeang', (SELECT id FROM world_countries WHERE iso_code_2 = 'KI'), '0000'), -- Abaiang Atoll
('Taburao', (SELECT id FROM world_countries WHERE iso_code_2 = 'KI'), '0000'), -- Abemama Atoll
('Temaraia', (SELECT id FROM world_countries WHERE iso_code_2 = 'KI'), '0000'), -- Arorae Atoll
('Makin Village', (SELECT id FROM world_countries WHERE iso_code_2 = 'KI'), '0000'), -- Makin Atoll

-- Phoenix Islands
('Kanton Village', (SELECT id FROM world_countries WHERE iso_code_2 = 'KI'), '0000'), -- Kanton (Canton) Island (Only inhabited island, very small pop.)

-- Line Islands
('London', (SELECT id FROM world_countries WHERE iso_code_2 = 'KI'), '0000'), -- Kiritimati (Christmas Island)
('Tabwakea', (SELECT id FROM world_countries WHERE iso_code_2 = 'KI'), '0000'), -- Kiritimati (Christmas Island) - Largest village
('Banana', (SELECT id FROM world_countries WHERE iso_code_2 = 'KI'), '0000'), -- Kiritimati (Christmas Island) - Near airport
('Tabuaeran Village', (SELECT id FROM world_countries WHERE iso_code_2 = 'KI'), '0000'), -- Tabuaeran (Fanning Island)
('Teraina Village', (SELECT id FROM world_countries WHERE iso_code_2 = 'KI'), '0000'); -- Teraina (Washington Island)

-- End of Kiribati locality list (Representative Sample across island groups)

/*
-- ====================================
-- == Información sobre Kiribati ==
-- ====================================
--
-- Descripción General:
-- Kiribati (pronunciado Kíribas) es una república insular ubicada en el Océano
-- Pacífico central. Es única por estar compuesta por 32 atolones de coral y una
-- isla elevada (Banaba), dispersos sobre 3.5 millones de km² de océano, cruzando
-- el ecuador y la línea internacional de cambio de fecha. Los tres grupos principales
-- de islas son las Islas Gilbert, las Islas Fénix (Phoenix) y las Islas de la Línea
-- (Line Islands). La mayoría de la población vive en las Islas Gilbert. El país
-- enfrenta graves amenazas debido al aumento del nivel del mar causado por el
-- cambio climático, ya que la mayoría de sus tierras están a muy baja altitud.
--
-- Ciudades Principales (Asentamientos):
-- No hay grandes ciudades. La capital y principal área urbana es Tarawa Sur (South
-- Tarawa), una serie de islotes conectados en el atolón de Tarawa (Islas Gilbert),
-- que incluye los centros administrativos de Bairiki, el puerto y pueblo más grande
-- de Betio, y el aeropuerto en Bonriki. Otros atolones habitados tienen uno o más
-- pueblos principales, como Butaritari, Utiroa (Tabiteuea), etc. En las Islas Fénix,
-- solo Kanton está habitada por unas pocas personas. En las Islas de la Línea,
-- Kiritimati (Isla de Navidad) es la más grande y poblada, con pueblos como London,
-- Tabwakea y Banana.
--
-- Un Poco de Historia:
-- Las islas fueron pobladas por pueblos micronesios (y algunos polinesios) durante
-- miles de años. El contacto europeo comenzó en el siglo XVII, pero fue limitado
-- hasta el siglo XIX (balleneros, comerciantes). Las Islas Gilbert se convirtieron
-- en un protectorado británico en 1892 y luego, junto con las Islas Ellice (actual
-- Tuvalu), en la colonia de las Islas Gilbert y Ellice en 1916. Las Islas Fénix y
-- de la Línea fueron añadidas posteriormente. Tarawa fue escenario de una sangrienta
-- batalla durante la Segunda Guerra Mundial (Batalla de Tarawa, 1943). Las Islas
-- Ellice se separaron pacíficamente en 1975. Kiribati obtuvo la independencia del
-- Reino Unido en 1979.
--
-- Datos Adicionales:
-- Los idiomas oficiales son el gilbertés (o kiribatiano, una lengua micronesia) y
-- el inglés. La economía depende de la pesca (licencias), la copra y la ayuda
-- exterior. Kiribati tiene una de las Zonas Económicas Exclusivas (ZEE) más grandes
-- del mundo debido a la dispersión de sus islas. Fue el primer país en entrar en
-- el año 2000 debido a un ajuste de la línea de cambio de fecha.
--
*/
