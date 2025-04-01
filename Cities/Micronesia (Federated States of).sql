-- SQL Script to insert a representative sample of significant towns and municipal centers for the Federated States of Micronesia (FM).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Federated States of Micronesia (FM).

-- NOTE: FSM consists of ~600 islands across 4 states. This list includes the national capital, state capitals,
-- and significant towns/municipal centers on main islands. Listing every single village is IMPOSSIBLE.
-- Postal codes are US ZIP codes (969xx); examples or '00000' placeholder are provided.

-- Inserting cities/towns for FSM (FM) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- National Capital & State Capitals / Major Towns
('Palikir', (SELECT id FROM world_countries WHERE iso_code_2 = 'FM'), '96941'), -- National Capital (on Pohnpei, Sokehs Municipality)
('Kolonia (Pohnpei)', (SELECT id FROM world_countries WHERE iso_code_2 = 'FM'), '96941'), -- Largest town on Pohnpei (former Trust Territory capital)
('Weno', (SELECT id FROM world_countries WHERE iso_code_2 = 'FM'), '96942'), -- Chuuk State Capital (on Weno island, Chuuk Lagoon)
('Colonia (Yap)', (SELECT id FROM world_countries WHERE iso_code_2 = 'FM'), '96943'), -- Yap State Capital (on Yap island)
('Tofol', (SELECT id FROM world_countries WHERE iso_code_2 = 'FM'), '96944'), -- Kosrae State Capital (in Lelu Municipality, Kosrae island)

-- Other Significant Towns / Municipalities (Sample by State)
-- Pohnpei State
('Nett', (SELECT id FROM world_countries WHERE iso_code_2 = 'FM'), '96941'),
('U', (SELECT id FROM world_countries WHERE iso_code_2 = 'FM'), '96941'),
('Madolenihmw', (SELECT id FROM world_countries WHERE iso_code_2 = 'FM'), '96941'), -- Location of Nan Madol ruins
('Kitti', (SELECT id FROM world_countries WHERE iso_code_2 = 'FM'), '96941'),
('Sokehs', (SELECT id FROM world_countries WHERE iso_code_2 = 'FM'), '96941'), -- Municipality containing Palikir

-- Chuuk State (within Lagoon - sample)
('Tol', (SELECT id FROM world_countries WHERE iso_code_2 = 'FM'), '96942'), -- Tol island group
('Fefan', (SELECT id FROM world_countries WHERE iso_code_2 = 'FM'), '96942'), -- Fefan island
('Uman', (SELECT id FROM world_countries WHERE iso_code_2 = 'FM'), '96942'), -- Uman island

-- Yap State (Yap Main Islands - sample)
('Rull', (SELECT id FROM world_countries WHERE iso_code_2 = 'FM'), '96943'),
('Gagil', (SELECT id FROM world_countries WHERE iso_code_2 = 'FM'), '96943'),
('Tomil', (SELECT id FROM world_countries WHERE iso_code_2 = 'FM'), '96943'),

-- Kosrae State
('Lelu', (SELECT id FROM world_countries WHERE iso_code_2 = 'FM'), '96944'), -- Municipality containing Tofol
('Malem', (SELECT id FROM world_countries WHERE iso_code_2 = 'FM'), '96944'),
('Utwe', (SELECT id FROM world_countries WHERE iso_code_2 = 'FM'), '96944');

-- Outer islands have numerous small villages (e.g., Ulithi Atoll in Yap, Nomwin Atoll in Chuuk) - not listed individually.

-- End of FSM locality list (Representative Sample)

/*
-- ============================================================
-- == Información sobre Micronesia (Federated States of) ==
-- ============================================================
--
-- Descripción General:
-- Los Estados Federados de Micronesia (EFM) son un país insular en Oceanía, ubicado
-- en la región de Micronesia, al norte del ecuador en el Océano Pacífico. Consiste
-- en aproximadamente 607 islas y atolones dispersos sobre una vasta extensión
-- oceánica, agrupados en cuatro estados federados: Yap, Chuuk (antes Truk), Pohnpei
-- (antes Ponapé) y Kosrae (antes Kusaie). Es un estado soberano en libre asociación
-- con los Estados Unidos.
--
-- Ciudades Principales (Localidades):
-- No hay grandes ciudades. Los centros principales son:
-- * Palikir: La capital nacional designada, ubicada en la isla de Pohnpei.
-- * Kolonia (Pohnpei): El pueblo más grande y centro comercial de Pohnpei, antigua
--   capital del Territorio en Fideicomiso.
-- * Weno: La capital del estado de Chuuk y el centro más poblado del país, ubicada
--   en la laguna de Chuuk.
-- * Colonia (Yap): La capital del estado de Yap.
-- * Tofol: La capital del estado de Kosrae, ubicada en el municipio de Lelu.
-- * La lista incluye también otros centros municipales importantes en las islas principales.
--
-- Un Poco de Historia:
-- Las islas fueron pobladas por pueblos micronesios. Fueron avistadas por exploradores
-- europeos (portugueses y españoles) a partir del siglo XVI. España reclamó las
-- Islas Carolinas (que incluían los actuales EFM) pero vendió gran parte a Alemania
-- en 1899. Japón ocupó las islas durante la Primera Guerra Mundial y las administró
-- bajo mandato de la Liga de Naciones. Fueron escenario de importantes combates
-- navales y aéreos durante la Segunda Guerra Mundial (especialmente la laguna de Chuuk/Truk,
-- una base naval japonesa clave). Después de la guerra, se convirtieron en parte del
-- Territorio en Fideicomiso de las Islas del Pacífico, administrado por Estados Unidos
-- bajo mandato de la ONU. Los EFM se constituyeron como estado autónomo en 1979 y
-- lograron la plena independencia en libre asociación con EE.UU. en 1986 (el Compacto
-- de Libre Asociación provee defensa, subsidios y otros beneficios).
--
-- Datos Adicionales:
-- El inglés es el idioma oficial y de uso común en el gobierno y la educación, pero
-- se hablan numerosas lenguas micronesias locales (yapés, chuukés, pohnpeiano,
-- kosraeano, etc.). La economía depende en gran medida de la ayuda estadounidense
-- bajo el Compacto, la pesca y la agricultura de subsistencia. La laguna de Chuuk
-- es un destino mundialmente famoso para el buceo de naufragios de la Segunda Guerra
-- Mundial. La isla de Yap es conocida por su tradicional "dinero de piedra" (rai).
-- Las ruinas de Nan Madol en Pohnpei son Patrimonio de la Humanidad por la UNESCO.
--
*/
