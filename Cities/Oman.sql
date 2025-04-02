-- SQL Script to insert a representative sample of significant cities and towns for Oman (OM).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Oman (OM).

-- NOTE: Oman has governorates and wilayats with numerous settlements. This list includes the capital,
-- governorate/wilayat centers, and significant towns. Listing every single village is IMPOSSIBLE.
-- Postal codes are 3 digits; examples or '000' placeholder are provided.

-- Inserting cities for Oman (OM) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Governorate Capitals / Major Wilayat Centers / Major Cities
('Muscat (Masqat)', (SELECT id FROM world_countries WHERE iso_code_2 = 'OM'), '100'), -- National Capital (Muscat Governorate)
('Salalah', (SELECT id FROM world_countries WHERE iso_code_2 = 'OM'), '211'), -- Dhofar Governorate Capital
('Sohar', (SELECT id FROM world_countries WHERE iso_code_2 = 'OM'), '311'), -- North Al Batinah Governorate Capital
('Nizwa', (SELECT id FROM world_countries WHERE iso_code_2 = 'OM'), '611'), -- Ad Dakhiliyah Governorate (Major historical city)
('Sur', (SELECT id FROM world_countries WHERE iso_code_2 = 'OM'), '411'), -- South Ash Sharqiyah Governorate Capital
('Ibri', (SELECT id FROM world_countries WHERE iso_code_2 = 'OM'), '511'), -- Ad Dhahirah Governorate Capital
('Rustaq', (SELECT id FROM world_countries WHERE iso_code_2 = 'OM'), '329'), -- South Al Batinah Governorate Capital
('Buraimi', (SELECT id FROM world_countries WHERE iso_code_2 = 'OM'), '512'), -- Al Buraimi Governorate Capital
('Khasab', (SELECT id FROM world_countries WHERE iso_code_2 = 'OM'), '811'), -- Musandam Governorate Capital
('Ibra', (SELECT id FROM world_countries WHERE iso_code_2 = 'OM'), '400'), -- North Ash Sharqiyah Governorate Capital
('Haima', (SELECT id FROM world_countries WHERE iso_code_2 = 'OM'), '711'), -- Al Wusta Governorate Capital

-- Other Significant Towns (Sample)
('Seeb', (SELECT id FROM world_countries WHERE iso_code_2 = 'OM'), '121'), -- Muscat Governorate (Large town near Muscat)
('Bawshar (Bausher)', (SELECT id FROM world_countries WHERE iso_code_2 = 'OM'), '130'), -- Muscat Governorate (Part of Muscat metro)
('Saham', (SELECT id FROM world_countries WHERE iso_code_2 = 'OM'), '317'), -- North Al Batinah Governorate
('Barka', (SELECT id FROM world_countries WHERE iso_code_2 = 'OM'), '320'), -- South Al Batinah Governorate
('Shinas', (SELECT id FROM world_countries WHERE iso_code_2 = 'OM'), '324'), -- North Al Batinah Governorate
('Suwayq (As Suwayq)', (SELECT id FROM world_countries WHERE iso_code_2 = 'OM'), '315'), -- North Al Batinah Governorate
('Bahla', (SELECT id FROM world_countries WHERE iso_code_2 = 'OM'), '613'), -- Ad Dakhiliyah Governorate (UNESCO site - fort)
('Samail', (SELECT id FROM world_countries WHERE iso_code_2 = 'OM'), '621'), -- Ad Dakhiliyah Governorate
('Adam', (SELECT id FROM world_countries WHERE iso_code_2 = 'OM'), '612'), -- Ad Dakhiliyah Governorate
('Qurayyat', (SELECT id FROM world_countries WHERE iso_code_2 = 'OM'), '117'), -- Muscat Governorate (Coastal town)
('Bidbid', (SELECT id FROM world_countries WHERE iso_code_2 = 'OM'), '620'), -- Ad Dakhiliyah Governorate
('Izki', (SELECT id FROM world_countries WHERE iso_code_2 = 'OM'), '615'), -- Ad Dakhiliyah Governorate
('Al Khaburah', (SELECT id FROM world_countries WHERE iso_code_2 = 'OM'), '326'), -- North Al Batinah Governorate
('Liwa', (SELECT id FROM world_countries WHERE iso_code_2 = 'OM'), '327'), -- North Al Batinah Governorate
('Jalan Bani Bu Ali', (SELECT id FROM world_countries WHERE iso_code_2 = 'OM'), '414'), -- South Ash Sharqiyah Governorate
('Duqm', (SELECT id FROM world_countries WHERE iso_code_2 = 'OM'), '712'); -- Al Wusta Governorate (Developing port/economic zone)

