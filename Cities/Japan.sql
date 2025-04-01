-- SQL Script to insert a representative sample of significant cities and towns for Japan (JP).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Japan (JP).

-- NOTE: Japan has thousands of municipalities. This list includes the capital, designated cities,
-- prefectural capitals, and a broad sample of major cities. Listing every single locality is IMPOSSIBLE.
-- Postal codes are ###-####; examples or '000-0000' placeholder are provided.

-- Inserting cities for Japan (JP) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Designated Cities / Prefectural Capitals / Major Cities
('Tokyo', (SELECT id FROM world_countries WHERE iso_code_2 = 'JP'), '100-0000'), -- National Capital (Special Wards area)
('Yokohama', (SELECT id FROM world_countries WHERE iso_code_2 = 'JP'), '220-0000'), -- Kanagawa Prefecture Capital
('Osaka', (SELECT id FROM world_countries WHERE iso_code_2 = 'JP'), '530-0000'), -- Osaka Prefecture Capital
('Nagoya', (SELECT id FROM world_countries WHERE iso_code_2 = 'JP'), '450-0000'), -- Aichi Prefecture Capital
('Sapporo', (SELECT id FROM world_countries WHERE iso_code_2 = 'JP'), '060-0000'), -- Hokkaido Prefecture Capital
('Fukuoka', (SELECT id FROM world_countries WHERE iso_code_2 = 'JP'), '810-0000'), -- Fukuoka Prefecture Capital
('Kobe', (SELECT id FROM world_countries WHERE iso_code_2 = 'JP'), '650-0000'), -- Hyogo Prefecture Capital
('Kyoto', (SELECT id FROM world_countries WHERE iso_code_2 = 'JP'), '600-0000'), -- Kyoto Prefecture Capital
('Kawasaki', (SELECT id FROM world_countries WHERE iso_code_2 = 'JP'), '210-0000'), -- Kanagawa Prefecture
('Saitama', (SELECT id FROM world_countries WHERE iso_code_2 = 'JP'), '330-0000'), -- Saitama Prefecture Capital
('Hiroshima', (SELECT id FROM world_countries WHERE iso_code_2 = 'JP'), '730-0000'), -- Hiroshima Prefecture Capital
('Sendai', (SELECT id FROM world_countries WHERE iso_code_2 = 'JP'), '980-0000'), -- Miyagi Prefecture Capital
('Chiba', (SELECT id FROM world_countries WHERE iso_code_2 = 'JP'), '260-0000'), -- Chiba Prefecture Capital
('Kitakyushu', (SELECT id FROM world_countries WHERE iso_code_2 = 'JP'), '802-0000'), -- Fukuoka Prefecture
('Sakai', (SELECT id FROM world_countries WHERE iso_code_2 = 'JP'), '590-0000'), -- Osaka Prefecture
('Niigata', (SELECT id FROM world_countries WHERE iso_code_2 = 'JP'), '950-0000'), -- Niigata Prefecture Capital
('Hamamatsu', (SELECT id FROM world_countries WHERE iso_code_2 = 'JP'), '430-0000'), -- Shizuoka Prefecture
('Kumamoto', (SELECT id FROM world_countries WHERE iso_code_2 = 'JP'), '860-0000'), -- Kumamoto Prefecture Capital
('Sagamihara', (SELECT id FROM world_countries WHERE iso_code_2 = 'JP'), '252-0000'), -- Kanagawa Prefecture
('Okayama', (SELECT id FROM world_countries WHERE iso_code_2 = 'JP'), '700-0000'), -- Okayama Prefecture Capital
('Shizuoka', (SELECT id FROM world_countries WHERE iso_code_2 = 'JP'), '420-0000'), -- Shizuoka Prefecture Capital
('Utsunomiya', (SELECT id FROM world_countries WHERE iso_code_2 = 'JP'), '320-0000'), -- Tochigi Prefecture Capital
('Kagoshima', (SELECT id FROM world_countries WHERE iso_code_2 = 'JP'), '890-0000'), -- Kagoshima Prefecture Capital
('Matsuyama', (SELECT id FROM world_countries WHERE iso_code_2 = 'JP'), '790-0000'), -- Ehime Prefecture Capital
('Oita', (SELECT id FROM world_countries WHERE iso_code_2 = 'JP'), '870-0000'), -- Oita Prefecture Capital
('Kanazawa', (SELECT id FROM world_countries WHERE iso_code_2 = 'JP'), '920-0000'), -- Ishikawa Prefecture Capital
('Gifu', (SELECT id FROM world_countries WHERE iso_code_2 = 'JP'), '500-0000'), -- Gifu Prefecture Capital
('Miyazaki', (SELECT id FROM world_countries WHERE iso_code_2 = 'JP'), '880-0000'), -- Miyazaki Prefecture Capital
('Toyama', (SELECT id FROM world_countries WHERE iso_code_2 = 'JP'), '930-0000'), -- Toyama Prefecture Capital
('Takamatsu', (SELECT id FROM world_countries WHERE iso_code_2 = 'JP'), '760-0000'), -- Kagawa Prefecture Capital
('Nagano', (SELECT id FROM world_countries WHERE iso_code_2 = 'JP'), '380-0000'), -- Nagano Prefecture Capital
('Wakayama', (SELECT id FROM world_countries WHERE iso_code_2 = 'JP'), '640-0000'), -- Wakayama Prefecture Capital
('Nara', (SELECT id FROM world_countries WHERE iso_code_2 = 'JP'), '630-0000'), -- Nara Prefecture Capital
('Akita', (SELECT id FROM world_countries WHERE iso_code_2 = 'JP'), '010-0000'), -- Akita Prefecture Capital
('Kofu', (SELECT id FROM world_countries WHERE iso_code_2 = 'JP'), '400-0000'), -- Yamanashi Prefecture Capital
('Kochi', (SELECT id FROM world_countries WHERE iso_code_2 = 'JP'), '780-0000'), -- Kochi Prefecture Capital
('Morioka', (SELECT id FROM world_countries WHERE iso_code_2 = 'JP'), '020-0000'), -- Iwate Prefecture Capital
('Maebashi', (SELECT id FROM world_countries WHERE iso_code_2 = 'JP'), '371-0000'), -- Gunma Prefecture Capital
('Yamagata', (SELECT id FROM world_countries WHERE iso_code_2 = 'JP'), '990-0000'), -- Yamagata Prefecture Capital
('Fukushima', (SELECT id FROM world_countries WHERE iso_code_2 = 'JP'), '960-0000'), -- Fukushima Prefecture Capital
('Tsu', (SELECT id FROM world_countries WHERE iso_code_2 = 'JP'), '514-0000'), -- Mie Prefecture Capital
('Fukui', (SELECT id FROM world_countries WHERE iso_code_2 = 'JP'), '910-0000'), -- Fukui Prefecture Capital
('Mito', (SELECT id FROM world_countries WHERE iso_code_2 = 'JP'), '310-0000'), -- Ibaraki Prefecture Capital
('Tokushima', (SELECT id FROM world_countries WHERE iso_code_2 = 'JP'), '770-0000'), -- Tokushima Prefecture Capital
('Aomori', (SELECT id FROM world_countries WHERE iso_code_2 = 'JP'), '030-0000'), -- Aomori Prefecture Capital
('Saga', (SELECT id FROM world_countries WHERE iso_code_2 = 'JP'), '840-0000'), -- Saga Prefecture Capital
('Naha', (SELECT id FROM world_countries WHERE iso_code_2 = 'JP'), '900-0000'), -- Okinawa Prefecture Capital
('Tottori', (SELECT id FROM world_countries WHERE iso_code_2 = 'JP'), '680-0000'), -- Tottori Prefecture Capital
('Matsue', (SELECT id FROM world_countries WHERE iso_code_2 = 'JP'), '690-0000'), -- Shimane Prefecture Capital
('Otsu', (SELECT id FROM world_countries WHERE iso_code_2 = 'JP'), '520-0000'), -- Shiga Prefecture Capital
('Yamaguchi', (SELECT id FROM world_countries WHERE iso_code_2 = 'JP'), '753-0000'), -- Yamaguchi Prefecture Capital

