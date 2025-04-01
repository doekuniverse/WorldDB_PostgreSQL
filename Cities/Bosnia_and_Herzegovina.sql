-- SQL Script to insert a representative sample of significant cities and towns for Bosnia and Herzegovina (BA).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Bosnia and Herzegovina (BA).

-- NOTE: This list includes the capital, major cities, entity/cantonal centers, and significant towns.
-- Due to the country's complex structure and history, listing every single settlement is IMPOSSIBLE.
-- Postal codes are 5 digits; examples or '00000' placeholder are provided.

-- Inserting cities for Bosnia and Herzegovina (BA) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Major Cities / Entity Centers
('Sarajevo', (SELECT id FROM world_countries WHERE iso_code_2 = 'BA'), '71000'), -- National Capital, FBiH Capital, Sarajevo Canton Capital
('Banja Luka', (SELECT id FROM world_countries WHERE iso_code_2 = 'BA'), '78000'), -- Largest city in Republika Srpska (RS), de facto RS capital
('Tuzla', (SELECT id FROM world_countries WHERE iso_code_2 = 'BA'), '75000'), -- Tuzla Canton Capital (FBiH)
('Zenica', (SELECT id FROM world_countries WHERE iso_code_2 = 'BA'), '72000'), -- Zenica-Doboj Canton Capital (FBiH)
('Mostar', (SELECT id FROM world_countries WHERE iso_code_2 = 'BA'), '88000'), -- Herzegovina-Neretva Canton Capital (FBiH)
('Bijeljina', (SELECT id FROM world_countries WHERE iso_code_2 = 'BA'), '76300'), -- Major city in RS
('Prijedor', (SELECT id FROM world_countries WHERE iso_code_2 = 'BA'), '79000'), -- Major city in RS
('Brčko', (SELECT id FROM world_countries WHERE iso_code_2 = 'BA'), '76100'), -- Brčko District Capital (Separate administrative unit)
('Doboj', (SELECT id FROM world_countries WHERE iso_code_2 = 'BA'), '74000'), -- Major city in RS

-- Other Significant Towns / Cantonal Centers / Municipalities (Sample)
('Bihać', (SELECT id FROM world_countries WHERE iso_code_2 = 'BA'), '77000'), -- Una-Sana Canton Capital (FBiH)
('Cazin', (SELECT id FROM world_countries WHERE iso_code_2 = 'BA'), '77220'), -- Una-Sana Canton (FBiH)
('Zvornik', (SELECT id FROM world_countries WHERE iso_code_2 = 'BA'), '75400'), -- RS
('Trebinje', (SELECT id FROM world_countries WHERE iso_code_2 = 'BA'), '89000'), -- RS
('Gradačac', (SELECT id FROM world_countries WHERE iso_code_2 = 'BA'), '76250'), -- Tuzla Canton (FBiH)
('Gračanica', (SELECT id FROM world_countries WHERE iso_code_2 = 'BA'), '75320'), -- Tuzla Canton (FBiH)
('Sanski Most', (SELECT id FROM world_countries WHERE iso_code_2 = 'BA'), '79260'), -- Una-Sana Canton (FBiH)
('Lukavac', (SELECT id FROM world_countries WHERE iso_code_2 = 'BA'), '75300'), -- Tuzla Canton (FBiH)
('Kakanj', (SELECT id FROM world_countries WHERE iso_code_2 = 'BA'), '72240'), -- Zenica-Doboj Canton (FBiH)
('Visoko', (SELECT id FROM world_countries WHERE iso_code_2 = 'BA'), '71300'), -- Zenica-Doboj Canton (FBiH)
('Konjic', (SELECT id FROM world_countries WHERE iso_code_2 = 'BA'), '88400'), -- Herzegovina-Neretva Canton (FBiH)
('Goražde', (SELECT id FROM world_countries WHERE iso_code_2 = 'BA'), '73000'), -- Bosnian Podrinje Canton Capital (FBiH)
('Livno', (SELECT id FROM world_countries WHERE iso_code_2 = 'BA'), '80101'), -- Canton 10 Capital (FBiH)
('Široki Brijeg', (SELECT id FROM world_countries WHERE iso_code_2 = 'BA'), '88220'), -- West Herzegovina Canton Capital (FBiH)
('Orašje', (SELECT id FROM world_countries WHERE iso_code_2 = 'BA'), '76270'), -- Posavina Canton Capital (FBiH)
('Travnik', (SELECT id FROM world_countries WHERE iso_code_2 = 'BA'), '72270'), -- Central Bosnia Canton Capital (FBiH)
('Bugojno', (SELECT id FROM world_countries WHERE iso_code_2 = 'BA'), '70230'), -- Central Bosnia Canton (FBiH)
('Jajce', (SELECT id FROM world_countries WHERE iso_code_2 = 'BA'), '70101'), -- Central Bosnia Canton (FBiH) (Historic)
('Foča', (SELECT id FROM world_countries WHERE iso_code_2 = 'BA'), '73300'), -- RS
('Derventa', (SELECT id FROM world_countries WHERE iso_code_2 = 'BA'), '74400'), -- RS
('Bosanska Krupa', (SELECT id FROM world_countries WHERE iso_code_2 = 'BA'), '77240'), -- Una-Sana Canton (FBiH)
('Novi Grad', (SELECT id FROM world_countries WHERE iso_code_2 = 'BA'), '79220'), -- RS (formerly Bosanski Novi)
('Vogošća', (SELECT id FROM world_countries WHERE iso_code_2 = 'BA'), '71320'), -- Sarajevo Canton (FBiH)
('Ilijaš', (SELECT id FROM world_countries WHERE iso_code_2 = 'BA'), '71380'), -- Sarajevo Canton (FBiH)
('Modriča', (SELECT id FROM world_countries WHERE iso_code_2 = 'BA'), '74480'), -- RS
('Kiseljak', (SELECT id FROM world_countries WHERE iso_code_2 = 'BA'), '71250'), -- Central Bosnia Canton (FBiH)
('Živinice', (SELECT id FROM world_countries WHERE iso_code_2 = 'BA'), '75270'); -- Tuzla Canton (FBiH)

