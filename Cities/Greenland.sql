-- SQL Script to insert a representative sample of significant towns and settlements for Greenland (GL).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Greenland (GL).

-- NOTE: Greenland is vast and sparsely populated. This list includes the capital, major towns (municipal centers),
-- and significant settlements (bygder). Listing every single locality is IMPOSSIBLE.
-- Postal codes are 4 digits; examples or '0000' placeholder are provided.

-- Inserting cities/towns for Greenland (GL) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Major Towns / Municipal Centers
('Nuuk (Godthåb)', (SELECT id FROM world_countries WHERE iso_code_2 = 'GL'), '3900'), -- National Capital (Sermersooq Municipality)
('Sisimiut (Holsteinsborg)', (SELECT id FROM world_countries WHERE iso_code_2 = 'GL'), '3911'), -- Qeqqata Municipality Capital
('Ilulissat (Jakobshavn)', (SELECT id FROM world_countries WHERE iso_code_2 = 'GL'), '3952'), -- Avannaata Municipality Capital (Near Icefjord)
('Qaqortoq (Julianehåb)', (SELECT id FROM world_countries WHERE iso_code_2 = 'GL'), '3920'), -- Kujalleq Municipality Capital
('Aasiaat (Egedesminde)', (SELECT id FROM world_countries WHERE iso_code_2 = 'GL'), '3950'), -- Qeqertalik Municipality Capital

-- Other Significant Towns & Settlements (Sample)
('Maniitsoq (Sukkertoppen)', (SELECT id FROM world_countries WHERE iso_code_2 = 'GL'), '3912'), -- Qeqqata Municipality
('Narsaq', (SELECT id FROM world_countries WHERE iso_code_2 = 'GL'), '3921'), -- Kujalleq Municipality
('Paamiut (Frederikshåb)', (SELECT id FROM world_countries WHERE iso_code_2 = 'GL'), '3980'), -- Sermersooq Municipality
('Uummannaq', (SELECT id FROM world_countries WHERE iso_code_2 = 'GL'), '3961'), -- Avannaata Municipality
('Nanortalik', (SELECT id FROM world_countries WHERE iso_code_2 = 'GL'), '3922'), -- Kujalleq Municipality
('Upernavik', (SELECT id FROM world_countries WHERE iso_code_2 = 'GL'), '3962'), -- Avannaata Municipality
('Qasigiannguit (Christianshåb)', (SELECT id FROM world_countries WHERE iso_code_2 = 'GL'), '3951'), -- Qeqertalik Municipality
('Tasiilaq (Ammassalik)', (SELECT id FROM world_countries WHERE iso_code_2 = 'GL'), '3913'), -- Sermersooq Municipality (Main town on East Coast)
('Kangaatsiaq', (SELECT id FROM world_countries WHERE iso_code_2 = 'GL'), '3955'), -- Qeqertalik Municipality
('Ittoqqortoormiit (Scoresbysund)', (SELECT id FROM world_countries WHERE iso_code_2 = 'GL'), '3985'), -- Sermersooq Municipality (Remote East Coast)
('Qaanaaq (Thule)', (SELECT id FROM world_countries WHERE iso_code_2 = 'GL'), '3971'), -- Avannaata Municipality (Northernmost town)
('Kangerlussuaq (Søndre Strømfjord)', (SELECT id FROM world_countries WHERE iso_code_2 = 'GL'), '3910'), -- Qeqqata Municipality (Main airport hub)
('Kullorsuaq', (SELECT id FROM world_countries WHERE iso_code_2 = 'GL'), '3962'), -- Avannaata Municipality (Settlement near Upernavik)
('Narsarsuaq', (SELECT id FROM world_countries WHERE iso_code_2 = 'GL'), '3923'), -- Kujalleq Municipality (Airport, historical site)
('Qeqertarsuaq (Godhavn)', (SELECT id FROM world_countries WHERE iso_code_2 = 'GL'), '3953'); -- Qeqertalik Municipality (on Disko Island)

-- Pituffik Space Base / Thule Air Base is a US base, population varies.

-- End of Greenland locality list (Representative Sample)

/*
-- ====================================
-- == Información sobre Greenland ==
-- ====================================
--
-- Descripción General:
-- Groenlandia (Greenland) es la isla más grande del mundo, ubicada entre los
-- océanos Ártico y Atlántico, al este del archipiélago ártico canadiense. Es un
-- territorio autónomo constituyente dentro del Reino de Dinamarca. Geográficamente,
-- forma parte de América del Norte. Aproximadamente el 80% de su superficie está
-- cubierta por una inmensa capa de hielo (Indlandsis), la segunda más grande del
-- mundo después de la Antártida. La población vive principalmente a lo largo de la
-- costa suroeste, que está libre de hielo.
--
-- Ciudades Principales (Localidades):
-- * Nuuk (antes Godthåb): La capital y ciudad más grande, ubicada en la costa suroeste.
-- * Sisimiut: La segunda ciudad más grande, al norte de Nuuk.
-- * Ilulissat: Tercera ciudad, famosa por el fiordo helado de Ilulissat (Patrimonio
--   de la Humanidad), donde desemboca un glaciar muy activo.
-- * Qaqortoq: Principal ciudad en el sur de Groenlandia.
-- * Aasiaat: Principal ciudad en la bahía de Disko.
-- * Tasiilaq: El asentamiento más grande en la remota costa este.
-- * Qaanaaq: Uno de los pueblos más septentrionales del mundo.
-- * La lista incluye también otros pueblos importantes y centros municipales.
--
-- Un Poco de Historia:
-- Habitada por pueblos indígenas árticos (paleoesquimales y luego los Inuit, ancestros
-- de los groenlandeses actuales) durante miles de años. Fue colonizada por vikingos
-- nórdicos liderados por Erik el Rojo alrededor del año 986 d.C., pero estos
-- asentamientos desaparecieron en el siglo XV. Fue recolonizada por Dinamarca-Noruega
-- en el siglo XVIII. Se convirtió en una colonia danesa formal y luego en un condado
-- integrado. Obtuvo el autogobierno (Home Rule) en 1979 y una mayor autonomía
-- (autogobierno) en 2009, aunque Dinamarca sigue gestionando la defensa y las
-- relaciones exteriores.
--
-- Datos Adicionales:
-- El groenlandés (Kalaallisut, una lengua inuit) es el idioma oficial principal. El
-- danés también tiene estatus oficial y es ampliamente utilizado. La economía depende
-- en gran medida de la pesca (especialmente camarones y fletán) y de los subsidios
-- de Dinamarca. El cambio climático está teniendo un impacto significativo en el
-- hielo de Groenlandia y abriendo nuevas posibilidades económicas (minería, rutas
-- marítimas) pero también desafíos ambientales. El paisaje ártico, los icebergs,
-- la aurora boreal y la cultura inuit son atractivos importantes.
--
*/
