-- SQL Script to insert a representative sample of significant cities and towns for Rwanda (RW).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Rwanda (RW).

-- NOTE: Rwanda is densely populated and hilly. This list includes the capital, major cities,
-- provincial centers, and significant towns. Listing every single village (umudugudu) is IMPOSSIBLE.
-- Postal codes are not used; using '0000' as a placeholder.

-- Inserting cities for Rwanda (RW) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Major Cities / Provincial Centers
('Kigali', (SELECT id FROM world_countries WHERE iso_code_2 = 'RW'), '0000'), -- National Capital (Kigali Province)
('Butare (Huye)', (SELECT id FROM world_countries WHERE iso_code_2 = 'RW'), '0000'), -- Southern Province (Major city, university)
('Gitarama (Muhanga)', (SELECT id FROM world_countries WHERE iso_code_2 = 'RW'), '0000'), -- Southern Province (Major city)
('Ruhengeri (Musanze)', (SELECT id FROM world_countries WHERE iso_code_2 = 'RW'), '0000'), -- Northern Province Capital (Gateway to Volcanoes NP)
('Gisenyi (Rubavu)', (SELECT id FROM world_countries WHERE iso_code_2 = 'RW'), '0000'), -- Western Province Capital (Lake Kivu)
('Byumba', (SELECT id FROM world_countries WHERE iso_code_2 = 'RW'), '0000'), -- Northern Province (Gicumbi District capital)
('Cyangugu (Rusizi)', (SELECT id FROM world_countries WHERE iso_code_2 = 'RW'), '0000'), -- Western Province (Near DRC/Burundi border)
('Kibuye (Karongi)', (SELECT id FROM world_countries WHERE iso_code_2 = 'RW'), '0000'), -- Western Province Capital (Lake Kivu)
('Kibungo (Ngoma)', (SELECT id FROM world_countries WHERE iso_code_2 = 'RW'), '0000'), -- Eastern Province (Ngoma District capital)
('Rwamagana', (SELECT id FROM world_countries WHERE iso_code_2 = 'RW'), '0000'), -- Eastern Province Capital

-- Other Significant Towns / District Centers (Sample)
('Nyanza', (SELECT id FROM world_countries WHERE iso_code_2 = 'RW'), '0000'), -- Southern Province (Former royal capital)
('Gikongoro (Nyamagabe)', (SELECT id FROM world_countries WHERE iso_code_2 = 'RW'), '0000'), -- Southern Province (Nyamagabe District capital)
('Nyagatare', (SELECT id FROM world_countries WHERE iso_code_2 = 'RW'), '0000'), -- Eastern Province (Nyagatare District capital)
('Kayonza', (SELECT id FROM world_countries WHERE iso_code_2 = 'RW'), '0000'), -- Eastern Province (Kayonza District capital)
('Nyamata', (SELECT id FROM world_countries WHERE iso_code_2 = 'RW'), '0000'), -- Eastern Province (Bugesera District capital)
('Ruhango', (SELECT id FROM world_countries WHERE iso_code_2 = 'RW'), '0000'), -- Southern Province (Ruhango District capital)
('Nyamasheke', (SELECT id FROM world_countries WHERE iso_code_2 = 'RW'), '0000'); -- Western Province (Nyamasheke District capital)

-- End of Rwanda city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Rwanda ==
-- ====================================
--
-- Descripción General:
-- Ruanda (Rwanda) es un pequeño país sin salida al mar ubicado en la región de los
-- Grandes Lagos de África Central/Oriental. Limita con Uganda al norte, Tanzania al
-- este, Burundi al sur y la República Democrática del Congo al oeste. Es conocido
-- como la "Tierra de las Mil Colinas" por su paisaje montañoso y ondulado. Es uno
-- de los países más densamente poblados de África continental.
--
-- Ciudades Principales:
-- * Kigali: La capital y ciudad más grande, ubicada en el centro del país. Es el
--   centro político, económico y de transporte.
-- * Butare (ahora parte del distrito de Huye): Tradicionalmente considerada la capital
--   intelectual, sede de la universidad nacional.
-- * Gitarama (ahora parte del distrito de Muhanga): Segunda ciudad más grande en
--   términos de población urbana cercana a Kigali.
-- * Ruhengeri (ahora Musanze): Principal ciudad en el norte, puerta de entrada al
--   Parque Nacional de los Volcanes (gorilas de montaña).
-- * Gisenyi (ahora Rubavu): Ciudad importante en la orilla norte del Lago Kivu, en
--   la frontera con la RDC.
-- * Byumba, Cyangugu (Rusizi), Kibuye (Karongi), Kibungo (Ngoma), Rwamagana: Otras
--   capitales provinciales o centros importantes.
--
-- Un Poco de Historia:
-- La región fue sede del Reino de Ruanda, dominado por una monarquía Tutsi sobre
-- una población mayoritariamente Hutu y Twa. Fue colonizada por Alemania a finales
-- del siglo XIX y luego administrada por Bélgica (como parte de Ruanda-Urundi)
-- después de la Primera Guerra Mundial bajo mandato de la Liga de Naciones y luego
-- fideicomiso de la ONU. La administración belga exacerbó las divisiones étnicas.
-- Ruanda obtuvo la independencia en 1962 como una república dominada por la mayoría
-- Hutu, tras una revolución que derrocó la monarquía. La historia post-independencia
-- estuvo marcada por ciclos de violencia étnica. En 1994, ocurrió el genocidio
-- contra los Tutsi, en el que extremistas Hutu masacraron a aproximadamente 800,000
-- Tutsis y Hutus moderados en unos 100 días. El Frente Patriótico Ruandés (FPR),
-- liderado por Paul Kagame, tomó el control del país y puso fin al genocidio. Desde
-- entonces, bajo el liderazgo del FPR y Kagame, Ruanda ha experimentado una notable
-- recuperación económica, desarrollo y estabilidad, aunque también ha recibido
-- críticas sobre derechos humanos y libertades políticas.
--
-- Datos Adicionales:
-- Los idiomas oficiales son el kinyarwanda, el francés, el inglés y el swahili.
-- Ruanda es conocida por sus esfuerzos de reconciliación post-genocidio, su limpieza
-- y orden (especialmente en Kigali) y por ser un destino importante para el turismo
-- de gorilas de montaña en el Parque Nacional de los Volcanes. Ha logrado avances
-- significativos en salud y desarrollo tecnológico.
--
*/
