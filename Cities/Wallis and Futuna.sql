-- SQL Script to insert a representative sample of significant settlements for Wallis and Futuna (WF).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Wallis and Futuna (WF).

-- NOTE: Wallis and Futuna consists of three main islands (Wallis/'Uvea, Futuna, Alofi) and numerous islets, organized into three traditional kingdoms ('Uvea, Alo, Sigave).
-- Listing every single village ('kolō') is impractical for this format. This list focuses on the territorial capital
-- and the main villages associated with the traditional kingdoms/districts.
-- Wallis and Futuna uses a single French postal code for the entire territory: 98600.

-- Inserting settlements for Wallis and Futuna (WF) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Territorial Capital & Main Villages by Kingdom/Island
('Matāʻutu', (SELECT id FROM world_countries WHERE iso_code_2 = 'WF'), '98600'), -- Territorial Capital (on Wallis/'Uvea island, Hahake District, Kingdom of 'Uvea)
('Leava', (SELECT id FROM world_countries WHERE iso_code_2 = 'WF'), '98600'), -- Main village of Sigave Kingdom (on Futuna island)
('Malaʻe', (SELECT id FROM world_countries WHERE iso_code_2 = 'WF'), '98600'), -- Main village of Alo Kingdom (on Futuna island) - Note: Administrative center sometimes cited as Ono.

-- Other significant villages (Sample)
('Hihifo', (SELECT id FROM world_countries WHERE iso_code_2 = 'WF'), '98600'), -- Main village of Hihifo District (Wallis/'Uvea)
('Mua', (SELECT id FROM world_countries WHERE iso_code_2 = 'WF'), '98600'); -- Main village of Muʻa District (Wallis/'Uvea)


-- End of Wallis and Futuna settlement list (Representative Sample)

/*
-- ===========================================================
-- ==       Información sobre Wallis y Futuna               ==
-- ===========================================================
--
-- Descripción General:
-- Wallis y Futuna es una Colectividad de Ultramar (Collectivité d'outre-mer, COM) de
-- Francia ubicada en la Polinesia, en el Océano Pacífico Sur, aproximadamente a dos
-- tercios del camino entre Hawái y Nueva Zelanda. El territorio consta de tres islas
-- volcánicas tropicales principales: Wallis (la más grande, también llamada ʻUvea),
-- Futuna y Alofi (esta última casi deshabitada), junto con unos 20 islotes más pequeños.
--
-- Asentamientos Principales:
-- * Matāʻutu: La capital territorial y asentamiento más grande, ubicada en la costa
--   este de la isla de Wallis (ʻUvea).
-- El territorio se divide administrativamente en tres reinos tradicionales que coinciden
-- con distritos geográficos:
-- * Reino de ʻUvea: Cubre toda la isla de Wallis. Matāʻutu es su centro principal.
-- * Reino de Sigave: Cubre la parte occidental de la isla de Futuna. Su pueblo principal es Leava.
-- * Reino de Alo: Cubre la parte oriental de la isla de Futuna y la isla deshabitada de Alofi.
--   Su pueblo principal es Malaʻe (aunque a veces se cita a Ono como centro administrativo).
--
-- Un Poco de Historia:
-- Habitadas por pueblos Lapita y luego polinesios (wallisianos y futunanos). Las islas
-- fueron avistadas por exploradores neerlandeses (Schouten y Le Maire vieron Futuna y Alofi
-- en 1616) y británicos (Samuel Wallis vio ʻUvea en 1767). Misioneros católicos franceses
-- llegaron en el siglo XIX y convirtieron a la población. Los reyes locales solicitaron
-- la protección de Francia, estableciéndose un protectorado sobre Wallis en 1887 y sobre
-- Futuna y Alofi en 1888. Durante la Segunda Guerra Mundial, las islas sirvieron como
-- base aliada (principalmente estadounidense). En 1959, los habitantes votaron para
-- convertirse en un Territorio Francés de Ultramar, estatus que se hizo efectivo en 1961.
-- En 2003, se convirtió en una Colectividad de Ultramar.
--
-- Datos Adicionales:
-- Los idiomas oficiales son el francés, el wallisiano (ʻuveano) y el futunano (estos
-- dos últimos son lenguas polinesias distintas). La gran mayoría de la población es
-- polinesia y católica romana. Las estructuras tradicionales de poder (los tres reyes
-- y la aristocracia local) coexisten con la administración francesa (representada por
-- un Administrador Superior). La economía es limitada y depende en gran medida de la
-- agricultura de subsistencia (cocos, raíces, kava), la pesca y las transferencias
-- financieras desde Francia. Muchos jóvenes emigran a Nueva Caledonia (otro territorio
-- francés) en busca de trabajo. La moneda es el Franco CFP (Franco del Pacífico).
-- Los residentes son ciudadanos franceses y votan en las elecciones francesas.
--
*/
