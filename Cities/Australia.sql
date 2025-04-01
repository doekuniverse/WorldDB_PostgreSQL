-- SQL Script to insert a representative sample of significant cities and towns for Australia (AU).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Australia (AU).

-- NOTE: Australia is vast; this list includes capitals and a broad sample of major cities
-- and regional centers. It is IMPOSSIBLE to list every single locality.
-- Postal codes are 4 digits; examples or '0000' placeholder are provided.

-- Inserting cities for Australia (AU) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- National & State/Territory Capitals
('Canberra', (SELECT id FROM world_countries WHERE iso_code_2 = 'AU'), '2600'), -- National Capital (ACT)
('Sydney', (SELECT id FROM world_countries WHERE iso_code_2 = 'AU'), '2000'), -- State Capital (NSW)
('Melbourne', (SELECT id FROM world_countries WHERE iso_code_2 = 'AU'), '3000'), -- State Capital (VIC)
('Brisbane', (SELECT id FROM world_countries WHERE iso_code_2 = 'AU'), '4000'), -- State Capital (QLD)
('Perth', (SELECT id FROM world_countries WHERE iso_code_2 = 'AU'), '6000'), -- State Capital (WA)
('Adelaide', (SELECT id FROM world_countries WHERE iso_code_2 = 'AU'), '5000'), -- State Capital (SA)
('Hobart', (SELECT id FROM world_countries WHERE iso_code_2 = 'AU'), '7000'), -- State Capital (TAS)
('Darwin', (SELECT id FROM world_countries WHERE iso_code_2 = 'AU'), '0800'), -- Territory Capital (NT)

-- Other Major Cities & Regional Centers (Sample)
('Gold Coast', (SELECT id FROM world_countries WHERE iso_code_2 = 'AU'), '4217'), -- QLD
('Newcastle', (SELECT id FROM world_countries WHERE iso_code_2 = 'AU'), '2300'), -- NSW
('Wollongong', (SELECT id FROM world_countries WHERE iso_code_2 = 'AU'), '2500'), -- NSW
('Logan City', (SELECT id FROM world_countries WHERE iso_code_2 = 'AU'), '4114'), -- QLD (Part of Greater Brisbane)
('Geelong', (SELECT id FROM world_countries WHERE iso_code_2 = 'AU'), '3220'), -- VIC
('Sunshine Coast', (SELECT id FROM world_countries WHERE iso_code_2 = 'AU'), '4551'), -- QLD (Region)
('Townsville', (SELECT id FROM world_countries WHERE iso_code_2 = 'AU'), '4810'), -- QLD
('Cairns', (SELECT id FROM world_countries WHERE iso_code_2 = 'AU'), '4870'), -- QLD
('Toowoomba', (SELECT id FROM world_countries WHERE iso_code_2 = 'AU'), '4350'), -- QLD
('Ballarat', (SELECT id FROM world_countries WHERE iso_code_2 = 'AU'), '3350'), -- VIC
('Bendigo', (SELECT id FROM world_countries WHERE iso_code_2 = 'AU'), '3550'), -- VIC
('Launceston', (SELECT id FROM world_countries WHERE iso_code_2 = 'AU'), '7250'), -- TAS
('Mandurah', (SELECT id FROM world_countries WHERE iso_code_2 = 'AU'), '6210'), -- WA
('Bunbury', (SELECT id FROM world_countries WHERE iso_code_2 = 'AU'), '6230'), -- WA
('Rockingham', (SELECT id FROM world_countries WHERE iso_code_2 = 'AU'), '6168'), -- WA
('Mackay', (SELECT id FROM world_countries WHERE iso_code_2 = 'AU'), '4740'), -- QLD
('Rockhampton', (SELECT id FROM world_countries WHERE iso_code_2 = 'AU'), '4700'), -- QLD
('Bundaberg', (SELECT id FROM world_countries WHERE iso_code_2 = 'AU'), '4670'), -- QLD
('Hervey Bay', (SELECT id FROM world_countries WHERE iso_code_2 = 'AU'), '4655'), -- QLD
('Maitland', (SELECT id FROM world_countries WHERE iso_code_2 = 'AU'), '2320'), -- NSW
('Albury', (SELECT id FROM world_countries WHERE iso_code_2 = 'AU'), '2640'), -- NSW (on VIC border)
('Wagga Wagga', (SELECT id FROM world_countries WHERE iso_code_2 = 'AU'), '2650'), -- NSW
('Coffs Harbour', (SELECT id FROM world_countries WHERE iso_code_2 = 'AU'), '2450'), -- NSW
('Port Macquarie', (SELECT id FROM world_countries WHERE iso_code_2 = 'AU'), '2444'), -- NSW
('Orange', (SELECT id FROM world_countries WHERE iso_code_2 = 'AU'), '2800'), -- NSW
('Dubbo', (SELECT id FROM world_countries WHERE iso_code_2 = 'AU'), '2830'), -- NSW
('Tamworth', (SELECT id FROM world_countries WHERE iso_code_2 = 'AU'), '2340'), -- NSW
('Mildura', (SELECT id FROM world_countries WHERE iso_code_2 = 'AU'), '3500'), -- VIC
('Shepparton', (SELECT id FROM world_countries WHERE iso_code_2 = 'AU'), '3630'), -- VIC
('Gladstone', (SELECT id FROM world_countries WHERE iso_code_2 = 'AU'), '4680'), -- QLD
('Mount Gambier', (SELECT id FROM world_countries WHERE iso_code_2 = 'AU'), '5290'), -- SA
('Whyalla', (SELECT id FROM world_countries WHERE iso_code_2 = 'AU'), '5600'), -- SA
('Geraldton', (SELECT id FROM world_countries WHERE iso_code_2 = 'AU'), '6530'), -- WA
('Kalgoorlie-Boulder', (SELECT id FROM world_countries WHERE iso_code_2 = 'AU'), '6430'), -- WA
('Albany', (SELECT id FROM world_countries WHERE iso_code_2 = 'AU'), '6330'), -- WA
('Alice Springs', (SELECT id FROM world_countries WHERE iso_code_2 = 'AU'), '0870'), -- NT (Central Australia)
('Palmerston', (SELECT id FROM world_countries WHERE iso_code_2 = 'AU'), '0830'); -- NT (Near Darwin)

