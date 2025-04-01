-- SQL Script to insert a representative sample of significant cities and towns for Morocco (MA).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Morocco (MA).

-- NOTE: Morocco is large with many localities. This list includes the capital, major cities,
-- regional/provincial capitals, and significant towns, including major towns in Moroccan-administered Western Sahara (noted).
-- Listing every single village is IMPOSSIBLE.
-- Postal codes are 5 digits; examples or '00000' placeholder are provided.

-- Inserting cities for Morocco (MA) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Major Cities / Regional & Provincial Capitals
('Rabat', (SELECT id FROM world_countries WHERE iso_code_2 = 'MA'), '10000'), -- National Capital
('Casablanca', (SELECT id FROM world_countries WHERE iso_code_2 = 'MA'), '20000'), -- Largest city, economic hub
('Fez (Fès)', (SELECT id FROM world_countries WHERE iso_code_2 = 'MA'), '30000'), -- Major city, historic/cultural center
('Marrakesh (Marrakech)', (SELECT id FROM world_countries WHERE iso_code_2 = 'MA'), '40000'), -- Major city, tourist center
('Tangier (Tanger)', (SELECT id FROM world_countries WHERE iso_code_2 = 'MA'), '90000'), -- Major city/port in the north
('Salé', (SELECT id FROM world_countries WHERE iso_code_2 = 'MA'), '11000'), -- City adjacent to Rabat
('Meknès', (SELECT id FROM world_countries WHERE iso_code_2 = 'MA'), '50000'), -- Imperial city
('Oujda', (SELECT id FROM world_countries WHERE iso_code_2 = 'MA'), '60000'), -- Oriental Region Capital
('Kenitra', (SELECT id FROM world_countries WHERE iso_code_2 = 'MA'), '14000'), -- Rabat-Salé-Kénitra Region
('Agadir', (SELECT id FROM world_countries WHERE iso_code_2 = 'MA'), '80000'), -- Souss-Massa Region Capital
('Tetouan', (SELECT id FROM world_countries WHERE iso_code_2 = 'MA'), '93000'), -- Tanger-Tétouan-Al Hoceïma Region
('Témara', (SELECT id FROM world_countries WHERE iso_code_2 = 'MA'), '12000'), -- Suburb of Rabat
('Safi', (SELECT id FROM world_countries WHERE iso_code_2 = 'MA'), '46000'), -- Marrakech-Safi Region (Port city)
('Mohammedia', (SELECT id FROM world_countries WHERE iso_code_2 = 'MA'), '28800'), -- Casablanca-Settat Region
('Khouribga', (SELECT id FROM world_countries WHERE iso_code_2 = 'MA'), '25000'), -- Béni Mellal-Khénifra Region (Phosphate mining)
('Beni Mellal', (SELECT id FROM world_countries WHERE iso_code_2 = 'MA'), '23000'), -- Béni Mellal-Khénifra Region Capital
('El Jadida', (SELECT id FROM world_countries WHERE iso_code_2 = 'MA'), '24000'), -- Casablanca-Settat Region (Coastal city)
('Taza', (SELECT id FROM world_countries WHERE iso_code_2 = 'MA'), '35000'), -- Fès-Meknès Region
('Nador', (SELECT id FROM world_countries WHERE iso_code_2 = 'MA'), '62000'), -- Oriental Region (Near Melilla)
('Settat', (SELECT id FROM world_countries WHERE iso_code_2 = 'MA'), '26000'), -- Casablanca-Settat Region Capital
('Larache', (SELECT id FROM world_countries WHERE iso_code_2 = 'MA'), '92000'), -- Tanger-Tétouan-Al Hoceïma Region
('Ksar El Kebir', (SELECT id FROM world_countries WHERE iso_code_2 = 'MA'), '92050'), -- Tanger-Tétouan-Al Hoceïma Region
('Errachidia', (SELECT id FROM world_countries WHERE iso_code_2 = 'MA'), '52000'), -- Drâa-Tafilalet Region Capital
('Guelmim', (SELECT id FROM world_countries WHERE iso_code_2 = 'MA'), '81000'), -- Guelmim-Oued Noun Region Capital
('Khénifra', (SELECT id FROM world_countries WHERE iso_code_2 = 'MA'), '54000'), -- Béni Mellal-Khénifra Region
('Berkane', (SELECT id FROM world_countries WHERE iso_code_2 = 'MA'), '63300'), -- Oriental Region
('Ouarzazate', (SELECT id FROM world_countries WHERE iso_code_2 = 'MA'), '45000'), -- Drâa-Tafilalet Region ("Door of the Desert")
('Al Hoceima', (SELECT id FROM world_countries WHERE iso_code_2 = 'MA'), '32000'), -- Tanger-Tétouan-Al Hoceïma Region
('Essaouira', (SELECT id FROM world_countries WHERE iso_code_2 = 'MA'), '44000'), -- Marrakech-Safi Region (Coastal city, UNESCO site)
('Chefchaouen', (SELECT id FROM world_countries WHERE iso_code_2 = 'MA'), '91000'), -- Tanger-Tétouan-Al Hoceïma Region ("Blue City")

