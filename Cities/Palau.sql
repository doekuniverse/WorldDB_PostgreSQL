-- SQL Script to insert all states (main administrative divisions) for Palau (PW).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Palau (PW).

-- NOTE: Palau is very small and divided into 16 states. This list includes all of them,
-- providing essentially complete coverage at this administrative level.
-- Postal codes are US ZIP codes (969xx); using 96940 as a general code.

-- Inserting states for Palau (PW) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
('Koror', (SELECT id FROM world_countries WHERE iso_code_2 = 'PW'), '96940'), -- Koror State (Largest city, former capital)
('Melekeok', (SELECT id FROM world_countries WHERE iso_code_2 = 'PW'), '96940'), -- Melekeok State (Location of new capital, Ngerulmud)
('Airai', (SELECT id FROM world_countries WHERE iso_code_2 = 'PW'), '96940'), -- Airai State (Location of airport)
('Aimeliik', (SELECT id FROM world_countries WHERE iso_code_2 = 'PW'), '96940'), -- Aimeliik State
('Angaur', (SELECT id FROM world_countries WHERE iso_code_2 = 'PW'), '96940'), -- Angaur State
('Hatohobei', (SELECT id FROM world_countries WHERE iso_code_2 = 'PW'), '96940'), -- Hatohobei State (Southernmost, sparsely populated)
('Kayangel', (SELECT id FROM world_countries WHERE iso_code_2 = 'PW'), '96940'), -- Kayangel State (Northernmost atoll)
('Ngaraard', (SELECT id FROM world_countries WHERE iso_code_2 = 'PW'), '96940'), -- Ngaraard State
('Ngarchelong', (SELECT id FROM world_countries WHERE iso_code_2 = 'PW'), '96940'), -- Ngarchelong State
('Ngardmau', (SELECT id FROM world_countries WHERE iso_code_2 = 'PW'), '96940'), -- Ngardmau State
('Ngatpang', (SELECT id FROM world_countries WHERE iso_code_2 = 'PW'), '96940'), -- Ngatpang State
('Ngchesar', (SELECT id FROM world_countries WHERE iso_code_2 = 'PW'), '96940'), -- Ngchesar State
('Ngiwal', (SELECT id FROM world_countries WHERE iso_code_2 = 'PW'), '96940'), -- Ngiwal State
('Peleliu', (SELECT id FROM world_countries WHERE iso_code_2 = 'PW'), '96940'), -- Peleliu State (WWII battle site)
('Sonsorol', (SELECT id FROM world_countries WHERE iso_code_2 = 'PW'), '96940'); -- Sonsorol State (Southwest islands, sparsely populated)
-- Ngeremlengui is the 16th state, often listed with Ngatpang or others, adding it explicitly:
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
('Ngeremlengui', (SELECT id FROM world_countries WHERE iso_code_2 = 'PW'), '96940'); -- Ngeremlengui State

-- End of Palau state list (All 16 states included)

/*
-- ====================================
-- == Información sobre Palau ==
-- ====================================
--
-- Descripción General:
-- La República de Palaos (Palau) es un país insular ubicado en el Océano Pacífico
-- occidental, en la región de Micronesia. Consiste en un archipiélélago de más de
-- 500 islas, que forman parte de la cadena occidental de las Islas Carolinas. La
-- mayoría de la población vive en unas pocas islas, principalmente Koror y Babeldaob
-- (la isla más grande). Es famoso por sus Islas Roca (Rock Islands), un conjunto de
-- islas calizas cubiertas de vegetación y rodeadas de lagunas (Patrimonio de la
-- Humanidad). Es un estado soberano en libre asociación con los Estados Unidos.
--
-- Ciudades Principales (Estados/Localidades):
-- Palaos se divide administrativamente en 16 estados. No hay grandes ciudades.
-- * Ngerulmud: La capital nacional desde 2006, ubicada en el estado de Melekeok en
--   la isla de Babeldaob. Es una de las capitales menos pobladas del mundo.
-- * Koror: El estado y la ciudad más poblada, antigua capital y principal centro
--   comercial y turístico. Se encuentra en islas conectadas por puentes al sur de Babeldaob.
-- * Airai: Segundo estado más poblado, ubicación del aeropuerto internacional, en Babeldaob.
-- * Melekeok, Aimeliik, Ngaraard, etc.: Los demás estados cubren el resto de Babeldaob
--   y las islas exteriores como Peleliu, Angaur, Kayangel, Sonsorol y Hatohobei,
--   muchos con poblaciones muy pequeñas.
-- * La lista incluye los 16 estados que componen el país.
--
-- Un Poco de Historia:
-- Habitada por pueblos micronesios durante miles de años. Avistada por europeos
-- (posiblemente Ruy López de Villalobos) en el siglo XVI. Formó parte de las Indias
-- Orientales Españolas. Tras la Guerra Hispano-Estadounidense, España vendió Palaos
-- (junto con las Carolinas y Marianas del Norte) a Alemania en 1899. Japón ocupó
-- las islas durante la Primera Guerra Mundial y las administró bajo mandato de la
-- Liga de Naciones. Fueron escenario de importantes batallas en la Segunda Guerra
-- Mundial (Batalla de Peleliu). Después de la guerra, se convirtieron en parte del
-- Territorio en Fideicomiso de las Islas del Pacífico, administrado por Estados Unidos
-- bajo mandato de la ONU. Palaos optó por no unirse a los Estados Federados de
-- Micronesia y se convirtió en república autónoma en 1981. Logró la plena independencia
-- en libre asociación con EE.UU. en 1994 (el Compacto de Libre Asociación provee
-- defensa, subsidios y otros beneficios).
--
-- Datos Adicionales:
-- Los idiomas oficiales son el palauano (una lengua austronesia) y el inglés. El
-- dólar estadounidense es la moneda oficial. Palaos es famoso por su espectacular
-- ambiente marino, el buceo (Rock Islands, Jellyfish Lake - aunque la población de
-- medusas ha fluctuado) y sus esfuerzos de conservación marina (fue el primer país
-- en crear un santuario de tiburones).
--
*/
