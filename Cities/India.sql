-- SQL Script to insert a highly selective sample of major cities and state/UT capitals for India (IN).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains India (IN).

-- NOTE: India is immense in size and population with hundreds of thousands of localities.
-- This list includes only a very small fraction, focusing on the national capital, state/UT capitals,
-- major metropolitan cities, and some other very large cities. Listing every locality is ABSOLUTELY IMPOSSIBLE.
-- Postal codes (PIN) are 6 digits; examples or '000000' placeholder are provided.

-- Inserting cities for India (IN) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- National Capital & State/UT Capitals / Major Metros
('New Delhi', (SELECT id FROM world_countries WHERE iso_code_2 = 'IN'), '110001'), -- National Capital (within Delhi NCT)
('Mumbai', (SELECT id FROM world_countries WHERE iso_code_2 = 'IN'), '400001'), -- Maharashtra Capital, Largest city
('Bangalore (Bengaluru)', (SELECT id FROM world_countries WHERE iso_code_2 = 'IN'), '560001'), -- Karnataka Capital
('Kolkata (Calcutta)', (SELECT id FROM world_countries WHERE iso_code_2 = 'IN'), '700001'), -- West Bengal Capital
('Chennai (Madras)', (SELECT id FROM world_countries WHERE iso_code_2 = 'IN'), '600001'), -- Tamil Nadu Capital
('Hyderabad', (SELECT id FROM world_countries WHERE iso_code_2 = 'IN'), '500001'), -- Telangana Capital (& de jure Andhra Pradesh until 2024)
('Ahmedabad', (SELECT id FROM world_countries WHERE iso_code_2 = 'IN'), '380001'), -- Gujarat (Major city)
('Pune', (SELECT id FROM world_countries WHERE iso_code_2 = 'IN'), '411001'), -- Maharashtra (Major city)
('Surat', (SELECT id FROM world_countries WHERE iso_code_2 = 'IN'), '395003'), -- Gujarat (Major city)
('Jaipur', (SELECT id FROM world_countries WHERE iso_code_2 = 'IN'), '302001'), -- Rajasthan Capital
('Lucknow', (SELECT id FROM world_countries WHERE iso_code_2 = 'IN'), '226001'), -- Uttar Pradesh Capital
('Kanpur', (SELECT id FROM world_countries WHERE iso_code_2 = 'IN'), '208001'), -- Uttar Pradesh (Major city)
('Nagpur', (SELECT id FROM world_countries WHERE iso_code_2 = 'IN'), '440001'), -- Maharashtra (Winter capital)
('Visakhapatnam', (SELECT id FROM world_countries WHERE iso_code_2 = 'IN'), '530001'), -- Andhra Pradesh (Largest city, Executive capital proposed)
('Indore', (SELECT id FROM world_countries WHERE iso_code_2 = 'IN'), '452001'), -- Madhya Pradesh (Largest city)
('Thane', (SELECT id FROM world_countries WHERE iso_code_2 = 'IN'), '400601'), -- Maharashtra (Mumbai Metro)
('Bhopal', (SELECT id FROM world_countries WHERE iso_code_2 = 'IN'), '462001'), -- Madhya Pradesh Capital
('Patna', (SELECT id FROM world_countries WHERE iso_code_2 = 'IN'), '800001'), -- Bihar Capital
('Vadodara', (SELECT id FROM world_countries WHERE iso_code_2 = 'IN'), '390001'), -- Gujarat (Major city)
('Ghaziabad', (SELECT id FROM world_countries WHERE iso_code_2 = 'IN'), '201001'), -- Uttar Pradesh (Delhi NCR)
('Ludhiana', (SELECT id FROM world_countries WHERE iso_code_2 = 'IN'), '141001'), -- Punjab (Largest city)
('Agra', (SELECT id FROM world_countries WHERE iso_code_2 = 'IN'), '282001'), -- Uttar Pradesh (Taj Mahal)
('Nashik', (SELECT id FROM world_countries WHERE iso_code_2 = 'IN'), '422001'), -- Maharashtra
('Faridabad', (SELECT id FROM world_countries WHERE iso_code_2 = 'IN'), '121001'), -- Haryana (Delhi NCR)
('Meerut', (SELECT id FROM world_countries WHERE iso_code_2 = 'IN'), '250001'), -- Uttar Pradesh
('Rajkot', (SELECT id FROM world_countries WHERE iso_code_2 = 'IN'), '360001'), -- Gujarat
('Varanasi', (SELECT id FROM world_countries WHERE iso_code_2 = 'IN'), '221001'), -- Uttar Pradesh (Holy city)
('Srinagar', (SELECT id FROM world_countries WHERE iso_code_2 = 'IN'), '190001'), -- Jammu & Kashmir UT (Summer Capital)
('Jammu', (SELECT id FROM world_countries WHERE iso_code_2 = 'IN'), '180001'), -- Jammu & Kashmir UT (Winter Capital)
('Amritsar', (SELECT id FROM world_countries WHERE iso_code_2 = 'IN'), '143001'), -- Punjab (Golden Temple)
('Allahabad (Prayagraj)', (SELECT id FROM world_countries WHERE iso_code_2 = 'IN'), '211001'), -- Uttar Pradesh
('Howrah', (SELECT id FROM world_countries WHERE iso_code_2 = 'IN'), '711101'), -- West Bengal (Kolkata Metro)
('Coimbatore', (SELECT id FROM world_countries WHERE iso_code_2 = 'IN'), '641001'), -- Tamil Nadu
('Jabalpur', (SELECT id FROM world_countries WHERE iso_code_2 = 'IN'), '482001'), -- Madhya Pradesh
('Gwalior', (SELECT id FROM world_countries WHERE iso_code_2 = 'IN'), '474001'), -- Madhya Pradesh
('Vijayawada', (SELECT id FROM world_countries WHERE iso_code_2 = 'IN'), '520001'), -- Andhra Pradesh
('Jodhpur', (SELECT id FROM world_countries WHERE iso_code_2 = 'IN'), '342001'), -- Rajasthan
('Madurai', (SELECT id FROM world_countries WHERE iso_code_2 = 'IN'), '625001'), -- Tamil Nadu
('Raipur', (SELECT id FROM world_countries WHERE iso_code_2 = 'IN'), '492001'), -- Chhattisgarh Capital
('Kota', (SELECT id FROM world_countries WHERE iso_code_2 = 'IN'), '324001'), -- Rajasthan
('Guwahati', (SELECT id FROM world_countries WHERE iso_code_2 = 'IN'), '781001'), -- Assam (Largest city)
('Chandigarh', (SELECT id FROM world_countries WHERE iso_code_2 = 'IN'), '160001'), -- Chandigarh UT Capital (also Punjab & Haryana capital)
('Solapur', (SELECT id FROM world_countries WHERE iso_code_2 = 'IN'), '413001'), -- Maharashtra
('Hubli-Dharwad', (SELECT id FROM world_countries WHERE iso_code_2 = 'IN'), '580020'), -- Karnataka
('Tiruchirappalli', (SELECT id FROM world_countries WHERE iso_code_2 = 'IN'), '620001'), -- Tamil Nadu
('Bareilly', (SELECT id FROM world_countries WHERE iso_code_2 = 'IN'), '243001'), -- Uttar Pradesh
('Mysore (Mysuru)', (SELECT id FROM world_countries WHERE iso_code_2 = 'IN'), '570001'), -- Karnataka
('Tiruppur', (SELECT id FROM world_countries WHERE iso_code_2 = 'IN'), '641601'), -- Tamil Nadu
('Gurgaon (Gurugram)', (SELECT id FROM world_countries WHERE iso_code_2 = 'IN'), '122001'), -- Haryana (Delhi NCR)
('Aligarh', (SELECT id FROM world_countries WHERE iso_code_2 = 'IN'), '202001'), -- Uttar Pradesh
('Jalandhar', (SELECT id FROM world_countries WHERE iso_code_2 = 'IN'), '144001'), -- Punjab
('Bhubaneswar', (SELECT id FROM world_countries WHERE iso_code_2 = 'IN'), '751001'), -- Odisha Capital
('Salem', (SELECT id FROM world_countries WHERE iso_code_2 = 'IN'), '636001'), -- Tamil Nadu
('Warangal', (SELECT id FROM world_countries WHERE iso_code_2 = 'IN'), '506002'), -- Telangana
('Thiruvananthapuram', (SELECT id FROM world_countries WHERE iso_code_2 = 'IN'), '695001'), -- Kerala Capital
('Dehradun', (SELECT id FROM world_countries WHERE iso_code_2 = 'IN'), '248001'), -- Uttarakhand Capital (Winter)
('Gairsain', (SELECT id FROM world_countries WHERE iso_code_2 = 'IN'), '246428'), -- Uttarakhand Capital (Summer)
('Ranchi', (SELECT id FROM world_countries WHERE iso_code_2 = 'IN'), '834001'), -- Jharkhand Capital
('Shimla', (SELECT id FROM world_countries WHERE iso_code_2 = 'IN'), '171001'), -- Himachal Pradesh Capital
('Dispur', (SELECT id FROM world_countries WHERE iso_code_2 = 'IN'), '781006'), -- Assam Capital (Suburb of Guwahati)
('Gandhinagar', (SELECT id FROM world_countries WHERE iso_code_2 = 'IN'), '382010'), -- Gujarat Capital
('Itanagar', (SELECT id FROM world_countries WHERE iso_code_2 = 'IN'), '791111'), -- Arunachal Pradesh Capital
('Aizawl', (SELECT id FROM world_countries WHERE iso_code_2 = 'IN'), '796001'), -- Mizoram Capital
('Imphal', (SELECT id FROM world_countries WHERE iso_code_2 = 'IN'), '795001'), -- Manipur Capital
('Shillong', (SELECT id FROM world_countries WHERE iso_code_2 = 'IN'), '793001'), -- Meghalaya Capital
('Kohima', (SELECT id FROM world_countries WHERE iso_code_2 = 'IN'), '797001'), -- Nagaland Capital
('Agartala', (SELECT id FROM world_countries WHERE iso_code_2 = 'IN'), '799001'), -- Tripura Capital
('Gangtok', (SELECT id FROM world_countries WHERE iso_code_2 = 'IN'), '737101'), -- Sikkim Capital
('Panaji (Panjim)', (SELECT id FROM world_countries WHERE iso_code_2 = 'IN'), '403001'), -- Goa Capital
('Puducherry (Pondicherry)', (SELECT id FROM world_countries WHERE iso_code_2 = 'IN'), '605001'), -- Puducherry UT Capital
('Silvassa', (SELECT id FROM world_countries WHERE iso_code_2 = 'IN'), '396230'), -- Dadra & Nagar Haveli and Daman & Diu UT Capital
-- ('Daman', (SELECT id FROM world_countries WHERE iso_code_2 = 'IN'), '396210'), -- Daman is also considered a capital for D&N H and D&D
('Kavaratti', (SELECT id FROM world_countries WHERE iso_code_2 = 'IN'), '682555'), -- Lakshadweep UT Capital
('Port Blair', (SELECT id FROM world_countries WHERE iso_code_2 = 'IN'), '744101'), -- Andaman & Nicobar Islands UT Capital
('Leh', (SELECT id FROM world_countries WHERE iso_code_2 = 'IN'), '194101'), -- Ladakh UT Capital
('Kargil', (SELECT id FROM world_countries WHERE iso_code_2 = 'IN'), '194103'); -- Ladakh UT (Major town)