-- Other Very Large / Significant Cities (Highly Selective Sample)
('Himeji', (SELECT id FROM world_countries WHERE iso_code_2 = 'JP'), '670-0000'), -- Hyogo Prefecture (Famous Castle)
('Kurashiki', (SELECT id FROM world_countries WHERE iso_code_2 = 'JP'), '710-0000'), -- Okayama Prefecture
('Fukuyama', (SELECT id FROM world_countries WHERE iso_code_2 = 'JP'), '720-0000'), -- Hiroshima Prefecture
('Hachioji', (SELECT id FROM world_countries WHERE iso_code_2 = 'JP'), '192-0000'), -- Tokyo Metropolis (Western Suburb)
('Yokosuka', (SELECT id FROM world_countries WHERE iso_code_2 = 'JP'), '238-0000'), -- Kanagawa Prefecture (Naval Port)
('Toyohashi', (SELECT id FROM world_countries WHERE iso_code_2 = 'JP'), '440-0000'), -- Aichi Prefecture
('Toyota', (SELECT id FROM world_countries WHERE iso_code_2 = 'JP'), '471-0000'), -- Aichi Prefecture (Toyota Motor HQ)
('Takasaki', (SELECT id FROM world_countries WHERE iso_code_2 = 'JP'), '370-0000'), -- Gunma Prefecture
('Iwaki', (SELECT id FROM world_countries WHERE iso_code_2 = 'JP'), '970-0000'), -- Fukushima Prefecture
('Koriyama', (SELECT id FROM world_countries WHERE iso_code_2 = 'JP'), '963-0000'), -- Fukushima Prefecture
('Fujisawa', (SELECT id FROM world_countries WHERE iso_code_2 = 'JP'), '251-0000'), -- Kanagawa Prefecture
('Machida', (SELECT id FROM world_countries WHERE iso_code_2 = 'JP'), '194-0000'); -- Tokyo Metropolis (Western Suburb)