-- End of Oman city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Oman ==
-- ====================================
--
-- Descripción General:
-- El Sultanato de Omán es un país ubicado en el extremo sureste de la Península
-- Arábiga, en Asia Occidental (Oriente Medio). Limita con los Emiratos Árabes Unidos
-- al noroeste, Arabia Saudita al oeste y Yemen al suroeste. Tiene una larga costa
-- en el Mar Arábigo al sur y este, y en el Golfo de Omán al noreste. También incluye
-- los exclaves de Madha y Musandam (separado por territorio emiratí, controla el
-- estratégico Estrecho de Ormuz junto con Irán). Su geografía incluye una llanura
-- costera, cadenas montañosas (Montañas Al Hajar) y un vasto interior desértico.
-- Es un sultanato absoluto.
--
-- Ciudades Principales:
-- * Mascate (Muscat): La capital y ciudad más grande, ubicada en la costa del Golfo
--   de Omán. Es el centro político y económico.
-- * Salalah: La segunda ciudad más grande, capital de la gobernación sureña de Dhofar,
--   conocida por su clima monzónico (khareef).
-- * Sohar: Importante ciudad industrial y portuaria en la costa norte de Al Batinah.
-- * Nizwa: Antigua capital y centro histórico y cultural en el interior, al pie de
--   las montañas Al Hajar.
-- * Sur: Ciudad costera en el este, históricamente famosa por la construcción de barcos (dhows).
-- * Ibri, Rustaq, Buraimi, Khasab (en el exclave de Musandam), Ibra, Haima: Capitales
--   de las demás gobernaciones (muhafazat) o centros importantes.
-- * Seeb y Bawshar: Grandes suburbios/ciudades dentro del área metropolitana de Mascate.
-- * La lista incluye también otros pueblos significativos.
--
-- Un Poco de Historia:
-- La región tiene una historia antigua como centro de comercio marítimo (posiblemente
-- el Magan sumerio). Fue uno de los primeros lugares en adoptar el Islam. Omán
-- desarrolló una forma particular del Islam, el ibadismo, que sigue siendo dominante.
-- Estableció un imperio marítimo importante entre los siglos XVII y XIX, que controlaba
-- Zanzíbar y otras posesiones en África Oriental y el Océano Índico. Tuvo una estrecha
-- relación (y periodos de influencia) con Gran Bretaña, aunque nunca fue formalmente
-- una colonia. El largo reinado del Sultán Said bin Taimur (hasta 1970) se caracterizó
-- por el aislamiento. Su hijo, el Sultán Qaboos bin Said, lo depuso en 1970 e inició
-- un período de modernización y desarrollo radical impulsado por los ingresos del
-- petróleo, manteniendo al mismo tiempo la estabilidad política. Tras la muerte de
-- Qaboos en 2020, fue sucedido por su primo Haitham bin Tariq.
--
-- Datos Adicionales:
-- El árabe es el idioma oficial. El Islam (predominantemente ibadí) es la religión
-- del estado. Omán es conocido por sus paisajes naturales (wadis, montañas, desiertos,
-- costas), sus fuertes históricos (Nizwa, Bahla - Patrimonio de la Humanidad), el
-- incienso (originario de Dhofar) y los "fiordos" de Musandam. Ha mantenido una
-- política exterior relativamente neutral en la región.
--
*/
