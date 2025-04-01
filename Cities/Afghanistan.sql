-- SQL Script to insert a comprehensive list of significant cities and towns for Afghanistan.
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Afghanistan (AF).

-- NOTE: This list aims for major population centers and provincial capitals
-- but is NOT exhaustive of every single village or settlement.
-- Postal codes are included where commonly known; coverage is limited in Afghanistan.

-- Inserting cities for Afghanistan (AF) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
('Kabul', (SELECT id FROM world_countries WHERE iso_code_2 = 'AF'), '1001'), -- Capital
('Herat', (SELECT id FROM world_countries WHERE iso_code_2 = 'AF'), '3001'), -- Provincial Capital
('Kandahar', (SELECT id FROM world_countries WHERE iso_code_2 = 'AF'), '3801'), -- Provincial Capital
('Mazar-i-Sharif', (SELECT id FROM world_countries WHERE iso_code_2 = 'AF'), '1701'), -- Provincial Capital
('Jalalabad', (SELECT id FROM world_countries WHERE iso_code_2 = 'AF'), '2601'), -- Provincial Capital
('Kunduz', (SELECT id FROM world_countries WHERE iso_code_2 = 'AF'), '2101'), -- Provincial Capital
('Ghazni', (SELECT id FROM world_countries WHERE iso_code_2 = 'AF'), '2801'), -- Provincial Capital
('Lashkargah', (SELECT id FROM world_countries WHERE iso_code_2 = 'AF'), '4101'), -- Provincial Capital (Helmand)
('Taloqan', (SELECT id FROM world_countries WHERE iso_code_2 = 'AF'), '2401'), -- Provincial Capital (Takhar)
('Puli Khumri', (SELECT id FROM world_countries WHERE iso_code_2 = 'AF'), '1601'), -- Provincial Capital (Baghlan)
('Khost', (SELECT id FROM world_countries WHERE iso_code_2 = 'AF'), '3301'), -- Provincial Capital
('Charikar', (SELECT id FROM world_countries WHERE iso_code_2 = 'AF'), '1101'), -- Provincial Capital (Parwan)
('Sheberghan', (SELECT id FROM world_countries WHERE iso_code_2 = 'AF'), '1801'), -- Provincial Capital (Jowzjan)
('Faizabad', (SELECT id FROM world_countries WHERE iso_code_2 = 'AF'), '2201'), -- Provincial Capital (Badakhshan)
('Gardez', (SELECT id FROM world_countries WHERE iso_code_2 = 'AF'), '2901'), -- Provincial Capital (Paktia)
('Bamyan', (SELECT id FROM world_countries WHERE iso_code_2 = 'AF'), '1401'), -- Provincial Capital
('Chaghcharan', (SELECT id FROM world_countries WHERE iso_code_2 = 'AF'), '3601'), -- Provincial Capital (Ghor) - Also known as Firozkoh
('Asadabad', (SELECT id FROM world_countries WHERE iso_code_2 = 'AF'), '2501'), -- Provincial Capital (Kunar)
('Maidan Shar', (SELECT id FROM world_countries WHERE iso_code_2 = 'AF'), '1301'), -- Provincial Capital (Wardak)
('Aybak', (SELECT id FROM world_countries WHERE iso_code_2 = 'AF'), '1901'), -- Provincial Capital (Samangan)
('Qalat', (SELECT id FROM world_countries WHERE iso_code_2 = 'AF'), '4001'), -- Provincial Capital (Zabul)
('Tarinkot', (SELECT id FROM world_countries WHERE iso_code_2 = 'AF'), '4201'), -- Provincial Capital (Uruzgan)
('Farah', (SELECT id FROM world_countries WHERE iso_code_2 = 'AF'), '3901'), -- Provincial Capital
('Pul-i-Alam', (SELECT id FROM world_countries WHERE iso_code_2 = 'AF'), '1201'), -- Provincial Capital (Logar)
('Mahmud-i-Raqi', (SELECT id FROM world_countries WHERE iso_code_2 = 'AF'), '1001'), -- Provincial Capital (Kapisa) - Note: Postal code might be same as Kabul region initially
('Mehtar Lam', (SELECT id FROM world_countries WHERE iso_code_2 = 'AF'), '2701'), -- Provincial Capital (Laghman)
('Nili', (SELECT id FROM world_countries WHERE iso_code_2 = 'AF'), '3701'), -- Provincial Capital (Daykundi)
('Parun', (SELECT id FROM world_countries WHERE iso_code_2 = 'AF'), '2301'), -- Provincial Capital (Nuristan)
('Sar-e Pol', (SELECT id FROM world_countries WHERE iso_code_2 = 'AF'), '2001'), -- Provincial Capital
('Zaranj', (SELECT id FROM world_countries WHERE iso_code_2 = 'AF'), '4301'), -- Provincial Capital (Nimruz)
('Qala-i-Naw', (SELECT id FROM world_countries WHERE iso_code_2 = 'AF'), '3401'), -- Provincial Capital (Badghis)
('Bazarak', (SELECT id FROM world_countries WHERE iso_code_2 = 'AF'), '1501'), -- Provincial Capital (Panjshir)
('Maymana', (SELECT id FROM world_countries WHERE iso_code_2 = 'AF'), '3501'), -- Provincial Capital (Faryab)
('Sharana', (SELECT id FROM world_countries WHERE iso_code_2 = 'AF'), '3101'), -- Provincial Capital (Paktika)
('Andkhoy', (SELECT id FROM world_countries WHERE iso_code_2 = 'AF'), NULL), -- Significant town in Faryab
('Shindand', (SELECT id FROM world_countries WHERE iso_code_2 = 'AF'), NULL), -- Significant town in Herat
('Baghlan', (SELECT id FROM world_countries WHERE iso_code_2 = 'AF'), NULL), -- Major town in Baghlan (distinct from Puli Khumri)
('Khan Abad', (SELECT id FROM world_countries WHERE iso_code_2 = 'AF'), NULL), -- Town in Kunduz
('Gereshk', (SELECT id FROM world_countries WHERE iso_code_2 = 'AF'), NULL), -- Town in Helmand
('Rustaq', (SELECT id FROM world_countries WHERE iso_code_2 = 'AF'), NULL), -- Town in Takhar
('Paghman', (SELECT id FROM world_countries WHERE iso_code_2 = 'AF'), NULL), -- Town near Kabul
('Baraki Barak', (SELECT id FROM world_countries WHERE iso_code_2 = 'AF'), NULL), -- Town in Logar
('Sang-e-Charak', (SELECT id FROM world_countries WHERE iso_code_2 = 'AF'), NULL), -- Town in Sar-e Pol
('Urgun', (SELECT id FROM world_countries WHERE iso_code_2 = 'AF'), NULL), -- Town in Paktika
('Ghormach', (SELECT id FROM world_countries WHERE iso_code_2 = 'AF'), NULL), -- Town in Badghis
('Spin Boldak', (SELECT id FROM world_countries WHERE iso_code_2 = 'AF'), NULL), -- Border town in Kandahar
('Aqcha', (SELECT id FROM world_countries WHERE iso_code_2 = 'AF'), NULL), -- Town in Jowzjan
('Panjab', (SELECT id FROM world_countries WHERE iso_code_2 = 'AF'), NULL), -- Town in Bamyan
('Ishkashim', (SELECT id FROM world_countries WHERE iso_code_2 = 'AF'), NULL), -- Town in Badakhshan
('Sangin', (SELECT id FROM world_countries WHERE iso_code_2 = 'AF'), NULL), -- Town in Helmand
('Dasht-e Archi', (SELECT id FROM world_countries WHERE iso_code_2 = 'AF'), NULL), -- Town in Kunduz
('Qarqin', (SELECT id FROM world_countries WHERE iso_code_2 = 'AF'), NULL); -- Town in Jowzjan

-- End of Afghanistan city list (Comprehensive Sample)
