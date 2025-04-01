-- SQL Script to insert a highly selective sample of major cities and capitals for China (CN).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains China (CN).

-- NOTE: China is immense in size and population. This list includes only a very small fraction
-- of its localities, focusing on major municipalities, provincial/regional capitals, SARs,
-- and some other very large cities. Listing every locality is ABSOLUTELY IMPOSSIBLE.
-- Postal codes are 6 digits; examples or '000000' placeholder are provided.

-- Inserting cities for China (CN) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Major Municipalities & National Capital
('Beijing', (SELECT id FROM world_countries WHERE iso_code_2 = 'CN'), '100000'), -- National Capital & Municipality
('Shanghai', (SELECT id FROM world_countries WHERE iso_code_2 = 'CN'), '200000'), -- Municipality
('Tianjin', (SELECT id FROM world_countries WHERE iso_code_2 = 'CN'), '300000'), -- Municipality
('Chongqing', (SELECT id FROM world_countries WHERE iso_code_2 = 'CN'), '400000'), -- Municipality

-- Provincial & Autonomous Region Capitals / Major Cities
('Guangzhou', (SELECT id FROM world_countries WHERE iso_code_2 = 'CN'), '510000'), -- Guangdong Capital
('Shenzhen', (SELECT id FROM world_countries WHERE iso_code_2 = 'CN'), '518000'), -- Guangdong (Major City)
('Chengdu', (SELECT id FROM world_countries WHERE iso_code_2 = 'CN'), '610000'), -- Sichuan Capital
('Wuhan', (SELECT id FROM world_countries WHERE iso_code_2 = 'CN'), '430000'), -- Hubei Capital
('Hangzhou', (SELECT id FROM world_countries WHERE iso_code_2 = 'CN'), '310000'), -- Zhejiang Capital
('Xi''an', (SELECT id FROM world_countries WHERE iso_code_2 = 'CN'), '710000'), -- Shaanxi Capital
('Nanjing', (SELECT id FROM world_countries WHERE iso_code_2 = 'CN'), '210000'), -- Jiangsu Capital
('Jinan', (SELECT id FROM world_countries WHERE iso_code_2 = 'CN'), '250000'), -- Shandong Capital
('Qingdao', (SELECT id FROM world_countries WHERE iso_code_2 = 'CN'), '266000'), -- Shandong (Major City)
('Shenyang', (SELECT id FROM world_countries WHERE iso_code_2 = 'CN'), '110000'), -- Liaoning Capital
('Dalian', (SELECT id FROM world_countries WHERE iso_code_2 = 'CN'), '116000'), -- Liaoning (Major City)
('Harbin', (SELECT id FROM world_countries WHERE iso_code_2 = 'CN'), '150000'), -- Heilongjiang Capital
('Changchun', (SELECT id FROM world_countries WHERE iso_code_2 = 'CN'), '130000'), -- Jilin Capital
('Shijiazhuang', (SELECT id FROM world_countries WHERE iso_code_2 = 'CN'), '050000'), -- Hebei Capital
('Taiyuan', (SELECT id FROM world_countries WHERE iso_code_2 = 'CN'), '030000'), -- Shanxi Capital
('Zhengzhou', (SELECT id FROM world_countries WHERE iso_code_2 = 'CN'), '450000'), -- Henan Capital
('Hefei', (SELECT id FROM world_countries WHERE iso_code_2 = 'CN'), '230000'), -- Anhui Capital
('Fuzhou', (SELECT id FROM world_countries WHERE iso_code_2 = 'CN'), '350000'), -- Fujian Capital
('Xiamen', (SELECT id FROM world_countries WHERE iso_code_2 = 'CN'), '361000'), -- Fujian (Major City)
('Nanchang', (SELECT id FROM world_countries WHERE iso_code_2 = 'CN'), '330000'), -- Jiangxi Capital
('Changsha', (SELECT id FROM world_countries WHERE iso_code_2 = 'CN'), '410000'), -- Hunan Capital
('Nanning', (SELECT id FROM world_countries WHERE iso_code_2 = 'CN'), '530000'), -- Guangxi Zhuang AR Capital
('Haikou', (SELECT id FROM world_countries WHERE iso_code_2 = 'CN'), '570000'), -- Hainan Capital
('Guiyang', (SELECT id FROM world_countries WHERE iso_code_2 = 'CN'), '550000'), -- Guizhou Capital
('Kunming', (SELECT id FROM world_countries WHERE iso_code_2 = 'CN'), '650000'), -- Yunnan Capital
('Lhasa', (SELECT id FROM world_countries WHERE iso_code_2 = 'CN'), '850000'), -- Tibet AR Capital
('Lanzhou', (SELECT id FROM world_countries WHERE iso_code_2 = 'CN'), '730000'), -- Gansu Capital
('Xining', (SELECT id FROM world_countries WHERE iso_code_2 = 'CN'), '810000'), -- Qinghai Capital
('Yinchuan', (SELECT id FROM world_countries WHERE iso_code_2 = 'CN'), '750000'), -- Ningxia Hui AR Capital
('Ürümqi', (SELECT id FROM world_countries WHERE iso_code_2 = 'CN'), '830000'), -- Xinjiang Uyghur AR Capital
('Hohhot', (SELECT id FROM world_countries WHERE iso_code_2 = 'CN'), '010000'), -- Inner Mongolia AR Capital

