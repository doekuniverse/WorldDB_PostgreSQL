-- SQL Script to insert a representative sample of significant cities and towns for the Syrian Arab Republic (SY).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Syria (SY).

-- NOTE: Syria has numerous cities, towns, and thousands of villages. Listing every single settlement
-- is impractical for this format and data availability can be challenging. This list focuses on the capital,
-- governorate capitals, and a sample of other significant towns based on available data.
-- Postal codes exist in Syria but are not consistently used or available in datasets; using '0000' as a placeholder.

-- Inserting cities for Syria (SY) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Major Cities / Governorate Capitals
('Damascus', (SELECT id FROM world_countries WHERE iso_code_2 = 'SY'), '0000'), -- National Capital (Damascus Governorate)
('Aleppo', (SELECT id FROM world_countries WHERE iso_code_2 = 'SY'), '0000'), -- Largest City (Aleppo Governorate Capital)
('Homs', (SELECT id FROM world_countries WHERE iso_code_2 = 'SY'), '0000'), -- Major City (Homs Governorate Capital)
('Latakia', (SELECT id FROM world_countries WHERE iso_code_2 = 'SY'), '0000'), -- Major Port City (Latakia Governorate Capital)
('Hama', (SELECT id FROM world_countries WHERE iso_code_2 = 'SY'), '0000'), -- Major City (Hama Governorate Capital)
('Raqqa', (SELECT id FROM world_countries WHERE iso_code_2 = 'SY'), '0000'), -- Raqqa Governorate Capital
('Deir ez-Zor', (SELECT id FROM world_countries WHERE iso_code_2 = 'SY'), '0000'), -- Deir ez-Zor Governorate Capital
('Al-Hasakah', (SELECT id FROM world_countries WHERE iso_code_2 = 'SY'), '0000'), -- Al-Hasakah Governorate Capital
('Qamishli', (SELECT id FROM world_countries WHERE iso_code_2 = 'SY'), '0000'), -- Major city in Al-Hasakah Governorate (near Turkish border)
('Idlib', (SELECT id FROM world_countries WHERE iso_code_2 = 'SY'), '0000'), -- Idlib Governorate Capital
('Daraa', (SELECT id FROM world_countries WHERE iso_code_2 = 'SY'), '0000'), -- Daraa Governorate Capital
('As-Suwayda', (SELECT id FROM world_countries WHERE iso_code_2 = 'SY'), '0000'), -- As-Suwayda Governorate Capital
('Tartus', (SELECT id FROM world_countries WHERE iso_code_2 = 'SY'), '0000'), -- Tartus Governorate Capital (Port city)
('Quneitra', (SELECT id FROM world_countries WHERE iso_code_2 = 'SY'), '0000'), -- Quneitra Governorate Capital (Largely destroyed/abandoned, near Golan Heights)

-- Other Significant Towns (Sample)
('Douma', (SELECT id FROM world_countries WHERE iso_code_2 = 'SY'), '0000'), -- Suburb of Damascus (Rif Dimashq Governorate)
('Manbij', (SELECT id FROM world_countries WHERE iso_code_2 = 'SY'), '0000'), -- Town in Aleppo Governorate
('Al-Bab', (SELECT id FROM world_countries WHERE iso_code_2 = 'SY'), '0000'), -- Town in Aleppo Governorate
('Maarat al-Numan', (SELECT id FROM world_countries WHERE iso_code_2 = 'SY'), '0000'), -- Town in Idlib Governorate
('Palmyra (Tadmur)', (SELECT id FROM world_countries WHERE iso_code_2 = 'SY'), '0000'), -- Town near ancient ruins (Homs Governorate)
('Salamiyah', (SELECT id FROM world_countries WHERE iso_code_2 = 'SY'), '0000'), -- Town in Hama Governorate
('Safita', (SELECT id FROM world_countries WHERE iso_code_2 = 'SY'), '0000'), -- Town in Tartus Governorate
('Jableh', (SELECT id FROM world_countries WHERE iso_code_2 = 'SY'), '0000'); -- Coastal town in Latakia Governorate

-- End of Syria city list (Representative Sample)

/*
-- =============================================
-- ==    Información sobre Siria             ==
-- =============================================
--
-- Descripción General:
-- Siria (سوريا), oficialmente la República Árabe Siria, es un país ubicado en Asia
-- Occidental (Oriente Medio), en la costa oriental del Mar Mediterráneo. Limita con
-- Líbano al suroeste, Israel al suroeste (Altos del Golán, ocupados por Israel),
-- Jordania al sur, Irak al este y Turquía al norte. Su geografía incluye llanuras
-- fértiles, altas montañas y desiertos. Es hogar de diversos grupos étnicos y
-- religiosos. Damasco, su capital, es una de las ciudades habitadas continuamente
-- más antiguas del mundo.
--
-- Ciudades Principales:
-- * Damasco (Dimashq): La capital y una de las ciudades más antiguas del mundo.
--   Centro político y cultural.
-- * Alepo (Halab): Históricamente la ciudad más grande y centro comercial e industrial
--   importante, severamente afectada por la guerra civil.
-- * Homs: Tercera ciudad más grande, ubicada estratégicamente en el centro del país.
-- * Latakia (Al-Ladhiqiyah): Principal puerto marítimo en la costa mediterránea.
-- * Hama: Conocida por sus históricas norias (ruedas hidráulicas) en el río Orontes.
-- * Raqqa, Deir ez-Zor, Al-Hasakah, Idlib, Daraa, As-Suwayda, Tartus, Quneitra:
--   Capitales de las gobernaciones (provincias) del país.
--
-- Un Poco de Historia:
-- Siria tiene una historia milenaria, siendo cuna de antiguas civilizaciones (Ebla,
-- Ugarit) y parte de numerosos imperios (egipcio, hitita, asirio, babilónico,
-- persa, macedonio, romano, bizantino). Fue un centro importante del cristianismo
-- primitivo y luego del Islam tras la conquista árabe en el siglo VII (Damasco fue
-- capital del Califato Omeya). Formó parte del Imperio Otomano durante siglos.
-- Tras la Primera Guerra Mundial, quedó bajo mandato francés. Obtuvo la independencia
-- en 1946. La historia post-independencia incluye inestabilidad política, golpes de
-- estado, la unión con Egipto (República Árabe Unida, 1958-61) y el ascenso al poder
-- del partido Baaz en 1963, seguido por la familia Assad desde 1970 (Hafez al-Assad
-- y luego su hijo Bashar al-Assad). Desde 2011, el país ha sufrido una devastadora
-- guerra civil con intervención internacional, resultando en una grave crisis
-- humanitaria y destrucción masiva.
--
-- Datos Adicionales:
-- El árabe es el idioma oficial. El kurdo, armenio, arameo y circasiano también son
-- hablados por minorías. La mayoría de la población es musulmana (principalmente
-- sunitas, con minorías alauitas, chiitas, drusos e ismaelitas), con una significativa
-- minoría cristiana de diversas denominaciones. Siria posee un rico patrimonio
-- cultural y arqueológico (Palmira, Crac de los Caballeros, ciudades antiguas de
-- Damasco, Alepo y Bosra), aunque muchos sitios han sido dañados o destruidos
-- durante la guerra. La economía, antes basada en agricultura, petróleo e industria,
-- ha sido severamente afectada por el conflicto.
--
*/
