-- SQL Script to insert a representative sample of significant cities and towns for Ecuador (EC).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Ecuador (EC).

-- NOTE: Ecuador has diverse geography and many localities. This list includes the capital, provincial capitals,
-- major cities, and significant canton centers. Listing every single locality is IMPOSSIBLE.
-- Postal codes are 6 digits; examples or '000000' placeholder are provided.

-- Inserting cities for Ecuador (EC) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Provincial Capitals / Major Cities
('Quito', (SELECT id FROM world_countries WHERE iso_code_2 = 'EC'), '170150'), -- National Capital (Pichincha Province)
('Guayaquil', (SELECT id FROM world_countries WHERE iso_code_2 = 'EC'), '090150'), -- Guayas Province Capital, Largest city
('Cuenca', (SELECT id FROM world_countries WHERE iso_code_2 = 'EC'), '010150'), -- Azuay Province Capital, UNESCO site
('Santo Domingo', (SELECT id FROM world_countries WHERE iso_code_2 = 'EC'), '230150'), -- Santo Domingo de los Tsáchilas Province Capital
('Machala', (SELECT id FROM world_countries WHERE iso_code_2 = 'EC'), '070150'), -- El Oro Province Capital
('Durán', (SELECT id FROM world_countries WHERE iso_code_2 = 'EC'), '092450'), -- Guayas Province (Near Guayaquil)
('Manta', (SELECT id FROM world_countries WHERE iso_code_2 = 'EC'), '130250'), -- Manabí Province (Major port city)
('Portoviejo', (SELECT id FROM world_countries WHERE iso_code_2 = 'EC'), '130150'), -- Manabí Province Capital
('Loja', (SELECT id FROM world_countries WHERE iso_code_2 = 'EC'), '110150'), -- Loja Province Capital
('Ambato', (SELECT id FROM world_countries WHERE iso_code_2 = 'EC'), '180150'), -- Tungurahua Province Capital
('Esmeraldas', (SELECT id FROM world_countries WHERE iso_code_2 = 'EC'), '080150'), -- Esmeraldas Province Capital
('Quevedo', (SELECT id FROM world_countries WHERE iso_code_2 = 'EC'), '120350'), -- Los Ríos Province (Major city)
('Riobamba', (SELECT id FROM world_countries WHERE iso_code_2 = 'EC'), '060150'), -- Chimborazo Province Capital
('Milagro', (SELECT id FROM world_countries WHERE iso_code_2 = 'EC'), '091050'), -- Guayas Province
('Ibarra', (SELECT id FROM world_countries WHERE iso_code_2 = 'EC'), '100150'), -- Imbabura Province Capital
('Latacunga', (SELECT id FROM world_countries WHERE iso_code_2 = 'EC'), '050150'), -- Cotopaxi Province Capital
('Tulcán', (SELECT id FROM world_countries WHERE iso_code_2 = 'EC'), '040150'), -- Carchi Province Capital
('Babahoyo', (SELECT id FROM world_countries WHERE iso_code_2 = 'EC'), '120150'), -- Los Ríos Province Capital
('Sangolquí', (SELECT id FROM world_countries WHERE iso_code_2 = 'EC'), '171150'), -- Pichincha Province (Near Quito)
('Pasaje', (SELECT id FROM world_countries WHERE iso_code_2 = 'EC'), '070250'), -- El Oro Province
('Chone', (SELECT id FROM world_countries WHERE iso_code_2 = 'EC'), '130350'), -- Manabí Province
('Santa Rosa', (SELECT id FROM world_countries WHERE iso_code_2 = 'EC'), '070350'), -- El Oro Province
('Huaquillas', (SELECT id FROM world_countries WHERE iso_code_2 = 'EC'), '070750'), -- El Oro Province (Border town with Peru)
('Nueva Loja (Lago Agrio)', (SELECT id FROM world_countries WHERE iso_code_2 = 'EC'), '210150'), -- Sucumbíos Province Capital
('El Coca (Francisco de Orellana)', (SELECT id FROM world_countries WHERE iso_code_2 = 'EC'), '220150'), -- Orellana Province Capital
('Puyo', (SELECT id FROM world_countries WHERE iso_code_2 = 'EC'), '160150'), -- Pastaza Province Capital
('Zamora', (SELECT id FROM world_countries WHERE iso_code_2 = 'EC'), '190150'), -- Zamora Chinchipe Province Capital
('Macas', (SELECT id FROM world_countries WHERE iso_code_2 = 'EC'), '140150'), -- Morona Santiago Province Capital
('Tena', (SELECT id FROM world_countries WHERE iso_code_2 = 'EC'), '150150'), -- Napo Province Capital
('Guaranda', (SELECT id FROM world_countries WHERE iso_code_2 = 'EC'), '020150'), -- Bolívar Province Capital
('Azogues', (SELECT id FROM world_countries WHERE iso_code_2 = 'EC'), '030150'), -- Cañar Province Capital
('Puerto Baquerizo Moreno', (SELECT id FROM world_countries WHERE iso_code_2 = 'EC'), '200150'), -- Galápagos Province Capital (on San Cristóbal Island)
('La Libertad', (SELECT id FROM world_countries WHERE iso_code_2 = 'EC'), '240250'), -- Santa Elena Province (Part of peninsula conurbation)
('Salinas', (SELECT id FROM world_countries WHERE iso_code_2 = 'EC'), '240150'), -- Santa Elena Province (Coastal resort)
('Santa Elena', (SELECT id FROM world_countries WHERE iso_code_2 = 'EC'), '240150'), -- Santa Elena Province Capital (Postal code same as Salinas?)
('Velasco Ibarra (El Empalme)', (SELECT id FROM world_countries WHERE iso_code_2 = 'EC'), '092350'), -- Guayas Province
('Otavalo', (SELECT id FROM world_countries WHERE iso_code_2 = 'EC'), '100450'), -- Imbabura Province (Famous market)
('Cayambe', (SELECT id FROM world_countries WHERE iso_code_2 = 'EC'), '170250'); -- Pichincha Province

