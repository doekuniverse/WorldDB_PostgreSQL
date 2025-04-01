-- SQL Script to insert all communes (main administrative divisions) for Luxembourg (LU).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Luxembourg (LU).

-- NOTE: Luxembourg is very small and divided into 100 communes (as of recent reforms).
-- This list includes all of them, providing essentially complete coverage at the municipal level.
-- Postal codes are L-####; representative examples are provided.

-- Inserting communes for Luxembourg (LU) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
('Luxembourg City', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-1000'), -- Capital
('Esch-sur-Alzette', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-4000'), -- Second largest city
('Differdange', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-4500'),
('Dudelange', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-3400'),
('Pétange', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-4700'),
('Sanem', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-4900'),
('Hesperange', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-5800'),
('Bettembourg', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-3200'),
('Käerjeng', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-4900'), -- Formed from Bascharage & Clemency
('Schifflange', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-3800'),
('Mamer', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-8200'),
('Strassen', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-8000'),
('Bertrange', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-8000'),
('Walferdange', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-7200'),
('Mersch', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-7500'),
('Ettelbruck', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-9000'),
('Diekirch', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-9200'),
('Wiltz', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-9500'),
('Echternach', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-6400'),
('Grevenmacher', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-6700'),
('Remich', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-5500'),
('Rumelange', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-3700'),
('Kayl', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-3600'),
('Wincrange', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-9700'),
('Clervaux', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-9700'),
('Junglinster', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-6100'),
('Kehlen', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-8200'),
('Mondercange', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-3900'),
('Roeser', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-3300'),
('Schuttrange', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-5700'),
('Dippach', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-4900'),
('Niederanven', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-6900'),
('Steinsel', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-7300'),
('Frisange', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-5700'),
('Contern', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-5300'),
('Mondorf-les-Bains', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-5600'), -- Spa town
('Kopstal', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-8100'),
('Sandweiler', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-5200'),
('Bissen', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-7700'),
('Mertzig', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-9100'),
('Redange-sur-Attert', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-8500'),
('Lorentzweiler', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-7300'),
('Steinfort', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-8400'),
('Betzdorf', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-6900'),
('Esch-sur-Sûre', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-9600'),
('Troisvierges', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-9900'),
('Vianden', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-9400'), -- Castle town
('Rambrouch', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-8800'),
('Larochette', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-7600'),
('Beaufort', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-6300'),
('Lintgen', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-7400'),
('Schengen', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-5400'), -- Schengen Agreement site
('Bourscheid', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-9100'),
('Consdorf', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-6200'),
('Beckerich', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-8500'),
('Helperknapp', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-7400'), -- Formed from Boevange-sur-Attert & Tuntange
('Leudelange', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-3300'),
('Colmar-Berg', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-7700'),
('Rosport-Mompach', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-6500'), -- Formed from Rosport & Mompach
('Berdorf', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-6500'),
('Waldbillig', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-7400'),
('Koerich', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-8300'),
('Préizerdaul', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-8700'),
('Useldange', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-8700'),
('Reckange-sur-Mess', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-4900'),
('Ell', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-8500'),
('Schieren', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-9100'),
('Heffingen', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-7600'),
('Flaxweiler', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-6900'),
('Stadtbredimus', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-5400'),
('Weiler-la-Tour', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-5700'),
('Mertert', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-6600'), -- Port town on Moselle
('Erpeldange-sur-Sûre', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-9100'),
('Dalheim', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-5600'),
('Bettendorf', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-9300'),
('Parc Hosingen', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-9800'), -- Formed from Hosingen, Consthum, Hoscheid
('Feulen', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-9100'),
('Manternach', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-6800'),
('Nommern', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-7400'),
('Saeul', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-7400'),
('Vallée de l''Ernz', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-7600'), -- Formed from Ermsdorf & Medernach
('Lenningen', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-5400'),
('Garnich', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-8300'),
('Bous-Waldbredimus', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-5400'), -- Formed from Bous & Waldbredimus
('Vichten', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-9100'),
('Wormeldange', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-5400'),
('Tandel', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-9300'), -- Formed from Bastendorf & Fouhren
('Waldbredimus', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-5400'), -- Now part of Bous-Waldbredimus
('Biwer', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-6800'),
('Putscheid', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-9400'),
('Bech', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-6200'),
('Kiischpelt', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-9700'), -- Formed from Kautenbach & Wilwerwiltz
('Fischbach', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-7400'),
('Goesdorf', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-9600'),
('Winseler', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-9500'),
('Weiswampach', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-9900'),
('Habscht', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-8300'), -- Formed from Hobscheid & Septfontaines
('Boulaide', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-9600'),
('Lac de la Haute-Sûre', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-9600'),
('Grosbous-Wahl', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-9100'), -- Formed from Grosbous & Wahl
('Consthum', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-9800'), -- Now part of Parc Hosingen
('Hoscheid', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-9800'), -- Now part of Parc Hosingen
('Ermsdorf', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-7600'), -- Now part of Vallée de l'Ernz
('Medernach', (SELECT id FROM world_countries WHERE iso_code_2 = 'LU'), 'L-7600'); -- Now part of Vallée de l'Ernz

-- Note: Some listed communes may have merged recently. This list reflects the structure around 100 communes.

-- End of Luxembourg commune list (All Communes included)

/*
-- ========================================
-- == Información sobre Luxembourg ==
-- ========================================
--
-- Descripción General:
-- El Gran Ducado de Luxemburgo (Luxembourg) es un pequeño país sin salida al mar
-- ubicado en Europa Occidental. Limita con Bélgica al oeste y norte, Alemania al
-- este y Francia al sur. Es uno de los países más pequeños de Europa, pero también
-- uno de los más ricos del mundo en términos de PIB per cápita. Es una monarquía
-- constitucional parlamentaria, el único Gran Ducado soberano que queda en el mundo.
-- Es miembro fundador de la Unión Europea, la OTAN y las Naciones Unidas.
--
-- Ciudades Principales (Comunas):
-- Luxemburgo se divide en 100 comunas (tras las fusiones más recientes). No hay
-- una distinción clara entre ciudades y pueblos grandes; la comuna es la unidad
-- administrativa principal.
-- * Ciudad de Luxemburgo (Luxembourg City): La capital y comuna más poblada. Es un
--   importante centro financiero internacional y sede de varias instituciones de la UE
--   (como el Tribunal de Justicia de la UE). Su casco antiguo y fortificaciones son
--   Patrimonio de la Humanidad por la UNESCO.
-- * Esch-sur-Alzette: La segunda comuna más poblada, centro industrial histórico en el sur.
-- * Differdange, Dudelange, Pétange: Otras comunas importantes en la región minera del sur.
-- * Schaan (en Liechtenstein, no aquí), Mersch, Ettelbruck, Diekirch, Wiltz, Echternach,
--   Grevenmacher, Remich: Centros regionales o cantonales importantes.
-- * La lista incluye las 100 comunas del país.
--
-- Un Poco de Historia:
-- Los orígenes de Luxemburgo se remontan al siglo X con la construcción de un castillo
-- por Sigfrido de las Ardenas. Se convirtió en un condado y luego en un ducado dentro
-- del Sacro Imperio Romano Germánico. Debido a su posición estratégica, pasó por manos
-- de varias potencias europeas (Borgoña, Habsburgo españoles y austriacos, Francia).
-- El Congreso de Viena (1815) lo elevó a Gran Ducado en unión personal con los Países
-- Bajos. Obtuvo la plena independencia en 1890 bajo su propia dinastía (Nassau-Weilburg).
-- A pesar de su neutralidad declarada, fue ocupado por Alemania en ambas guerras mundiales.
-- Después de la Segunda Guerra Mundial, abandonó la neutralidad y se convirtió en un
-- firme defensor de la integración europea y la cooperación internacional. Desarrolló
-- una economía basada en el acero y luego se transformó en un centro financiero global.
--
-- Datos Adicionales:
-- Luxemburgo es un país trilingüe: el luxemburgués es la lengua nacional, mientras que
-- el francés y el alemán son lenguas administrativas y también oficiales. Tiene una
-- proporción muy alta de residentes extranjeros y trabajadores transfronterizos.
-- Es conocido por su estabilidad política y su alto nivel de vida.
--
*/