-- End of Australia city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Australia ==
-- ====================================
--
-- Descripción General:
-- Australia es un país soberano que ocupa la totalidad del continente australiano
-- y varias islas menores. Es el sexto país más grande del mundo por área total.
-- Su geografía es increíblemente diversa, incluyendo desiertos áridos en el
-- interior (el Outback), selvas tropicales en el noreste, cadenas montañosas
-- como la Gran Cordillera Divisoria en el este, y extensas costas con playas
-- famosas. Es una monarquía constitucional parlamentaria federal y forma parte
-- de la Commonwealth.
--
-- Ciudades Principales:
-- * Canberra: La capital nacional, ubicada en el Territorio de la Capital Australiana (ACT).
-- * Sydney: La ciudad más poblada y capital de Nueva Gales del Sur (NSW), famosa por su ópera y puente.
-- * Melbourne: Capital de Victoria (VIC), conocida por su cultura, arte y eventos deportivos.
-- * Brisbane: Capital de Queensland (QLD), ciudad subtropical de rápido crecimiento.
-- * Perth: Capital de Australia Occidental (WA), una ciudad aislada pero próspera en la costa oeste.
-- * Adelaide: Capital de Australia Meridional (SA), conocida por sus festivales y vino.
-- * Hobart: Capital de Tasmania (TAS), la segunda capital más antigua después de Sydney.
-- * Darwin: Capital del Territorio del Norte (NT), puerta de entrada tropical al norte.
-- * La lista también incluye otras ciudades importantes y centros regionales de todo el país.
--
-- Un Poco de Historia:
-- Habitada por los aborígenes australianos durante decenas de miles de años, fue
-- avistada por exploradores europeos en el siglo XVII y colonizada por Gran Bretaña
-- a partir de 1788 (como colonia penal). Las diversas colonias se federaron en
-- 1901 para formar la Mancomunidad de Australia. El país ha experimentado una
-- significativa inmigración de diversas partes del mundo, especialmente después
-- de la Segunda Guerra Mundial, creando una sociedad multicultural.
--
-- Datos Adicionales:
-- Australia es famosa por su fauna única (canguros, koalas, ornitorrincos). La
-- Gran Barrera de Coral es el sistema de arrecifes de coral más grande del mundo.
-- El inglés es el idioma de facto. Deportes como el cricket, el rugby y el fútbol
-- australiano son muy populares.
--
*/
