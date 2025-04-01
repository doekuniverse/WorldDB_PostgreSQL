-- SQL Script to insert a representative sample of significant towns and villages for Sao Tome and Principe (ST).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Sao Tome and Principe (ST).

-- NOTE: This list includes the capital, the capital of Príncipe, district capitals, and significant towns.
-- Listing every single roça (plantation settlement) or small village is IMPOSSIBLE.
-- Postal codes are not used; using '0000' as a placeholder.

-- Inserting cities/towns for Sao Tome and Principe (ST) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- São Tomé Island
('São Tomé', (SELECT id FROM world_countries WHERE iso_code_2 = 'ST'), '0000'), -- National Capital (Água Grande District)
('Trindade', (SELECT id FROM world_countries WHERE iso_code_2 = 'ST'), '0000'), -- Mé-Zóchi District Capital
('Santana', (SELECT id FROM world_countries WHERE iso_code_2 = 'ST'), '0000'), -- Cantagalo District Capital
('Neves', (SELECT id FROM world_countries WHERE iso_code_2 = 'ST'), '0000'), -- Lembá District Capital (Port)
('Guadalupe', (SELECT id FROM world_countries WHERE iso_code_2 = 'ST'), '0000'), -- Lobata District Capital
('São João dos Angolares', (SELECT id FROM world_countries WHERE iso_code_2 = 'ST'), '0000'), -- Caué District Capital
('Pantufo', (SELECT id FROM world_countries WHERE iso_code_2 = 'ST'), '0000'), -- Near São Tomé city
('Ribeira Afonso', (SELECT id FROM world_countries WHERE iso_code_2 = 'ST'), '0000'), -- Cantagalo District
('Porto Alegre', (SELECT id FROM world_countries WHERE iso_code_2 = 'ST'), '0000'), -- Caué District
('Santa Cruz', (SELECT id FROM world_countries WHERE iso_code_2 = 'ST'), '0000'), -- Caué District

-- Príncipe Island
('Santo António', (SELECT id FROM world_countries WHERE iso_code_2 = 'ST'), '0000'); -- Príncipe Province/District Capital

-- End of Sao Tome and Principe locality list (Representative Sample)

/*
-- ====================================================
-- == Información sobre Sao Tome and Principe ==
-- ====================================================
--
-- Descripción General:
-- Santo Tomé y Príncipe (Sao Tome and Principe) es un país insular africano ubicado
-- en el Golfo de Guinea, cerca del ecuador, al oeste de Gabón. Consiste en dos islas
-- principales de origen volcánico, Santo Tomé (la más grande y poblada) y Príncipe,
-- así como varios islotes rocosos más pequeños. Es uno de los países más pequeños
-- de África. Es una república semipresidencialista.
--
-- Ciudades Principales (Pueblos):
-- El país tiene una población pequeña y pocos centros urbanos de tamaño considerable.
-- * Santo Tomé (São Tomé): La capital y ciudad más grande, ubicada en la costa
--   noreste de la isla de Santo Tomé.
-- * Santo António: La capital de la isla de Príncipe (que tiene estatus de provincia autónoma).
-- * Trindade, Santana, Neves, Guadalupe, São João dos Angolares: Son las capitales
--   de los distritos restantes en la isla de Santo Tomé, generalmente pueblos pequeños.
--
-- Un Poco de Historia:
-- Las islas estaban deshabitadas cuando fueron descubiertas por exploradores portugueses
-- alrededor de 1470. Fueron colonizadas por Portugal, que estableció plantaciones de
-- caña de azúcar utilizando mano de obra esclava africana. Más tarde, se convirtieron
-- en importantes productores de cacao y café, también con mano de obra forzada
-- (contratados o 'serviçais') de otras colonias portuguesas como Angola y Cabo Verde,
-- bajo un sistema a menudo brutal. Obtuvo la independencia de Portugal en 1975,
-- inicialmente con un gobierno socialista de partido único (MLSTP). Introdujo
-- reformas democráticas multipartidistas a principios de los años 90. La historia
-- post-independencia ha incluido cierta inestabilidad política y dependencia económica.
-- Se descubrió petróleo en aguas territoriales a principios del siglo XXI, generando
-- expectativas de desarrollo.
--
-- Datos Adicionales:
-- El portugués es el idioma oficial. También se hablan varios criollos basados en el
-- portugués (Forro, Angolar, Principense). La economía ha dependido tradicionalmente
-- del cacao, aunque el turismo y el potencial petrolero son importantes ahora. Las
-- islas tienen una rica biodiversidad, especialmente la isla de Príncipe, que es
-- Reserva de la Biosfera de la UNESCO.
--
*/