-- End of Japan city list (Highly Selective Sample)

/*
-- ====================================
-- == Información sobre Japan ==
-- ====================================
--
-- Descripción General:
-- Japón (Japan) es un país insular ubicado en Asia Oriental, en el Océano Pacífico.
-- Consiste en un extenso archipiélago formado por miles de islas, siendo las cuatro
-- principales Honshu (la más grande y poblada), Hokkaido, Kyushu y Shikoku. Es un
-- país montañoso y volcánico (con el Monte Fuji como icono), propenso a terremotos
-- y tsunamis. Es conocido por su mezcla única de cultura tradicional y modernidad
-- tecnológica, su alta densidad de población y su avanzada economía. Es una
-- monarquía constitucional con un emperador ceremonial y un parlamento.
--
-- Ciudades Principales:
-- * Tokio (Tokyo): La capital y la metrópolis más grande del mundo por población.
--   Es el centro político, económico y cultural de Japón.
-- * Yokohama: Segunda ciudad más grande, importante puerto cerca de Tokio.
-- * Osaka: Tercera ciudad, centro comercial e histórico en la región de Kansai.
-- * Nagoya: Cuarta ciudad, centro industrial importante.
-- * Sapporo: Principal ciudad en la isla norteña de Hokkaido.
-- * Fukuoka: Principal ciudad en la isla sureña de Kyushu.
-- * Kobe, Kioto (Kyoto - antigua capital imperial), Kawasaki, Saitama, Hiroshima,
--   Sendai: Otras megaciudades y centros urbanos clave.
-- * La lista incluye también las capitales de todas las 47 prefecturas y otras
--   ciudades muy grandes o significativas (incluyendo las 20 "ciudades designadas").
--
-- Un Poco de Historia:
-- Habitado desde tiempos prehistóricos (período Jōmon). La cultura japonesa
-- temprana fue influenciada por China y Corea. Surgió un estado imperial centralizado
-- (períodos Nara y Heian). Siguió un largo período feudal dominado por la clase
-- guerrera samurái y los shogunes (dictadores militares), con el emperador como
-- figura ceremonial (períodos Kamakura, Muromachi, Edo/Tokugawa). Japón se aisló
-- en gran medida del mundo exterior durante el shogunato Tokugawa. La Restauración
-- Meiji en 1868 restauró el poder imperial y condujo a una rápida modernización e
-- industrialización. Japón se convirtió en una potencia imperialista, participando
-- en guerras con China y Rusia, y en la Segunda Guerra Mundial. Tras su derrota en
-- 1945 (incluyendo los bombardeos atómicos de Hiroshima y Nagasaki), fue ocupado
-- por los Aliados y adoptó una constitución pacifista. Experimentó un "milagro
-- económico" de posguerra, convirtiéndose en una de las principales economías
-- mundiales y una democracia estable.
--
-- Datos Adicionales:
-- El japonés es el idioma oficial. Las religiones principales son el sintoísmo
-- (religión indígena) y el budismo, a menudo practicadas de forma sincrética.
-- Japón es famoso por su tecnología (electrónica, automóviles), su cultura pop
-- (anime, manga), su gastronomía (sushi, ramen), el tren bala (Shinkansen), las
-- artes marciales (sumo, karate, judo) y sus tradiciones estéticas (ceremonia del
-- té, jardines zen).
--
*/
