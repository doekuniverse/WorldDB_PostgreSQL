-- SQL Script to insert all municipalities for Puerto Rico (PR).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Puerto Rico (PR).

-- NOTE: Puerto Rico is divided into 78 municipalities. This list includes all of them,
-- providing essentially complete coverage at the municipal level.
-- Postal codes are US ZIP codes (00xxx); examples are provided.

-- Inserting municipalities for Puerto Rico (PR) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
('San Juan', (SELECT id FROM world_countries WHERE iso_code_2 = 'PR'), '00901'), -- Capital
('Adjuntas', (SELECT id FROM world_countries WHERE iso_code_2 = 'PR'), '00601'),
('Aguada', (SELECT id FROM world_countries WHERE iso_code_2 = 'PR'), '00602'),
('Aguadilla', (SELECT id FROM world_countries WHERE iso_code_2 = 'PR'), '00603'),
('Aguas Buenas', (SELECT id FROM world_countries WHERE iso_code_2 = 'PR'), '00703'),
('Aibonito', (SELECT id FROM world_countries WHERE iso_code_2 = 'PR'), '00705'),
('Añasco', (SELECT id FROM world_countries WHERE iso_code_2 = 'PR'), '00610'),
('Arecibo', (SELECT id FROM world_countries WHERE iso_code_2 = 'PR'), '00612'),
('Arroyo', (SELECT id FROM world_countries WHERE iso_code_2 = 'PR'), '00714'),
('Barceloneta', (SELECT id FROM world_countries WHERE iso_code_2 = 'PR'), '00617'),
('Barranquitas', (SELECT id FROM world_countries WHERE iso_code_2 = 'PR'), '00794'),
('Bayamón', (SELECT id FROM world_countries WHERE iso_code_2 = 'PR'), '00956'), -- Major city (Metro Area)
('Cabo Rojo', (SELECT id FROM world_countries WHERE iso_code_2 = 'PR'), '00623'),
('Caguas', (SELECT id FROM world_countries WHERE iso_code_2 = 'PR'), '00725'), -- Major city
('Camuy', (SELECT id FROM world_countries WHERE iso_code_2 = 'PR'), '00627'),
('Canóvanas', (SELECT id FROM world_countries WHERE iso_code_2 = 'PR'), '00729'),
('Carolina', (SELECT id FROM world_countries WHERE iso_code_2 = 'PR'), '00979'), -- Major city (Metro Area, Airport)
('Cataño', (SELECT id FROM world_countries WHERE iso_code_2 = 'PR'), '00962'), -- Metro Area
('Cayey', (SELECT id FROM world_countries WHERE iso_code_2 = 'PR'), '00736'),
('Ceiba', (SELECT id FROM world_countries WHERE iso_code_2 = 'PR'), '00735'),
('Ciales', (SELECT id FROM world_countries WHERE iso_code_2 = 'PR'), '00638'),
('Cidra', (SELECT id FROM world_countries WHERE iso_code_2 = 'PR'), '00739'),
('Coamo', (SELECT id FROM world_countries WHERE iso_code_2 = 'PR'), '00769'),
('Comerío', (SELECT id FROM world_countries WHERE iso_code_2 = 'PR'), '00782'),
('Corozal', (SELECT id FROM world_countries WHERE iso_code_2 = 'PR'), '00783'),
('Culebra', (SELECT id FROM world_countries WHERE iso_code_2 = 'PR'), '00775'), -- Island municipality
('Dorado', (SELECT id FROM world_countries WHERE iso_code_2 = 'PR'), '00646'),
('Fajardo', (SELECT id FROM world_countries WHERE iso_code_2 = 'PR'), '00738'),
('Florida', (SELECT id FROM world_countries WHERE iso_code_2 = 'PR'), '00650'),
('Guánica', (SELECT id FROM world_countries WHERE iso_code_2 = 'PR'), '00653'),
('Guayama', (SELECT id FROM world_countries WHERE iso_code_2 = 'PR'), '00784'),
('Guayanilla', (SELECT id FROM world_countries WHERE iso_code_2 = 'PR'), '00656'),
('Guaynabo', (SELECT id FROM world_countries WHERE iso_code_2 = 'PR'), '00965'), -- Major city (Metro Area)
('Gurabo', (SELECT id FROM world_countries WHERE iso_code_2 = 'PR'), '00778'),
('Hatillo', (SELECT id FROM world_countries WHERE iso_code_2 = 'PR'), '00659'),
('Hormigueros', (SELECT id FROM world_countries WHERE iso_code_2 = 'PR'), '00660'),
('Humacao', (SELECT id FROM world_countries WHERE iso_code_2 = 'PR'), '00791'),
('Isabela', (SELECT id FROM world_countries WHERE iso_code_2 = 'PR'), '00662'),
('Jayuya', (SELECT id FROM world_countries WHERE iso_code_2 = 'PR'), '00664'),
('Juana Díaz', (SELECT id FROM world_countries WHERE iso_code_2 = 'PR'), '00795'),
('Juncos', (SELECT id FROM world_countries WHERE iso_code_2 = 'PR'), '00777'),
('Lajas', (SELECT id FROM world_countries WHERE iso_code_2 = 'PR'), '00667'),
('Lares', (SELECT id FROM world_countries WHERE iso_code_2 = 'PR'), '00669'),
('Las Marías', (SELECT id FROM world_countries WHERE iso_code_2 = 'PR'), '00670'),
('Las Piedras', (SELECT id FROM world_countries WHERE iso_code_2 = 'PR'), '00771'),
('Loíza', (SELECT id FROM world_countries WHERE iso_code_2 = 'PR'), '00772'),
('Luquillo', (SELECT id FROM world_countries WHERE iso_code_2 = 'PR'), '00773'),
('Manatí', (SELECT id FROM world_countries WHERE iso_code_2 = 'PR'), '00674'),
('Maricao', (SELECT id FROM world_countries WHERE iso_code_2 = 'PR'), '00606'),
('Maunabo', (SELECT id FROM world_countries WHERE iso_code_2 = 'PR'), '00707'),
('Mayagüez', (SELECT id FROM world_countries WHERE iso_code_2 = 'PR'), '00680'), -- Major city (West coast)
('Moca', (SELECT id FROM world_countries WHERE iso_code_2 = 'PR'), '00676'),
('Morovis', (SELECT id FROM world_countries WHERE iso_code_2 = 'PR'), '00687'),
('Naguabo', (SELECT id FROM world_countries WHERE iso_code_2 = 'PR'), '00718'),
('Naranjito', (SELECT id FROM world_countries WHERE iso_code_2 = 'PR'), '00719'),
('Orocovis', (SELECT id FROM world_countries WHERE iso_code_2 = 'PR'), '00720'),
('Patillas', (SELECT id FROM world_countries WHERE iso_code_2 = 'PR'), '00723'),
('Peñuelas', (SELECT id FROM world_countries WHERE iso_code_2 = 'PR'), '00624'),
('Ponce', (SELECT id FROM world_countries WHERE iso_code_2 = 'PR'), '00716'), -- Second largest city (proper)
('Quebradillas', (SELECT id FROM world_countries WHERE iso_code_2 = 'PR'), '00678'),
('Rincón', (SELECT id FROM world_countries WHERE iso_code_2 = 'PR'), '00677'), -- Surfing destination
('Río Grande', (SELECT id FROM world_countries WHERE iso_code_2 = 'PR'), '00745'), -- Near El Yunque rainforest
('Sabana Grande', (SELECT id FROM world_countries WHERE iso_code_2 = 'PR'), '00637'),
('Salinas', (SELECT id FROM world_countries WHERE iso_code_2 = 'PR'), '00751'),
('San Germán', (SELECT id FROM world_countries WHERE iso_code_2 = 'PR'), '00683'), -- Historic city
('San Lorenzo', (SELECT id FROM world_countries WHERE iso_code_2 = 'PR'), '00754'),
('San Sebastián', (SELECT id FROM world_countries WHERE iso_code_2 = 'PR'), '00685'),
('Toa Alta', (SELECT id FROM world_countries WHERE iso_code_2 = 'PR'), '00953'),
('Toa Baja', (SELECT id FROM world_countries WHERE iso_code_2 = 'PR'), '00949'),
('Trujillo Alto', (SELECT id FROM world_countries WHERE iso_code_2 = 'PR'), '00976'), -- Metro Area
('Utuado', (SELECT id FROM world_countries WHERE iso_code_2 = 'PR'), '00641'),
('Vega Alta', (SELECT id FROM world_countries WHERE iso_code_2 = 'PR'), '00692'),
('Vega Baja', (SELECT id FROM world_countries WHERE iso_code_2 = 'PR'), '00693'),
('Vieques', (SELECT id FROM world_countries WHERE iso_code_2 = 'PR'), '00765'), -- Island municipality
('Villalba', (SELECT id FROM world_countries WHERE iso_code_2 = 'PR'), '00766'),
('Yabucoa', (SELECT id FROM world_countries WHERE iso_code_2 = 'PR'), '00767'),
('Yauco', (SELECT id FROM world_countries WHERE iso_code_2 = 'PR'), '00698');

