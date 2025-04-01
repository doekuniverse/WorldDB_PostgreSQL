-- SQL Script to insert a representative sample of significant cities and towns for Belarus (BY).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Belarus (BY).

-- NOTE: This list includes the capital, regional (oblast) capitals, and a broad sample of major cities
-- and significant district (raion) centers. Listing every single locality is IMPOSSIBLE.
-- Postal codes are 6 digits; examples or '000000' placeholder are provided.

-- Inserting cities for Belarus (BY) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Regional Capitals (Oblast Centers)
('Minsk', (SELECT id FROM world_countries WHERE iso_code_2 = 'BY'), '220000'), -- National Capital & Minsk City/Voblast
('Brest', (SELECT id FROM world_countries WHERE iso_code_2 = 'BY'), '224000'), -- Brest Voblast Capital
('Gomel', (SELECT id FROM world_countries WHERE iso_code_2 = 'BY'), '246000'), -- Gomel Voblast Capital
('Grodno (Hrodna)', (SELECT id FROM world_countries WHERE iso_code_2 = 'BY'), '230000'), -- Grodno Voblast Capital
('Mogilev', (SELECT id FROM world_countries WHERE iso_code_2 = 'BY'), '212000'), -- Mogilev Voblast Capital
('Vitebsk', (SELECT id FROM world_countries WHERE iso_code_2 = 'BY'), '210000'), -- Vitebsk Voblast Capital

-- Other Major Cities & Significant Towns (Sample)
('Babruysk (Bobruisk)', (SELECT id FROM world_countries WHERE iso_code_2 = 'BY'), '213800'), -- Mogilev Voblast
('Baranavichy', (SELECT id FROM world_countries WHERE iso_code_2 = 'BY'), '225400'), -- Brest Voblast
('Pinsk', (SELECT id FROM world_countries WHERE iso_code_2 = 'BY'), '225700'), -- Brest Voblast
('Orsha', (SELECT id FROM world_countries WHERE iso_code_2 = 'BY'), '211380'), -- Vitebsk Voblast
('Mazyr (Mozyr)', (SELECT id FROM world_countries WHERE iso_code_2 = 'BY'), '247760'), -- Gomel Voblast
('Salihorsk (Soligorsk)', (SELECT id FROM world_countries WHERE iso_code_2 = 'BY'), '223710'), -- Minsk Voblast (Potash mining)
('Navapolatsk (Novopolotsk)', (SELECT id FROM world_countries WHERE iso_code_2 = 'BY'), '211440'), -- Vitebsk Voblast (Oil refining)
('Lida', (SELECT id FROM world_countries WHERE iso_code_2 = 'BY'), '231300'), -- Grodno Voblast
('Polatsk (Polotsk)', (SELECT id FROM world_countries WHERE iso_code_2 = 'BY'), '211400'), -- Vitebsk Voblast (Historic city)
('Zhlobin', (SELECT id FROM world_countries WHERE iso_code_2 = 'BY'), '247210'), -- Gomel Voblast
('Svetlahorsk (Svetlogorsk)', (SELECT id FROM world_countries WHERE iso_code_2 = 'BY'), '247400'), -- Gomel Voblast
('Rechytsa', (SELECT id FROM world_countries WHERE iso_code_2 = 'BY'), '247500'), -- Gomel Voblast
('Slutsk', (SELECT id FROM world_countries WHERE iso_code_2 = 'BY'), '223610'), -- Minsk Voblast
('Kobryn', (SELECT id FROM world_countries WHERE iso_code_2 = 'BY'), '225300'), -- Brest Voblast
('Slonim', (SELECT id FROM world_countries WHERE iso_code_2 = 'BY'), '231800'), -- Grodno Voblast
('Vawkavysk (Volkovysk)', (SELECT id FROM world_countries WHERE iso_code_2 = 'BY'), '231900'), -- Grodno Voblast
('Kalinkavichy', (SELECT id FROM world_countries WHERE iso_code_2 = 'BY'), '247710'), -- Gomel Voblast
('Smarhon (Smorgon)', (SELECT id FROM world_countries WHERE iso_code_2 = 'BY'), '231000'), -- Grodno Voblast
('Rahachow (Rogachev)', (SELECT id FROM world_countries WHERE iso_code_2 = 'BY'), '247250'), -- Gomel Voblast
('Horki', (SELECT id FROM world_countries WHERE iso_code_2 = 'BY'), '213410'), -- Mogilev Voblast
('Asipovichy (Osipovichi)', (SELECT id FROM world_countries WHERE iso_code_2 = 'BY'), '213760'), -- Mogilev Voblast
('Byaroza (Beryoza)', (SELECT id FROM world_countries WHERE iso_code_2 = 'BY'), '225210'), -- Brest Voblast
('Navahrudak (Novogrudok)', (SELECT id FROM world_countries WHERE iso_code_2 = 'BY'), '231400'), -- Grodno Voblast (Historic)
('Vileyka', (SELECT id FROM world_countries WHERE iso_code_2 = 'BY'), '222410'), -- Minsk Voblast
('Krichev', (SELECT id FROM world_countries WHERE iso_code_2 = 'BY'), '213500'), -- Mogilev Voblast
('Dzyarzhynsk (Dzerzhinsk)', (SELECT id FROM world_countries WHERE iso_code_2 = 'BY'), '222720'), -- Minsk Voblast
('Luninets', (SELECT id FROM world_countries WHERE iso_code_2 = 'BY'), '225650'), -- Brest Voblast
('Maladzyechna (Molodechno)', (SELECT id FROM world_countries WHERE iso_code_2 = 'BY'), '222310'), -- Minsk Voblast
('Pastavy', (SELECT id FROM world_countries WHERE iso_code_2 = 'BY'), '211870'), -- Vitebsk Voblast
('Hlybokaye (Glubokoye)', (SELECT id FROM world_countries WHERE iso_code_2 = 'BY'), '211790'), -- Vitebsk Voblast
('Zhоdzina (Zhodino)', (SELECT id FROM world_countries WHERE iso_code_2 = 'BY'), '222160'), -- Minsk Voblast (BelAZ trucks)
('Mar''ina Horka', (SELECT id FROM world_countries WHERE iso_code_2 = 'BY'), '222810'), -- Minsk Voblast
('Stolin', (SELECT id FROM world_countries WHERE iso_code_2 = 'BY'), '225501'), -- Brest Voblast
('Fanipol', (SELECT id FROM world_countries WHERE iso_code_2 = 'BY'), '222750'); -- Minsk Voblast