-- End of Ecuador city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Ecuador ==
-- ====================================
--
-- Descripción General:
-- Ecuador es un país ubicado en el noroeste de América del Sur, atravesado por la
-- línea ecuatorial, de la cual toma su nombre. Limita con Colombia al norte, Perú
-- al este y sur, y el Océano Pacífico al oeste. Posee una geografía muy diversa
-- dividida en cuatro regiones principales: la Costa (llanuras costeras del Pacífico),
-- la Sierra (la región andina con altas montañas y volcanes), la Amazonía (Oriente,
-- selva tropical amazónica) y las Islas Galápagos (un archipiélago volcánico en el
-- Pacífico con fauna única, Patrimonio de la Humanidad).
--
-- Ciudades Principales:
-- * Quito: La capital, ubicada en la Sierra andina a gran altitud. Su centro
--   histórico es uno de los mejor conservados de América Latina y Patrimonio de la
--   Humanidad por la UNESCO.
-- * Guayaquil: La ciudad más grande y poblada, principal puerto marítimo y centro
--   económico, ubicada en la Costa.
-- * Cuenca: Tercera ciudad más grande, ubicada en la Sierra sur, conocida por su
--   arquitectura colonial (Patrimonio de la Humanidad).
-- * Santo Domingo (de los Tsáchilas): Importante centro comercial entre la Costa y la Sierra.
-- * Machala: Centro bananero en el sur de la Costa.
-- * Manta y Portoviejo: Principales ciudades en la provincia costera de Manabí.
-- * Ambato, Riobamba, Ibarra, Loja: Importantes ciudades andinas.
-- * La lista incluye también las capitales de todas las provincias, incluyendo
--   Puerto Baquerizo Moreno en Galápagos.
--
-- Un Poco de Historia:
-- La región fue hogar de diversas culturas indígenas antes de ser incorporada al
-- Imperio Inca en el siglo XV. Fue colonizada por España en el siglo XVI, formando
-- parte del Virreinato del Perú y luego del Virreinato de Nueva Granada (como la
-- Real Audiencia de Quito). Logró la independencia de España en 1822 tras la Batalla
-- de Pichincha, uniéndose inicialmente a la Gran Colombia de Simón Bolívar. Se
-- separó como república independiente en 1830. La historia ecuatoriana ha estado
-- marcada por la rivalidad entre las élites de Quito (Sierra) y Guayaquil (Costa),
-- periodos de inestabilidad política y gobiernos militares, así como por la
-- explotación de recursos como el cacao, el banano y, más recientemente, el petróleo.
--
-- Datos Adicionales:
-- El español es el idioma oficial, pero también se reconocen lenguas indígenas
-- como el Kichwa (Quechua) y el Shuar. Las Islas Galápagos inspiraron la teoría
-- de la evolución por selección natural de Charles Darwin. Ecuador es uno de los
-- países con mayor biodiversidad por kilómetro cuadrado del mundo. La línea
-- ecuatorial atraviesa el país, con un famoso monumento ("Mitad del Mundo") cerca
-- de Quito.
--
*/
