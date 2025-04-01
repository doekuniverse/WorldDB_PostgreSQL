-- SQL Script to insert the main islands/atolls comprising the United States Minor Outlying Islands (UM).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains United States Minor Outlying Islands (UM).

-- NOTE: The United States Minor Outlying Islands consist of nine distinct island/atoll territories scattered across the Pacific Ocean and one in the Caribbean Sea.
-- These islands DO NOT have permanent civilian populations, cities, towns, or villages in the conventional sense.
-- Most are uninhabited National Wildlife Refuges or host temporary military, scientific, or conservation personnel.
-- This list includes the names of the islands/atolls themselves as the representative 'locations'.
-- These islands do not have standard assigned US Postal Codes; using '00000' as a placeholder.

-- Inserting island/atoll names for United States Minor Outlying Islands (UM) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Pacific Ocean Islands/Atolls
('Baker Island', (SELECT id FROM world_countries WHERE iso_code_2 = 'UM'), '00000'), -- Uninhabited atoll/National Wildlife Refuge (NWR)
('Howland Island', (SELECT id FROM world_countries WHERE iso_code_2 = 'UM'), '00000'), -- Uninhabited island/NWR
('Jarvis Island', (SELECT id FROM world_countries WHERE iso_code_2 = 'UM'), '00000'), -- Uninhabited island/NWR
('Johnston Atoll', (SELECT id FROM world_countries WHERE iso_code_2 = 'UM'), '00000'), -- Atoll/NWR (Formerly military base/chemical weapon site, now managed by USFWS)
('Kingman Reef', (SELECT id FROM world_countries WHERE iso_code_2 = 'UM'), '00000'), -- Largely submerged reef/NWR (Uninhabited)
('Midway Atoll', (SELECT id FROM world_countries WHERE iso_code_2 = 'UM'), '00000'), -- Atoll/NWR (Hosts USFWS staff and contractors, site of historic battle)
('Palmyra Atoll', (SELECT id FROM world_countries WHERE iso_code_2 = 'UM'), '00000'), -- Atoll/NWR (Privately owned by The Nature Conservancy, hosts researchers)
('Wake Island', (SELECT id FROM world_countries WHERE iso_code_2 = 'UM'), '00000'), -- Atoll (US Air Force base/facility, limited civilian contractors)

-- Caribbean Sea Island
('Navassa Island', (SELECT id FROM world_countries WHERE iso_code_2 = 'UM'), '00000'); -- Island/NWR (Uninhabited, claimed by Haiti)


-- End of United States Minor Outlying Islands list (Includes all designated islands/atolls)

/*
-- ==================================================================
-- ==    Información sobre las Islas Ultramarinas Menores de EE.UU. ==
-- ==================================================================
--
-- Descripción General:
-- Las Islas Ultramarinas Menores de Estados Unidos (United States Minor Outlying Islands)
-- es una designación estadística creada por la ISO 3166-1 que agrupa nueve posesiones
-- insulares de Estados Unidos ubicadas en el Océano Pacífico (Isla Baker, Isla Howland,
-- Isla Jarvis, Atolón Johnston, Arrecife Kingman, Atolón Midway, Atolón Palmyra, Isla Wake)
-- y una en el Mar Caribe (Isla Navassa). Estos territorios son posesiones no incorporadas
-- y no organizadas de los Estados Unidos, administradas directamente por el gobierno federal,
-- principalmente por el Departamento del Interior a través del Servicio de Pesca y Vida
-- Silvestre (USFWS) como Refugios Nacionales de Vida Silvestre (NWR), con excepciones
-- como la Isla Wake (administrada por la Fuerza Aérea) y el Atolón Palmyra (propiedad
-- privada, administrada en cooperación).
--
-- Asentamientos / Población:
-- Es crucial entender que estas islas NO TIENEN POBLACIÓN CIVIL PERMANENTE RESIDENTE.
-- No existen ciudades, pueblos ni aldeas. La mayoría están completamente deshabitadas.
-- Aquellas con presencia humana (Midway, Wake, Johnston, Palmyra) albergan únicamente
-- personal militar estadounidense, contratistas civiles, científicos del USFWS o
-- investigadores de forma temporal o rotatoria. No hay actividad económica local más
-- allá de las operaciones gubernamentales o de conservación/investigación.
--
-- Un Poco de Historia:
-- Estas islas fueron reclamadas por Estados Unidos bajo la Ley de Islas Guaneras de 1856
-- o adquiridas por otros medios a lo largo de los siglos XIX y XX. Varias tuvieron
-- importancia estratégica durante la Segunda Guerra Mundial (especialmente Midway y Wake)
-- o durante la Guerra Fría (Johnston como base militar y sitio de pruebas/almacenamiento).
-- Otras fueron explotadas por sus depósitos de guano en el siglo XIX. Hoy en día, su
-- valor principal radica en sus extensas zonas económicas exclusivas marinas y como
-- áreas protegidas para la vida silvestre.
--
-- Datos Adicionales:
-- No tienen gobierno local ni representación política. Son administradas directamente
-- desde Washington D.C. No tienen un sistema postal estándar propio (se usan direcciones
-- militares APO/FPO o direcciones de agencias específicas). El acceso a la mayoría de
-- las islas está restringido y requiere permisos especiales. La Isla Navassa es también
-- reclamada por Haití.
--
*/
