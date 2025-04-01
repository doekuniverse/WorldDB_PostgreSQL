-- SQL Script to insert a representative sample of significant cities and towns for Tanzania (TZ).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Tanzania, United Republic of (TZ).

-- NOTE: Tanzania has numerous cities, towns, and villages across its mainland and islands (Zanzibar).
-- Listing every single settlement is impractical for this format. This list focuses on the official capital,
-- the largest city/commercial hub, regional capitals, and a sample of other significant towns.
-- Postal codes in Tanzania use a 5-digit format (NNNNN). Usage and data availability can be inconsistent; using '00000' as a placeholder.

-- Inserting cities for Tanzania (TZ) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Official Capital & Major City/Commercial Hub
('Dodoma', (SELECT id FROM world_countries WHERE iso_code_2 = 'TZ'), '41100'), -- Official National Capital (Dodoma Region Capital)
('Dar es Salaam', (SELECT id FROM world_countries WHERE iso_code_2 = 'TZ'), '11000'), -- Largest City, Main Commercial Hub, Former Capital (Dar es Salaam Region Capital)

-- Major Cities / Regional Capitals (Sample)
('Mwanza', (SELECT id FROM world_countries WHERE iso_code_2 = 'TZ'), '33100'), -- Major City on Lake Victoria (Mwanza Region Capital)
('Arusha', (SELECT id FROM world_countries WHERE iso_code_2 = 'TZ'), '23100'), -- Major City / Safari Hub (Arusha Region Capital)
('Mbeya', (SELECT id FROM world_countries WHERE iso_code_2 = 'TZ'), '53100'), -- Major City in Southern Highlands (Mbeya Region Capital)
('Zanzibar City', (SELECT id FROM world_countries WHERE iso_code_2 = 'TZ'), '71100'), -- Largest City in Zanzibar Archipelago (Mjini Magharibi Region Capital) - Includes Stone Town
('Morogoro', (SELECT id FROM world_countries WHERE iso_code_2 = 'TZ'), '67100'), -- Major City / Agricultural Center (Morogoro Region Capital)
('Tanga', (SELECT id FROM world_countries WHERE iso_code_2 = 'TZ'), '21100'), -- Major Port City on North Coast (Tanga Region Capital)
('Kahama', (SELECT id FROM world_countries WHERE iso_code_2 = 'TZ'), '37100'), -- Significant Town (Shinyanga Region)
('Tabora', (SELECT id FROM world_countries WHERE iso_code_2 = 'TZ'), '45100'), -- Historic Town / Central Hub (Tabora Region Capital)
('Kigoma', (SELECT id FROM world_countries WHERE iso_code_2 = 'TZ'), '47100'), -- Port City on Lake Tanganyika (Kigoma Region Capital)
('Sumbawanga', (SELECT id FROM world_countries WHERE iso_code_2 = 'TZ'), '55100'), -- Town in Western Tanzania (Rukwa Region Capital)
('Songea', (SELECT id FROM world_countries WHERE iso_code_2 = 'TZ'), '57100'), -- Town in Southern Tanzania (Ruvuma Region Capital)
('Moshi', (SELECT id FROM world_countries WHERE iso_code_2 = 'TZ'), '25100'), -- Town near Mount Kilimanjaro (Kilimanjaro Region Capital)
('Musoma', (SELECT id FROM world_countries WHERE iso_code_2 = 'TZ'), '31100'), -- Town on Lake Victoria (Mara Region Capital)
('Iringa', (SELECT id FROM world_countries WHERE iso_code_2 = 'TZ'), '51100'), -- Town in Southern Highlands (Iringa Region Capital)
('Shinyanga', (SELECT id FROM world_countries WHERE iso_code_2 = 'TZ'), '37100'), -- Town / Mining Area (Shinyanga Region Capital)
('Singida', (SELECT id FROM world_countries WHERE iso_code_2 = 'TZ'), '43100'), -- Town in Central Tanzania (Singida Region Capital)
('Bukoba', (SELECT id FROM world_countries WHERE iso_code_2 = 'TZ'), '35100'), -- Port Town on Lake Victoria (Kagera Region Capital)
('Lindi', (SELECT id FROM world_countries WHERE iso_code_2 = 'TZ'), '65100'), -- Coastal Town (Lindi Region Capital)
('Mtwara', (SELECT id FROM world_countries WHERE iso_code_2 = 'TZ'), '63100'); -- Southern Port Town (Mtwara Region Capital)


-- End of Tanzania city list (Representative Sample)

/*
-- =============================================
-- ==    Información sobre Tanzania          ==
-- =============================================
--
-- Descripción General:
-- Tanzania, oficialmente la República Unida de Tanzania, es un país ubicado en
-- África Oriental, dentro de la región de los Grandes Lagos Africanos. Limita con
-- Kenia y Uganda al norte; Ruanda, Burundi y la República Democrática del Congo al
-- oeste; y Zambia, Malaui y Mozambique al sur. Al este, limita con el Océano Índico.
-- El país incluye el archipiélago semiautónomo de Zanzíbar. Tanzania es conocida por
-- su vasta naturaleza salvaje, que incluye las llanuras del Parque Nacional Serengueti,
-- el Parque Nacional Kilimanjaro (hogar de la montaña más alta de África) y el Área
-- de Conservación de Ngorongoro.
--
-- Ciudades Principales:
-- * Dodoma: La capital oficial del país, ubicada en el centro de Tanzania.
-- * Dar es Salaam: La ciudad más grande, principal centro comercial, industrial y
--   puerto marítimo. Fue la capital hasta 1996.
-- * Mwanza: Importante ciudad portuaria en la orilla sur del Lago Victoria.
-- * Arusha: Centro diplomático y puerta de entrada al circuito de safaris del norte.
-- * Mbeya: Ciudad principal en las tierras altas del sur.
-- * Zanzibar City: La ciudad más grande del archipiélago de Zanzíbar, cuyo centro
--   histórico, Stone Town (Mji Mkongwe), es Patrimonio de la Humanidad por la UNESCO.
-- * Morogoro, Tanga: Otras ciudades importantes en el continente.
--
-- Un Poco de Historia:
-- El territorio continental (Tanganyika) tiene una larga historia de habitación humana
-- y fue parte de rutas comerciales. Fue colonizado por Alemania (África Oriental
-- Alemana) a finales del siglo XIX y luego pasó a mandato británico tras la Primera
-- Guerra Mundial. Obtuvo la independencia en 1961. El archipiélago de Zanzíbar fue
-- un importante centro comercial (especias, esclavos) bajo influencia árabe (Sultanato
-- de Omán/Zanzíbar) y luego protectorado británico. Zanzíbar obtuvo la independencia
-- en 1963 y experimentó una revolución poco después. En 1964, Tanganyika y Zanzíbar
-- se unieron para formar la República Unida de Tanzania, bajo el liderazgo de Julius
-- Nyerere, quien implementó políticas socialistas (Ujamaa). El país transitó a un
-- sistema multipartidista en 1992.
--
-- Datos Adicionales:
-- El suajili (Swahili) y el inglés son los idiomas oficiales, aunque se hablan muchas
-- lenguas locales. La población es étnicamente diversa, con más de 120 grupos
-- diferentes. Las religiones principales son el cristianismo y el islam, con minorías
-- que practican religiones tradicionales africanas. La economía se basa en la
-- agricultura (café, algodón, té, anacardos, especias en Zanzíbar), el turismo
-- (safaris, playas de Zanzíbar) y la minería. Tanzania es miembro de la Mancomunidad
-- de Naciones, la Unión Africana y la Comunidad Africana Oriental.
--
*/