-- Major towns in Moroccan-administered Western Sahara (Disputed Territory)
('Laayoune (El Aaiún)', (SELECT id FROM world_countries WHERE iso_code_2 = 'MA'), '70000'), -- Largest city in Western Sahara
('Dakhla', (SELECT id FROM world_countries WHERE iso_code_2 = 'MA'), '73000'), -- Western Sahara
('Smara (Semara)', (SELECT id FROM world_countries WHERE iso_code_2 = 'MA'), '72000'), -- Western Sahara
('Boujdour (Bojador)', (SELECT id FROM world_countries WHERE iso_code_2 = 'MA'), '71000'); -- Western Sahara

-- End of Morocco city list (Representative Sample including Western Sahara)

/*
-- ====================================
-- == Información sobre Morocco ==
-- ====================================
--
-- Descripción General:
-- El Reino de Marruecos (Morocco) es un país ubicado en el extremo noroeste de África
-- (región del Magreb). Limita con el Océano Atlántico al oeste, el Mar Mediterráneo
-- al norte (separado de España por el Estrecho de Gibraltar), Argelia al este y el
-- territorio disputado del Sáhara Occidental al sur (gran parte del cual administra).
-- Su geografía es diversa, con costas atlánticas y mediterráneas, cadenas montañosas
-- interiores (Rif, Atlas Medio, Alto Atlas, Antiatlas) y áreas desérticas y
-- predesérticas al sur y este. Es una monarquía constitucional parlamentaria.
--
-- Ciudades Principales:
-- * Rabat: La capital política y administrativa.
-- * Casablanca: La ciudad más grande y principal centro económico e industrial.
-- * Fez: Antigua capital imperial, centro cultural y religioso con una famosa medina
--   (Patrimonio de la Humanidad).
-- * Marrakech: Otra ciudad imperial, importante centro turístico conocido por su
--   medina y la plaza Jemaa el-Fna (Patrimonio de la Humanidad).
-- * Tánger (Tangier): Importante ciudad portuaria en el Estrecho de Gibraltar.
-- * Agadir: Principal centro turístico en la costa atlántica sur.
-- * Meknès: Otra de las ciudades imperiales históricas (Patrimonio de la Humanidad).
-- * Oujda, Tetuán, Salé, Kenitra: Otras ciudades importantes y centros regionales.
-- * La lista incluye también las principales ciudades del Sáhara Occidental administrado
--   por Marruecos (Laayoune/El Aaiún, Dakhla), cuyo estatus final está pendiente
--   de resolución según la ONU.
--
-- Un Poco de Historia:
-- Habitada por pueblos bereberes desde la antigüedad. Fue parte de reinos como
-- Mauritania Tingitana bajo Roma. Fue islamizada y arabizada tras la conquista árabe
-- en el siglo VII. Fue centro de importantes dinastías bereberes (Almorávides,
-- Almohades) y árabes (Saadíes, Alauitas - la dinastía reinante actual). Resistió
-- en gran medida la dominación otomana. En 1912, se estableció un protectorado
-- francés y otro español sobre partes del territorio. Marruecos recuperó su
-- independencia en 1956. El rey Hassan II gobernó durante gran parte de la segunda
-- mitad del siglo XX, sucedido por su hijo Mohammed VI en 1999. La cuestión del
-- Sáhara Occidental, anexado por Marruecos tras la retirada española en 1975, sigue
-- siendo un conflicto no resuelto con el Frente Polisario.
--
-- Datos Adicionales:
-- El árabe y el bereber (tamazight) son los idiomas oficiales. El francés es
-- ampliamente utilizado en los negocios y la administración. El Islam sunita es la
-- religión predominante. Marruecos es famoso por sus ciudades imperiales, zocos
-- (mercados), gastronomía (cuscús, tajín), música y artesanía. El turismo es un
-- sector económico importante.
--
*/
