-- SQL Script to insert a representative sample of significant cities and towns for Yemen (YE).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Yemen (YE).

-- NOTE: Yemen is divided into governorates and districts, containing numerous cities, towns, and villages. The country has been affected by an ongoing civil war since 2014-2015,
-- leading to divided control, a severe humanitarian crisis, and challenges in obtaining reliable, up-to-date data.
-- Listing every single settlement is impractical. This list focuses on the constitutional capital (under Houthi control),
-- the interim capital (seat of the internationally recognized government), other major cities, and a sample of governorate capitals, reflecting the complex situation.
-- Yemen has a postal code system, but its functionality during the conflict is highly uncertain; using '00000' as a placeholder.

-- Inserting cities/towns for Yemen (YE) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Constitutional Capital (Houthi-controlled) & Interim Capital (Internationally Recognized Gov't)
('Sana\'a', (SELECT id FROM world_countries WHERE iso_code_2 = 'YE'), '00000'), -- Constitutional Capital (Sana'a Governorate/Amanat Al Asimah - Currently Houthi-controlled) - Sanaa
('Aden', (SELECT id FROM world_countries WHERE iso_code_2 = 'YE'), '00000'), -- Interim Capital (Seat of internationally recognized government, Aden Governorate Capital)

-- Other Major Cities / Governorate Capitals (Control varies or is contested in some cases)
('Taiz', (SELECT id FROM world_countries WHERE iso_code_2 = 'YE'), '00000'), -- Third Largest City (Taiz Governorate Capital - Often contested)
('Hodeidah', (SELECT id FROM world_countries WHERE iso_code_2 = 'YE'), '00000'), -- Major Red Sea Port City (Al Hudaydah Governorate Capital - Primarily Houthi-controlled)
('Mukalla', (SELECT id FROM world_countries WHERE iso_code_2 = 'YE'), '00000'), -- Major Port City on Gulf of Aden (Hadhramaut Governorate Capital - Gov't aligned control)
('Ibb', (SELECT id FROM world_countries WHERE iso_code_2 = 'YE'), '00000'), -- Major City in Highlands (Ibb Governorate Capital - Houthi-controlled)
('Dhamar', (SELECT id FROM world_countries WHERE iso_code_2 = 'YE'), '00000'), -- City in Highlands (Dhamar Governorate Capital - Houthi-controlled)
('Seiyun', (SELECT id FROM world_countries WHERE iso_code_2 = 'YE'), '00000'), -- Major town in Hadhramaut Governorate (Gov't aligned control)
('Zinjibar', (SELECT id FROM world_countries WHERE iso_code_2 = 'YE'), '00000'), -- Abyan Governorate Capital (Gov't aligned control)
('Saada', (SELECT id FROM world_countries WHERE iso_code_2 = 'YE'), '00000'), -- Saada Governorate Capital (Houthi stronghold)
('Al Bayda', (SELECT id FROM world_countries WHERE iso_code_2 = 'YE'), '00000'), -- Al Bayda Governorate Capital
('Ataq', (SELECT id FROM world_countries WHERE iso_code_2 = 'YE'), '00000'), -- Shabwah Governorate Capital
('Hajjah', (SELECT id FROM world_countries WHERE iso_code_2 = 'YE'), '00000'); -- Hajjah Governorate Capital (Houthi-controlled)


-- End of Yemen city/town list (Representative Sample reflecting complex situation)

/*
-- =============================================
-- ==        Información sobre Yemen         ==
-- =============================================
--
-- Descripción General:
-- Yemen, oficialmente la República de Yemen, es un país ubicado en el extremo sur de
-- la Península Arábiga, en Asia Occidental. Limita con Arabia Saudita al norte y Omán
-- al noreste. Tiene costas en el Mar Rojo al oeste, el Golfo de Adén al sur y el Mar
-- Arábigo al sureste. El territorio incluye varias islas, destacando Socotra en el
-- Océano Índico. Su geografía varía desde llanuras costeras (Tihama), altas montañas
-- en el oeste y centro, hasta el desierto del Rub al-Jali en el este.
--
-- Ciudades Principales y Situación Política:
-- * Saná (Sana'a): La capital constitucional y ciudad histórica (Patrimonio de la Humanidad),
--   actualmente bajo el control del movimiento hutí (Ansar Allah).
-- * Adén (Aden): Importante ciudad portuaria histórica, designada como capital interina
--   por el gobierno internacionalmente reconocido.
-- * Taiz: Tercera ciudad más grande, ubicada en las montañas, a menudo dividida y escenario
--   de combates.
-- * Al Hudaydah (Hodeidah): Principal puerto en el Mar Rojo, crucial para las importaciones,
--   mayoritariamente bajo control hutí.
-- * Mukalla: Principal ciudad y puerto en la región de Hadhramaut, bajo control de fuerzas
--   alineadas con el gobierno reconocido internacionalmente.
-- * Ibb, Dhamar, Saada: Otras ciudades importantes en áreas bajo control hutí.
-- El país está inmerso en una compleja guerra civil desde 2014-2015, con control territorial
-- dividido entre los hutíes (apoyados por Irán) y el gobierno internacionalmente
-- reconocido (apoyado por una coalición liderada por Arabia Saudita), además de otros
-- grupos como el Consejo de Transición del Sur. Esto ha provocado una de las peores
-- crisis humanitarias del mundo.
--
-- Un Poco de Historia:
-- Yemen tiene una historia antigua, siendo hogar de reinos como Saba (Sheba) y Himyar.
-- Fue un importante centro comercial en la antigüedad (incienso, mirra). Se islamizó
-- tempranamente. La región montañosa del norte fue centro del Imanato Zaydí (una rama
-- del chiismo) durante siglos. El sur y la costa estuvieron bajo diversas influencias,
-- incluyendo el Imperio Otomano y el Imperio Británico (Protectorado de Adén). En el
-- siglo XX, el país estuvo dividido en Yemen del Norte (República Árabe de Yemen, con
-- capital en Saná) y Yemen del Sur (República Democrática Popular de Yemen, socialista,
-- con capital en Adén). Los dos países se unificaron en 1990 para formar la República
-- de Yemen. La unificación fue seguida por tensiones y conflictos, culminando en la
-- guerra civil actual.
--
-- Datos Adicionales:
-- El árabe es el idioma oficial. El islam es la religión predominante (mayoría sunita
-- Shafi'i y una importante minoría chiita Zaydí). La sociedad yemení es tribal en
-- gran medida. El país posee una rica arquitectura tradicional (casas-torre de Saná,
-- Shibam Hadhramaut) y patrimonio cultural. El Qat, una planta estimulante, es
-- ampliamente consumido. La economía, ya frágil antes del conflicto (basada en
-- petróleo limitado, agricultura y remesas), ha sido devastada por la guerra, con
-- hambruna generalizada y colapso de servicios básicos.
--
*/
