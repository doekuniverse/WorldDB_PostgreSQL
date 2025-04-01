-- SQL Script to insert the main settlement for the Pitcairn Islands (PN).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Pitcairn (PN).

-- NOTE: The Pitcairn Islands have only one inhabited settlement, Adamstown, on Pitcairn Island itself.
-- The other three islands (Henderson, Ducie, Oeno) are uninhabited. This list covers the entirety of the settled area.
-- The territory uses the postal code PCRN 1ZZ.

-- Inserting the sole settlement for Pitcairn Islands (PN) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
('Adamstown', (SELECT id FROM world_countries WHERE iso_code_2 = 'PN'), 'PCRN 1ZZ'); -- Capital and only settlement

-- End of Pitcairn Islands locality list (Sole Settlement)

/*
-- ============================================
-- == Información sobre Pitcairn Islands ==
-- ============================================
--
-- Descripción General:
-- Las Islas Pitcairn, oficialmente Grupo de Islas Pitcairn, Henderson, Ducie y Oeno,
-- son un Territorio Británico de Ultramar ubicado en el sur del Océano Pacífico.
-- Es uno de los territorios más remotos y menos poblados del mundo. Consiste en
-- cuatro islas volcánicas: Pitcairn (la única habitada), Henderson (Patrimonio de
-- la Humanidad por la UNESCO, deshabitada), y los atolones deshabitados de Ducie y Oeno.
--
-- Ciudades Principales (Asentamientos):
-- No hay ciudades. El único asentamiento es:
-- * Adamstown: Ubicado en la isla Pitcairn, funciona como la capital y es donde
--   reside toda la población permanente del territorio (alrededor de 50 personas).
--
-- Un Poco de Historia:
-- Las islas estuvieron posiblemente habitadas por polinesios en tiempos prehistóricos,
-- pero estaban deshabitadas cuando fueron avistadas por europeos. La isla Pitcairn
-- fue avistada en 1767. Su historia moderna es famosa por haber sido el refugio de
-- nueve de los amotinados del HMS Bounty y sus compañeros tahitianos, que llegaron
-- en 1790. Quemaron el Bounty para evitar ser descubiertos. Sus descendientes
-- (de ascendencia mixta británica y polinesia) forman la población actual. La isla
-- se convirtió en colonia británica en 1838. Debido a la superpoblación, toda la
-- comunidad se trasladó a la Isla Norfolk en 1856, pero algunas familias regresaron
-- a Pitcairn en años posteriores.
--
-- Datos Adicionales:
-- El inglés es el idioma oficial, aunque también se habla Pitkern (o Pitcairnés),
-- una lengua criolla basada en el inglés del siglo XVIII y el tahitiano. La economía
-- depende de la agricultura de subsistencia, la pesca, la artesanía, la venta de
-- sellos postales y dominios de internet (.pn), y la ayuda del Reino Unido. Es uno
-- de los lugares más aislados del planeta.
--
*/