-- Special Administrative Regions (SARs) - Note: Often treated separately but part of CN country code
('Hong Kong', (SELECT id FROM world_countries WHERE iso_code_2 = 'CN'), '000000'), -- SAR (Uses no standard postal codes for domestic mail)
('Macao', (SELECT id FROM world_countries WHERE iso_code_2 = 'CN'), '000000'), -- SAR (Uses no standard postal codes for domestic mail)

-- Other Very Large / Significant Cities (Highly Selective Sample)
('Suzhou', (SELECT id FROM world_countries WHERE iso_code_2 = 'CN'), '215000'), -- Jiangsu
('Dongguan', (SELECT id FROM world_countries WHERE iso_code_2 = 'CN'), '523000'), -- Guangdong
('Foshan', (SELECT id FROM world_countries WHERE iso_code_2 = 'CN'), '528000'), -- Guangdong
('Wenzhou', (SELECT id FROM world_countries WHERE iso_code_2 = 'CN'), '325000'), -- Zhejiang
('Ningbo', (SELECT id FROM world_countries WHERE iso_code_2 = 'CN'), '315000'), -- Zhejiang
('Zibo', (SELECT id FROM world_countries WHERE iso_code_2 = 'CN'), '255000'), -- Shandong
('Tangshan', (SELECT id FROM world_countries WHERE iso_code_2 = 'CN'), '063000'), -- Hebei
('Handan', (SELECT id FROM world_countries WHERE iso_code_2 = 'CN'), '056000'), -- Hebei
('Baotou', (SELECT id FROM world_countries WHERE iso_code_2 = 'CN'), '014000'); -- Inner Mongolia

-- End of China city list (Highly Selective Sample)

/*
-- ====================================
-- == Información sobre China ==
-- ====================================
--
-- Descripción General:
-- La República Popular China es un país ubicado en Asia Oriental, el más poblado
-- del mundo y el tercero o cuarto más grande por área total. Su vasto territorio
-- abarca paisajes que van desde las estepas y desiertos (Gobi, Taklamakán) en el
-- norte y oeste, hasta bosques subtropicales en el sur, y las altas mesetas y
-- montañas del Himalaya y el Tíbet en el suroeste. Tiene una larga costa en el
-- Océano Pacífico. Es un estado socialista de partido único liderado por el
-- Partido Comunista Chino.
--
-- Ciudades Principales:
-- * Beijing (Pekín): La capital nacional, centro político y cultural con una
--   historia milenaria (Ciudad Prohibida, Plaza de Tiananmén).
-- * Shanghai: La ciudad más poblada de China y centro financiero global, con un
--   horizonte ultramoderno.
-- * Guangzhou (Cantón) y Shenzhen: Megaciudades y centros económicos clave en el
--   delta del río Perla, en el sur.
-- * Chongqing y Tianjin: Otras municipalidades directamente bajo el gobierno central
--   con enormes poblaciones.
-- * Hong Kong y Macao: Regiones Administrativas Especiales con altos grados de
--   autonomía bajo el principio de "un país, dos sistemas".
-- * La lista incluye también las capitales de todas las provincias y regiones
--   autónomas, y algunas otras ciudades extremadamente grandes.
--
-- Un Poco de Historia:
-- China es una de las civilizaciones continuas más antiguas del mundo, con orígenes
-- que se remontan a miles de años. Su historia está marcada por una sucesión de
-- dinastías imperiales (Qin, Han, Tang, Song, Ming, Qing, etc.), periodos de
-- unificación y fragmentación, e importantes desarrollos culturales y tecnológicos.
-- En el siglo XIX y principios del XX, sufrió la intervención extranjera y conflictos
-- internos. La República de China fue establecida en 1912. Tras una larga guerra
-- civil, el Partido Comunista liderado por Mao Zedong estableció la República
-- Popular China en 1949. Después de décadas de planificación centralizada y
-- agitación política (Gran Salto Adelante, Revolución Cultural), China inició
-- reformas económicas orientadas al mercado a partir de 1978, lo que ha resultado
-- en un crecimiento económico espectacular y una transformación social masiva.
--
-- Datos Adicionales:
-- El chino mandarín (Putonghua) es el idioma oficial. China es famosa por la Gran
-- Muralla, el Ejército de Terracota, su rica filosofía (confucianismo, taoísmo),
-- su gastronomía diversa y sus avances tecnológicos recientes. Es una potencia
-- mundial económica, política y militar.
--
*/