-- End of Belarus city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Belarus ==
-- ====================================
--
-- Descripción General:
-- Bielorrusia (Belarus) es un país sin salida al mar ubicado en Europa del Este.
-- Limita con Rusia al este y noreste, Ucrania al sur, Polonia al oeste, y
-- Lituania y Letonia al noroeste. Es conocido por sus vastos bosques (como el
-- Bosque de Białowieża/Belovezhskaya Pushcha, compartido con Polonia), numerosos
-- lagos y ríos, y una topografía generalmente plana.
--
-- Ciudades Principales:
-- * Minsk: La capital y ciudad más grande, centro político, económico y cultural.
--   Fue reconstruida en gran parte después de la Segunda Guerra Mundial.
-- * Gomel: Segunda ciudad más grande, ubicada en el sureste.
-- * Mogilev, Vitebsk, Grodno (Hrodna) y Brest: Capitales de las otras regiones (óblasts)
--   y centros importantes.
-- * Babruysk (Bobruisk) y Baranavichy: Otras ciudades industriales significativas.
-- * Polatsk (Polotsk): Una de las ciudades más antiguas de la región, con importancia histórica.
--
-- Un Poco de Historia:
-- El territorio formó parte de la Rus de Kiev, luego del Gran Ducado de Lituania
-- y la Mancomunidad Polaco-Lituana, antes de ser incorporado al Imperio Ruso.
-- Tras la Revolución Rusa, se estableció la República Socialista Soviética de
-- Bielorrusia, que fue una de las repúblicas fundadoras de la URSS en 1922.
-- Sufrió una devastación enorme durante la Segunda Guerra Mundial. Declaró su
-- independencia de la URSS en 1991. Desde mediados de la década de 1990, el país
-- ha estado bajo el liderazgo de Alexander Lukashenko, manteniendo estrechos lazos
-- políticos y económicos con Rusia y un sistema político considerado autoritario
-- por muchos países occidentales.
--
-- Datos Adicionales:
-- Los idiomas oficiales son el bielorruso y el ruso, predominando este último
-- en la práctica. El Bosque de Belovezhskaya Pushcha es Patrimonio de la Humanidad
-- y hogar del bisonte europeo. El país fue gravemente afectado por las
-- consecuencias del desastre nuclear de Chernóbil (Ucrania) en 1986.
--
*/