-- End of India city list (Highly Selective Sample)

/*
-- ====================================
-- == Información sobre India ==
-- ====================================
--
-- Descripción General:
-- La República de la India es un país ubicado en el sur de Asia. Es el séptimo país
-- más grande por área y el segundo más poblado del mundo (y la democracia más
-- poblada). Limita con el Océano Índico al sur, el Mar Arábigo al suroeste y la
-- Bahía de Bengala al sureste. Comparte fronteras terrestres con Pakistán al oeste;
-- China, Nepal y Bután al norte; y Bangladesh y Myanmar al este. Su geografía es
-- extremadamente diversa, incluyendo la cordillera del Himalaya al norte, la llanura
-- indogangética, la meseta del Decán en el sur, desiertos y largas costas. Es una
-- república federal parlamentaria.
--
-- Ciudades Principales:
-- * Nueva Delhi (New Delhi): La capital nacional, ubicada dentro del Territorio de
--   la Capital Nacional de Delhi.
-- * Mumbai (antes Bombay): La capital financiera y ciudad más poblada, centro de la
--   industria cinematográfica (Bollywood).
-- * Bangalore (Bengaluru): Conocida como el "Silicon Valley de la India", centro de
--   alta tecnología.
-- * Kolkata (antes Calcuta): Capital cultural, ubicada en el este.
-- * Chennai (antes Madrás): Importante centro cultural, económico y educativo en el sur.
-- * Hyderabad: Centro de tecnología y cultura en el Decán.
-- * Ahmedabad, Pune, Surat, Jaipur, Lucknow, Kanpur, Nagpur: Otras megaciudades y
--   centros industriales/comerciales.
-- * La lista incluye también las capitales de todos los estados y territorios de la
--   unión, y una selección de otras ciudades muy grandes.
--
-- Un Poco de Historia:
-- India es cuna de la civilización del valle del Indo y una región de rutas comerciales
-- históricas e vastos imperios. Cuatro religiones principales (hinduismo, budismo,
-- jainismo y sijismo) se originaron aquí. Fue gradualmente anexada por la Compañía
-- Británica de las Indias Orientales desde principios del siglo XVIII y colonizada
-- directamente por el Reino Unido desde mediados del siglo XIX (Raj Británico).
-- India se independizó en 1947 tras un movimiento de independencia no violento
-- liderado por Mahatma Gandhi. La independencia estuvo acompañada por la partición
-- del subcontinente en India y Pakistán, lo que provocó violencia sectaria masiva
-- y desplazamientos. Desde la independencia, India ha mantenido una democracia
-- federal y ha logrado un progreso económico y militar significativo, aunque sigue
-- enfrentando desafíos como la pobreza, la desigualdad, la corrupción y los
-- conflictos regionales.
--
-- Datos Adicionales:
-- India es una sociedad extremadamente diversa en términos de etnia, idioma (cientos
-- de lenguas, con hindi e inglés como idiomas oficiales principales del gobierno
-- central), cultura y religión (predominantemente hindú, pero con importantes
-- minorías musulmana, cristiana, sij, budista, etc.). Es famosa por el Taj Mahal,
-- su variada gastronomía, el yoga, Bollywood y su creciente sector tecnológico.
-- Es una potencia nuclear y espacial.
--
*/