-- End of Bosnia and Herzegovina city list (Representative Sample)

/*
-- ==================================================
-- == Información sobre Bosnia y Herzegovina ==
-- ==================================================
--
-- Descripción General:
-- Bosnia y Herzegovina es un país ubicado en la Península Balcánica, en el sureste
-- de Europa. Es un país mayoritariamente montañoso, atravesado por los Alpes
-- Dináricos. Tiene una salida muy pequeña al Mar Adriático en Neum. Su estructura
-- política es compleja, resultado de los Acuerdos de Dayton que pusieron fin a la
-- guerra: está compuesto por dos entidades principales (la Federación de Bosnia y
-- Herzegovina, FBiH, y la Republika Srpska, RS) y el Distrito autónomo de Brčko.
--
-- Ciudades Principales:
-- * Sarajevo: La capital nacional y la ciudad más grande, también capital de la FBiH.
--   Famosa por su historia multicultural, fue sede de los Juegos Olímpicos de
--   Invierno de 1984 y sufrió un largo asedio durante la guerra de los 90.
-- * Banja Luka: La segunda ciudad más grande y capital de facto de la Republika Srpska.
-- * Tuzla, Zenica, Mostar: Importantes centros industriales y culturales, capitales
--   de cantones dentro de la FBiH. Mostar es famosa por su puente Stari Most (reconstruido).
-- * Bijeljina, Prijedor, Doboj: Otras ciudades importantes en la Republika Srpska.
-- * Brčko: Ciudad importante y distrito autónomo con un estatus especial.
--
-- Un Poco de Historia:
-- La región tiene una historia que incluye el Reino medieval de Bosnia, siglos de
-- dominio Otomano (que introdujo el Islam), y luego el dominio Austro-Húngaro.
-- Tras la Primera Guerra Mundial, formó parte de Yugoslavia. Bosnia y Herzegovina
-- declaró su independencia de Yugoslavia en 1992, lo que desencadenó una brutal
-- guerra interétnica (1992-1995) entre Bosnios (musulmanes), Serbios (ortodoxos)
-- y Croatas (católicos). Los Acuerdos de Dayton de 1995 pusieron fin a la guerra
-- y establecieron la compleja estructura política actual.
--
-- Datos Adicionales:
-- Los tres idiomas oficiales son el bosnio, el serbio y el croata (mutuamente
-- inteligibles). El país tiene una rica herencia cultural que mezcla influencias
-- orientales y occidentales. La reconstrucción y la reconciliación post-conflicto
-- siguen siendo procesos importantes.
--
*/
