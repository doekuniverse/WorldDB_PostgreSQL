-- SQL Script to insert a representative sample of significant towns for Bhutan (BT).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Bhutan (BT).

-- NOTE: This list includes the capital, major towns, and district (Dzongkhag) centers.
-- Listing every single village in mountainous Bhutan is IMPOSSIBLE.
-- Postal codes are 5 digits; examples or '00000' placeholder are provided.

-- Inserting cities/towns for Bhutan (BT) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
('Thimphu', (SELECT id FROM world_countries WHERE iso_code_2 = 'BT'), '11001'), -- Capital & Thimphu Dzongkhag center
('Paro', (SELECT id FROM world_countries WHERE iso_code_2 = 'BT'), '21001'), -- Paro Dzongkhag center, location of international airport
('Punakha', (SELECT id FROM world_countries WHERE iso_code_2 = 'BT'), '13001'), -- Punakha Dzongkhag center, former capital
('Phuntsholing', (SELECT id FROM world_countries WHERE iso_code_2 = 'BT'), '21101'), -- Major border town (Chukha Dzongkhag)
('Gelephu', (SELECT id FROM world_countries WHERE iso_code_2 = 'BT'), '31101'), -- Major border town (Sarpang Dzongkhag)
('Samdrup Jongkhar', (SELECT id FROM world_countries WHERE iso_code_2 = 'BT'), '41001'), -- Major border town & Dzongkhag center
('Jakar', (SELECT id FROM world_countries WHERE iso_code_2 = 'BT'), '34001'), -- Bumthang Dzongkhag center
('Wangdue Phodrang', (SELECT id FROM world_countries WHERE iso_code_2 = 'BT'), '15001'), -- Wangdue Phodrang Dzongkhag center
('Mongar', (SELECT id FROM world_countries WHERE iso_code_2 = 'BT'), '43001'), -- Mongar Dzongkhag center
('Trashigang', (SELECT id FROM world_countries WHERE iso_code_2 = 'BT'), '42001'), -- Trashigang Dzongkhag center
('Trongsa', (SELECT id FROM world_countries WHERE iso_code_2 = 'BT'), '33001'), -- Trongsa Dzongkhag center, ancestral home of royal family
('Haa', (SELECT id FROM world_countries WHERE iso_code_2 = 'BT'), '14001'), -- Haa Dzongkhag center
('Tsirang (Damphu)', (SELECT id FROM world_countries WHERE iso_code_2 = 'BT'), '35001'), -- Tsirang Dzongkhag center (Damphu town)
('Dagana', (SELECT id FROM world_countries WHERE iso_code_2 = 'BT'), '32001'), -- Dagana Dzongkhag center
('Pemagatshel', (SELECT id FROM world_countries WHERE iso_code_2 = 'BT'), '46001'), -- Pemagatshel Dzongkhag center
('Lhuntse', (SELECT id FROM world_countries WHERE iso_code_2 = 'BT'), '45001'), -- Lhuntse Dzongkhag center
('Samtse', (SELECT id FROM world_countries WHERE iso_code_2 = 'BT'), '22001'), -- Samtse Dzongkhag center
('Zhemgang', (SELECT id FROM world_countries WHERE iso_code_2 = 'BT'), '36001'), -- Zhemgang Dzongkhag center
('Gasa', (SELECT id FROM world_countries WHERE iso_code_2 = 'BT'), '12001'), -- Gasa Dzongkhag center (very small)
('Chukha', (SELECT id FROM world_countries WHERE iso_code_2 = 'BT'), '21002'), -- Chukha Dzongkhag town (near Phuntsholing)
('Gedu', (SELECT id FROM world_countries WHERE iso_code_2 = 'BT'), '21006'), -- Town in Chukha Dzongkhag
('Trashiyangtse', (SELECT id FROM world_countries WHERE iso_code_2 = 'BT'), '44001'); -- Trashiyangtse Dzongkhag center

-- End of Bhutan town list (Representative Sample)

/*
-- ====================================
-- == Información sobre Bhutan ==
-- ====================================
--
-- Descripción General:
-- El Reino de Bután (Bhutan) es un país sin salida al mar ubicado en la cordillera
-- del Himalaya, en Asia del Sur. Limita con China al norte y con India al sur,
-- este y oeste. Es conocido por sus monasterios fortificados (dzongs), sus
-- espectaculares paisajes montañosos y su filosofía única de la Felicidad Nacional
-- Bruta (FNB) como medida del progreso, en lugar del Producto Interno Bruto.
-- Es una monarquía constitucional y una sociedad predominantemente budista (Vajrayana).
--
-- Ciudades Principales:
-- * Thimphu: La capital y ciudad más grande, ubicada en un valle en el oeste del país.
--   Es única por no tener semáforos.
-- * Paro: Sede del único aeropuerto internacional del país y del famoso monasterio
--   Taktshang (Nido del Tigre).
-- * Punakha: Antigua capital, conocida por su impresionante dzong (Punakha Dzong).
-- * Phuntsholing, Gelephu, Samdrup Jongkhar: Importantes ciudades comerciales en la
--   frontera con India.
-- * Jakar: Centro principal del valle de Bumthang, considerado el corazón espiritual
--   del país.
-- * La lista incluye también los centros administrativos de la mayoría de los distritos (Dzongkhags).
--
-- Un Poco de Historia:
-- Bután nunca fue colonizado formalmente. Fue unificado en el siglo XVII por Shabdrung
-- Ngawang Namgyal, un líder religioso y militar tibetano. En 1907 se estableció
-- una monarquía hereditaria. Durante gran parte del siglo XX, Bután mantuvo una
-- política de aislamiento autoimpuesto para preservar su cultura y tradiciones.
-- Inició un proceso de modernización controlada y apertura gradual a partir de la
-- segunda mitad del siglo XX, culminando con la transición a una monarquía
-- constitucional en 2008.
--
-- Datos Adicionales:
-- Bután es el único país del mundo con balance de carbono negativo (absorbe más
-- CO2 del que emite). El budismo Vajrayana impregna todos los aspectos de la vida.
-- La arquitectura tradicional (especialmente los dzongs y monasterios) es muy
-- distintiva. El tiro con arco es el deporte nacional.
--
*/