-- End of Puerto Rico municipality list (All 78 municipalities included)

/*
-- ======================================
-- == Información sobre Puerto Rico ==
-- ======================================
--
-- Descripción General:
-- Puerto Rico, oficialmente Estado Libre Asociado de Puerto Rico, es un territorio
-- no incorporado de los Estados Unidos ubicado en el noreste del Mar Caribe, al este
-- de la República Dominicana y al oeste de las Islas Vírgenes. Es un archipiélago
-- que incluye la isla principal de Puerto Rico y varias islas más pequeñas, como
-- Vieques, Culebra y Mona. Es la más pequeña y oriental de las Antillas Mayores.
-- Los puertorriqueños son ciudadanos estadounidenses.
--
-- Ciudades Principales (Municipios):
-- Puerto Rico se divide administrativamente en 78 municipios.
-- * San Juan: La capital y el municipio más poblado, ubicado en la costa norte. Es
--   el centro financiero, cultural y turístico. El Viejo San Juan es Patrimonio de
--   la Humanidad por la UNESCO por sus fortificaciones coloniales españolas.
-- * Bayamón, Carolina, Guaynabo, Caguas, Trujillo Alto: Municipios muy poblados que
--   forman parte del área metropolitana de San Juan. Carolina alberga el principal
--   aeropuerto internacional.
-- * Ponce: La principal ciudad de la costa sur, conocida como la "Perla del Sur".
-- * Mayagüez: Principal ciudad de la costa oeste.
-- * Arecibo: Conocida por el antiguo Observatorio de Arecibo.
-- * La lista incluye los 78 municipios que componen Puerto Rico.
--
-- Un Poco de Historia:
-- Habitada por los Taínos. Fue reclamada por Cristóbal Colón para España en 1493.
-- Fue una colonia española importante durante más de 400 años, sirviendo como un
-- puesto militar estratégico en el Caribe. España cedió Puerto Rico a Estados Unidos
-- en 1898 tras la Guerra Hispano-Estadounidense. En 1917, se concedió la ciudadanía
-- estadounidense a los puertorriqueños. En 1952, se estableció el Estado Libre
-- Asociado (Commonwealth), un estatus territorial con autonomía interna. El estatus
-- político de Puerto Rico (estadidad, independencia o mantener/modificar el estatus
-- actual) sigue siendo un tema de debate continuo.
--
-- Datos Adicionales:
-- El español y el inglés son los idiomas oficiales. Puerto Rico tiene una cultura
-- vibrante con fuertes influencias españolas, africanas y taínas, especialmente
-- visible en su música (salsa, reguetón, bomba, plena). El Bosque Nacional El Yunque
-- es la única selva tropical en el sistema forestal nacional de EE.UU. Las bahías
-- bioluminiscentes son una atracción natural única.
--
*/
