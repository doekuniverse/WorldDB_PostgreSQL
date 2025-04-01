-- SQL Script to create and populate the world_countries table for PostgreSQL/Supabase
-- Now includes the primary IANA timezone for each country.

-- Drop the table if it already exists (optional, use with caution)
-- DROP TABLE IF EXISTS public.world_countries;

-- Create the world_countries table
CREATE TABLE public.world_countries (
    id SERIAL PRIMARY KEY, -- <<< ESTO CREA UN ID NUMÉRICO automático (1, 2, 3...) para cada país.
    name VARCHAR(100) NOT NULL UNIQUE, -- Common name of the country
    iso_code_2 CHAR(2) NOT NULL UNIQUE, -- ISO 3166-1 alpha-2 code
    iso_code_3 CHAR(3) NOT NULL UNIQUE, -- ISO 3166-1 alpha-3 code
    region VARCHAR(50), -- Continent or main region
    subregion VARCHAR(50), -- Sub-region
    iana_timezone VARCHAR(64) NULL, -- Primary IANA timezone name (e.g., 'America/Santiago', 'Europe/London'). NULL if not applicable or multiple complex zones.
    created_at TIMESTAMPTZ DEFAULT NOW() NOT NULL, -- Timestamp when the record was created
    updated_at TIMESTAMPTZ DEFAULT NOW() NOT NULL -- Timestamp when the record was last updated
);

-- Add comments to the table and columns for clarity
COMMENT ON TABLE public.world_countries IS 'Table containing countries of the world with their ISO codes, regions, and primary IANA timezone.';
COMMENT ON COLUMN public.world_countries.id IS 'Unique numeric identifier (auto-incrementing integer) for the country (Serial PK).';
COMMENT ON COLUMN public.world_countries.name IS 'Common name of the country.';
COMMENT ON COLUMN public.world_countries.iso_code_2 IS 'ISO 3166-1 alpha-2 two-letter country code.';
COMMENT ON COLUMN public.world_countries.iso_code_3 IS 'ISO 3166-1 alpha-3 three-letter country code.';
COMMENT ON COLUMN public.world_countries.region IS 'Geographical region (e.g., Continent).';
COMMENT ON COLUMN public.world_countries.subregion IS 'Geographical sub-region.';
COMMENT ON COLUMN public.world_countries.iana_timezone IS 'Primary IANA timezone name for the country.';
COMMENT ON COLUMN public.world_countries.created_at IS 'Timestamp of creation.';
COMMENT ON COLUMN public.world_countries.updated_at IS 'Timestamp of last update.';

-- Optional: Create a trigger function to automatically update the updated_at timestamp
-- Supabase often handles this automatically if using its interface, but this is standard PostgreSQL practice.
CREATE OR REPLACE FUNCTION update_updated_at_column()
RETURNS TRIGGER AS $$
BEGIN
   NEW.updated_at = NOW();
   RETURN NEW;
END;
$$ language 'plpgsql';

CREATE TRIGGER update_world_countries_updated_at
BEFORE UPDATE ON public.world_countries
FOR EACH ROW
EXECUTE FUNCTION update_updated_at_column();

-- Insert data for countries including IANA timezone
-- (Data source: ISO 3166-1, UN M49 regions, IANA Time Zone Database - primary/capital timezone used for multi-zone countries)
-- The numeric ID column is automatically populated by the SERIAL definition
INSERT INTO public.world_countries (name, iso_code_2, iso_code_3, region, subregion, iana_timezone) VALUES
('Afghanistan', 'AF', 'AFG', 'Asia', 'Southern Asia', 'Asia/Kabul'),
('Åland Islands', 'AX', 'ALA', 'Europe', 'Northern Europe', 'Europe/Mariehamn'),
('Albania', 'AL', 'ALB', 'Europe', 'Southern Europe', 'Europe/Tirane'),
('Algeria', 'DZ', 'DZA', 'Africa', 'Northern Africa', 'Africa/Algiers'),
('American Samoa', 'AS', 'ASM', 'Oceania', 'Polynesia', 'Pacific/Pago_Pago'),
('Andorra', 'AD', 'AND', 'Europe', 'Southern Europe', 'Europe/Andorra'),
('Angola', 'AO', 'AGO', 'Africa', 'Middle Africa', 'Africa/Luanda'),
('Anguilla', 'AI', 'AIA', 'Americas', 'Caribbean', 'America/Anguilla'),
('Antarctica', 'AQ', 'ATA', 'Antarctica', '', NULL), -- Multiple timezones, complex
('Antigua and Barbuda', 'AG', 'ATG', 'Americas', 'Caribbean', 'America/Antigua'),
('Argentina', 'AR', 'ARG', 'Americas', 'South America', 'America/Argentina/Buenos_Aires'), -- Multiple zones exist
('Armenia', 'AM', 'ARM', 'Asia', 'Western Asia', 'Asia/Yerevan'),
('Aruba', 'AW', 'ABW', 'Americas', 'Caribbean', 'America/Aruba'),
('Australia', 'AU', 'AUS', 'Oceania', 'Australia and New Zealand', 'Australia/Sydney'), -- Multiple zones exist
('Austria', 'AT', 'AUT', 'Europe', 'Western Europe', 'Europe/Vienna'),
('Azerbaijan', 'AZ', 'AZE', 'Asia', 'Western Asia', 'Asia/Baku'),
('Bahamas', 'BS', 'BHS', 'Americas', 'Caribbean', 'America/Nassau'),
('Bahrain', 'BH', 'BHR', 'Asia', 'Western Asia', 'Asia/Bahrain'),
('Bangladesh', 'BD', 'BGD', 'Asia', 'Southern Asia', 'Asia/Dhaka'),
('Barbados', 'BB', 'BRB', 'Americas', 'Caribbean', 'America/Barbados'),
('Belarus', 'BY', 'BLR', 'Europe', 'Eastern Europe', 'Europe/Minsk'),
('Belgium', 'BE', 'BEL', 'Europe', 'Western Europe', 'Europe/Brussels'),
('Belize', 'BZ', 'BLZ', 'Americas', 'Central America', 'America/Belize'),
('Benin', 'BJ', 'BEN', 'Africa', 'Western Africa', 'Africa/Porto-Novo'),
('Bermuda', 'BM', 'BMU', 'Americas', 'Northern America', 'Atlantic/Bermuda'),
('Bhutan', 'BT', 'BTN', 'Asia', 'Southern Asia', 'Asia/Thimphu'),
('Bolivia (Plurinational State of)', 'BO', 'BOL', 'Americas', 'South America', 'America/La_Paz'),
('Bonaire, Sint Eustatius and Saba', 'BQ', 'BES', 'Americas', 'Caribbean', 'America/Kralendijk'),
('Bosnia and Herzegovina', 'BA', 'BIH', 'Europe', 'Southern Europe', 'Europe/Sarajevo'),
('Botswana', 'BW', 'BWA', 'Africa', 'Southern Africa', 'Africa/Gaborone'),
('Bouvet Island', 'BV', 'BVT', 'Antarctica', '', NULL), -- Uninhabited
('Brazil', 'BR', 'BRA', 'Americas', 'South America', 'America/Sao_Paulo'), -- Multiple zones exist
('British Indian Ocean Territory', 'IO', 'IOT', 'Africa', 'Eastern Africa', 'Indian/Chagos'),
('Brunei Darussalam', 'BN', 'BRN', 'Asia', 'South-Eastern Asia', 'Asia/Brunei'),
('Bulgaria', 'BG', 'BGR', 'Europe', 'Eastern Europe', 'Europe/Sofia'),
('Burkina Faso', 'BF', 'BFA', 'Africa', 'Western Africa', 'Africa/Ouagadougou'),
('Burundi', 'BI', 'BDI', 'Africa', 'Eastern Africa', 'Africa/Bujumbura'),
('Cabo Verde', 'CV', 'CPV', 'Africa', 'Western Africa', 'Atlantic/Cape_Verde'),
('Cambodia', 'KH', 'KHM', 'Asia', 'South-Eastern Asia', 'Asia/Phnom_Penh'),
('Cameroon', 'CM', 'CMR', 'Africa', 'Middle Africa', 'Africa/Douala'),
('Canada', 'CA', 'CAN', 'Americas', 'Northern America', 'America/Toronto'), -- Multiple zones exist
('Cayman Islands', 'KY', 'CYM', 'Americas', 'Caribbean', 'America/Cayman'),
('Central African Republic', 'CF', 'CAF', 'Africa', 'Middle Africa', 'Africa/Bangui'),
('Chad', 'TD', 'TCD', 'Africa', 'Middle Africa', 'Africa/Ndjamena'),
('Chile', 'CL', 'CHL', 'Americas', 'South America', 'America/Santiago'), -- Includes Easter Island zone
('China', 'CN', 'CHN', 'Asia', 'Eastern Asia', 'Asia/Shanghai'), -- Officially one zone, geographically multiple
('Christmas Island', 'CX', 'CXR', 'Oceania', 'Australia and New Zealand', 'Indian/Christmas'),
('Cocos (Keeling) Islands', 'CC', 'CCK', 'Oceania', 'Australia and New Zealand', 'Indian/Cocos'),
('Colombia', 'CO', 'COL', 'Americas', 'South America', 'America/Bogota'),
('Comoros', 'KM', 'COM', 'Africa', 'Eastern Africa', 'Indian/Comoro'),
('Congo', 'CG', 'COG', 'Africa', 'Middle Africa', 'Africa/Brazzaville'),
('Congo (Democratic Republic of the)', 'CD', 'COD', 'Africa', 'Middle Africa', 'Africa/Kinshasa'), -- Multiple zones exist
('Cook Islands', 'CK', 'COK', 'Oceania', 'Polynesia', 'Pacific/Rarotonga'),
('Costa Rica', 'CR', 'CRI', 'Americas', 'Central America', 'America/Costa_Rica'),
('Côte d''Ivoire', 'CI', 'CIV', 'Africa', 'Western Africa', 'Africa/Abidjan'),
('Croatia', 'HR', 'HRV', 'Europe', 'Southern Europe', 'Europe/Zagreb'),
('Cuba', 'CU', 'CUB', 'Americas', 'Caribbean', 'America/Havana'),
('Curaçao', 'CW', 'CUW', 'Americas', 'Caribbean', 'America/Curacao'),
('Cyprus', 'CY', 'CYP', 'Asia', 'Western Asia', 'Asia/Nicosia'), -- Includes North Cyprus zone
('Czechia', 'CZ', 'CZE', 'Europe', 'Eastern Europe', 'Europe/Prague'),
('Denmark', 'DK', 'DNK', 'Europe', 'Northern Europe', 'Europe/Copenhagen'), -- Excludes Greenland, Faroe Islands
('Djibouti', 'DJ', 'DJI', 'Africa', 'Eastern Africa', 'Africa/Djibouti'),
('Dominica', 'DM', 'DMA', 'Americas', 'Caribbean', 'America/Dominica'),
('Dominican Republic', 'DO', 'DOM', 'Americas', 'Caribbean', 'America/Santo_Domingo'),
('Ecuador', 'EC', 'ECU', 'Americas', 'South America', 'America/Guayaquil'), -- Includes Galapagos zone
('Egypt', 'EG', 'EGY', 'Africa', 'Northern Africa', 'Africa/Cairo'),
('El Salvador', 'SV', 'SLV', 'Americas', 'Central America', 'America/El_Salvador'),
('Equatorial Guinea', 'GQ', 'GNQ', 'Africa', 'Middle Africa', 'Africa/Malabo'),
('Eritrea', 'ER', 'ERI', 'Africa', 'Eastern Africa', 'Africa/Asmara'),
('Estonia', 'EE', 'EST', 'Europe', 'Northern Europe', 'Europe/Tallinn'),
('Eswatini', 'SZ', 'SWZ', 'Africa', 'Southern Africa', 'Africa/Mbabane'),
('Ethiopia', 'ET', 'ETH', 'Africa', 'Eastern Africa', 'Africa/Addis_Ababa'),
('Falkland Islands (Malvinas)', 'FK', 'FLK', 'Americas', 'South America', 'Atlantic/Stanley'),
('Faroe Islands', 'FO', 'FRO', 'Europe', 'Northern Europe', 'Atlantic/Faroe'),
('Fiji', 'FJ', 'FJI', 'Oceania', 'Melanesia', 'Pacific/Fiji'),
('Finland', 'FI', 'FIN', 'Europe', 'Northern Europe', 'Europe/Helsinki'),
('France', 'FR', 'FRA', 'Europe', 'Western Europe', 'Europe/Paris'), -- Excludes overseas territories
('French Guiana', 'GF', 'GUF', 'Americas', 'South America', 'America/Cayenne'),
('French Polynesia', 'PF', 'PYF', 'Oceania', 'Polynesia', 'Pacific/Tahiti'), -- Multiple zones exist
('French Southern Territories', 'TF', 'ATF', 'Antarctica', '', 'Indian/Kerguelen'),
('Gabon', 'GA', 'GAB', 'Africa', 'Middle Africa', 'Africa/Libreville'),
('Gambia', 'GM', 'GMB', 'Africa', 'Western Africa', 'Africa/Banjul'),
('Georgia', 'GE', 'GEO', 'Asia', 'Western Asia', 'Asia/Tbilisi'),
('Germany', 'DE', 'DEU', 'Europe', 'Western Europe', 'Europe/Berlin'), -- Includes Busingen
('Ghana', 'GH', 'GHA', 'Africa', 'Western Africa', 'Africa/Accra'),
('Gibraltar', 'GI', 'GIB', 'Europe', 'Southern Europe', 'Europe/Gibraltar'),
('Greece', 'GR', 'GRC', 'Europe', 'Southern Europe', 'Europe/Athens'),
('Greenland', 'GL', 'GRL', 'Americas', 'Northern America', 'America/Godthab'), -- Multiple zones exist
('Grenada', 'GD', 'GRD', 'Americas', 'Caribbean', 'America/Grenada'),
('Guadeloupe', 'GP', 'GLP', 'Americas', 'Caribbean', 'America/Guadeloupe'),
('Guam', 'GU', 'GUM', 'Oceania', 'Micronesia', 'Pacific/Guam'),
('Guatemala', 'GT', 'GTM', 'Americas', 'Central America', 'America/Guatemala'),
('Guernsey', 'GG', 'GGY', 'Europe', 'Northern Europe', 'Europe/Guernsey'),
('Guinea', 'GN', 'GIN', 'Africa', 'Western Africa', 'Africa/Conakry'),
('Guinea-Bissau', 'GW', 'GNB', 'Africa', 'Western Africa', 'Africa/Bissau'),
('Guyana', 'GY', 'GUY', 'Americas', 'South America', 'America/Guyana'),
('Haiti', 'HT', 'HTI', 'Americas', 'Caribbean', 'America/Port-au-Prince'),
('Heard Island and McDonald Islands', 'HM', 'HMD', 'Antarctica', '', NULL), -- Uninhabited
('Holy See', 'VA', 'VAT', 'Europe', 'Southern Europe', 'Europe/Vatican'),
('Honduras', 'HN', 'HND', 'Americas', 'Central America', 'America/Tegucigalpa'),
('Hong Kong', 'HK', 'HKG', 'Asia', 'Eastern Asia', 'Asia/Hong_Kong'),
('Hungary', 'HU', 'HUN', 'Europe', 'Eastern Europe', 'Europe/Budapest'),
('Iceland', 'IS', 'ISL', 'Europe', 'Northern Europe', 'Atlantic/Reykjavik'),
('India', 'IN', 'IND', 'Asia', 'Southern Asia', 'Asia/Kolkata'),
('Indonesia', 'ID', 'IDN', 'Asia', 'South-Eastern Asia', 'Asia/Jakarta'), -- Multiple zones exist
('Iran (Islamic Republic of)', 'IR', 'IRN', 'Asia', 'Southern Asia', 'Asia/Tehran'),
('Iraq', 'IQ', 'IRQ', 'Asia', 'Western Asia', 'Asia/Baghdad'),
('Ireland', 'IE', 'IRL', 'Europe', 'Northern Europe', 'Europe/Dublin'),
('Isle of Man', 'IM', 'IMN', 'Europe', 'Northern Europe', 'Europe/Isle_of_Man'),
('Israel', 'IL', 'ISR', 'Asia', 'Western Asia', 'Asia/Jerusalem'),
('Italy', 'IT', 'ITA', 'Europe', 'Southern Europe', 'Europe/Rome'),
('Jamaica', 'JM', 'JAM', 'Americas', 'Caribbean', 'America/Jamaica'),
('Japan', 'JP', 'JPN', 'Asia', 'Eastern Asia', 'Asia/Tokyo'),
('Jersey', 'JE', 'JEY', 'Europe', 'Northern Europe', 'Europe/Jersey'),
('Jordan', 'JO', 'JOR', 'Asia', 'Western Asia', 'Asia/Amman'),
('Kazakhstan', 'KZ', 'KAZ', 'Asia', 'Central Asia', 'Asia/Almaty'), -- Multiple zones exist
('Kenya', 'KE', 'KEN', 'Africa', 'Eastern Africa', 'Africa/Nairobi'),
('Kiribati', 'KI', 'KIR', 'Oceania', 'Micronesia', 'Pacific/Tarawa'), -- Multiple zones exist
('Korea (Democratic People''s Republic of)', 'KP', 'PRK', 'Asia', 'Eastern Asia', 'Asia/Pyongyang'),
('Korea (Republic of)', 'KR', 'KOR', 'Asia', 'Eastern Asia', 'Asia/Seoul'),
('Kuwait', 'KW', 'KWT', 'Asia', 'Western Asia', 'Asia/Kuwait'),
('Kyrgyzstan', 'KG', 'KGZ', 'Asia', 'Central Asia', 'Asia/Bishkek'),
('Lao People''s Democratic Republic', 'LA', 'LAO', 'Asia', 'South-Eastern Asia', 'Asia/Vientiane'),
('Latvia', 'LV', 'LVA', 'Europe', 'Northern Europe', 'Europe/Riga'),
('Lebanon', 'LB', 'LBN', 'Asia', 'Western Asia', 'Asia/Beirut'),
('Lesotho', 'LS', 'LSO', 'Africa', 'Southern Africa', 'Africa/Maseru'),
('Liberia', 'LR', 'LBR', 'Africa', 'Western Africa', 'Africa/Monrovia'),
('Libya', 'LY', 'LBY', 'Africa', 'Northern Africa', 'Africa/Tripoli'),
('Liechtenstein', 'LI', 'LIE', 'Europe', 'Western Europe', 'Europe/Vaduz'),
('Lithuania', 'LT', 'LTU', 'Europe', 'Northern Europe', 'Europe/Vilnius'),
('Luxembourg', 'LU', 'LUX', 'Europe', 'Western Europe', 'Europe/Luxembourg'),
('Macao', 'MO', 'MAC', 'Asia', 'Eastern Asia', 'Asia/Macau'),
('Madagascar', 'MG', 'MDG', 'Africa', 'Eastern Africa', 'Indian/Antananarivo'),
('Malawi', 'MW', 'MWI', 'Africa', 'Eastern Africa', 'Africa/Blantyre'),
('Malaysia', 'MY', 'MYS', 'Asia', 'South-Eastern Asia', 'Asia/Kuala_Lumpur'), -- Includes Sabah/Sarawak zone
('Maldives', 'MV', 'MDV', 'Asia', 'Southern Asia', 'Indian/Maldives'),
('Mali', 'ML', 'MLI', 'Africa', 'Western Africa', 'Africa/Bamako'),
('Malta', 'MT', 'MLT', 'Europe', 'Southern Europe', 'Europe/Malta'),
('Marshall Islands', 'MH', 'MHL', 'Oceania', 'Micronesia', 'Pacific/Majuro'), -- Includes Kwajalein zone
('Martinique', 'MQ', 'MTQ', 'Americas', 'Caribbean', 'America/Martinique'),
('Mauritania', 'MR', 'MRT', 'Africa', 'Western Africa', 'Africa/Nouakchott'),
('Mauritius', 'MU', 'MUS', 'Africa', 'Eastern Africa', 'Indian/Mauritius'),
('Mayotte', 'YT', 'MYT', 'Africa', 'Eastern Africa', 'Indian/Mayotte'),
('Mexico', 'MX', 'MEX', 'Americas', 'Central America', 'America/Mexico_City'), -- Multiple zones exist
('Micronesia (Federated States of)', 'FM', 'FSM', 'Oceania', 'Micronesia', 'Pacific/Pohnpei'), -- Multiple zones exist
('Moldova (Republic of)', 'MD', 'MDA', 'Europe', 'Eastern Europe', 'Europe/Chisinau'),
('Monaco', 'MC', 'MCO', 'Europe', 'Western Europe', 'Europe/Monaco'),
('Mongolia', 'MN', 'MNG', 'Asia', 'Eastern Asia', 'Asia/Ulaanbaatar'), -- Multiple zones exist
('Montenegro', 'ME', 'MNE', 'Europe', 'Southern Europe', 'Europe/Podgorica'),
('Montserrat', 'MS', 'MSR', 'Americas', 'Caribbean', 'America/Montserrat'),
('Morocco', 'MA', 'MAR', 'Africa', 'Northern Africa', 'Africa/Casablanca'), -- Includes Western Sahara
('Mozambique', 'MZ', 'MOZ', 'Africa', 'Eastern Africa', 'Africa/Maputo'),
('Myanmar', 'MM', 'MMR', 'Asia', 'South-Eastern Asia', 'Asia/Yangon'),
('Namibia', 'NA', 'NAM', 'Africa', 'Southern Africa', 'Africa/Windhoek'),
('Nauru', 'NR', 'NRU', 'Oceania', 'Micronesia', 'Pacific/Nauru'),
('Nepal', 'NP', 'NPL', 'Asia', 'Southern Asia', 'Asia/Kathmandu'),
('Netherlands', 'NL', 'NLD', 'Europe', 'Western Europe', 'Europe/Amsterdam'), -- Excludes Caribbean Netherlands
('New Caledonia', 'NC', 'NCL', 'Oceania', 'Melanesia', 'Pacific/Noumea'),
('New Zealand', 'NZ', 'NZL', 'Oceania', 'Australia and New Zealand', 'Pacific/Auckland'), -- Includes Chatham zone
('Nicaragua', 'NI', 'NIC', 'Americas', 'Central America', 'America/Managua'),
('Niger', 'NE', 'NER', 'Africa', 'Western Africa', 'Africa/Niamey'),
('Nigeria', 'NG', 'NGA', 'Africa', 'Western Africa', 'Africa/Lagos'),
('Niue', 'NU', 'NIU', 'Oceania', 'Polynesia', 'Pacific/Niue'),
('Norfolk Island', 'NF', 'NFK', 'Oceania', 'Australia and New Zealand', 'Pacific/Norfolk'),
('North Macedonia', 'MK', 'MKD', 'Europe', 'Southern Europe', 'Europe/Skopje'),
('Northern Mariana Islands', 'MP', 'MNP', 'Oceania', 'Micronesia', 'Pacific/Saipan'),
('Norway', 'NO', 'NOR', 'Europe', 'Northern Europe', 'Europe/Oslo'), -- Excludes Svalbard, Jan Mayen
('Oman', 'OM', 'OMN', 'Asia', 'Western Asia', 'Asia/Muscat'),
('Pakistan', 'PK', 'PAK', 'Asia', 'Southern Asia', 'Asia/Karachi'),
('Palau', 'PW', 'PLW', 'Oceania', 'Micronesia', 'Pacific/Palau'),
('Palestine, State of', 'PS', 'PSE', 'Asia', 'Western Asia', 'Asia/Gaza'), -- Includes Hebron zone
('Panama', 'PA', 'PAN', 'Americas', 'Central America', 'America/Panama'),
('Papua New Guinea', 'PG', 'PNG', 'Oceania', 'Melanesia', 'Pacific/Port_Moresby'), -- Includes Bougainville zone
('Paraguay', 'PY', 'PRY', 'Americas', 'South America', 'America/Asuncion'),
('Peru', 'PE', 'PER', 'Americas', 'South America', 'America/Lima'),
('Philippines', 'PH', 'PHL', 'Asia', 'South-Eastern Asia', 'Asia/Manila'),
('Pitcairn', 'PN', 'PCN', 'Oceania', 'Polynesia', 'Pacific/Pitcairn'),
('Poland', 'PL', 'POL', 'Europe', 'Eastern Europe', 'Europe/Warsaw'),
('Portugal', 'PT', 'PRT', 'Europe', 'Southern Europe', 'Europe/Lisbon'), -- Includes Azores, Madeira zones
('Puerto Rico', 'PR', 'PRI', 'Americas', 'Caribbean', 'America/Puerto_Rico'),
('Qatar', 'QA', 'QAT', 'Asia', 'Western Asia', 'Asia/Qatar'),
('Réunion', 'RE', 'REU', 'Africa', 'Eastern Africa', 'Indian/Reunion'),
('Romania', 'RO', 'ROU', 'Europe', 'Eastern Europe', 'Europe/Bucharest'),
('Russian Federation', 'RU', 'RUS', 'Europe', 'Eastern Europe', 'Europe/Moscow'), -- Multiple zones exist
('Rwanda', 'RW', 'RWA', 'Africa', 'Eastern Africa', 'Africa/Kigali'),
('Saint Barthélemy', 'BL', 'BLM', 'Americas', 'Caribbean', 'America/St_Barthelemy'),
('Saint Helena, Ascension and Tristan da Cunha', 'SH', 'SHN', 'Africa', 'Western Africa', 'Atlantic/St_Helena'),
('Saint Kitts and Nevis', 'KN', 'KNA', 'Americas', 'Caribbean', 'America/St_Kitts'),
('Saint Lucia', 'LC', 'LCA', 'Americas', 'Caribbean', 'America/St_Lucia'),
('Saint Martin (French part)', 'MF', 'MAF', 'Americas', 'Caribbean', 'America/Marigot'),
('Saint Pierre and Miquelon', 'PM', 'SPM', 'Americas', 'Northern America', 'America/Miquelon'),
('Saint Vincent and the Grenadines', 'VC', 'VCT', 'Americas', 'Caribbean', 'America/St_Vincent'),
('Samoa', 'WS', 'WSM', 'Oceania', 'Polynesia', 'Pacific/Apia'),
('San Marino', 'SM', 'SMR', 'Europe', 'Southern Europe', 'Europe/San_Marino'),
('Sao Tome and Principe', 'ST', 'STP', 'Africa', 'Middle Africa', 'Africa/Sao_Tome'),
('Saudi Arabia', 'SA', 'SAU', 'Asia', 'Western Asia', 'Asia/Riyadh'),
('Senegal', 'SN', 'SEN', 'Africa', 'Western Africa', 'Africa/Dakar'),
('Serbia', 'RS', 'SRB', 'Europe', 'Southern Europe', 'Europe/Belgrade'),
('Seychelles', 'SC', 'SYC', 'Africa', 'Eastern Africa', 'Indian/Seychelles'),
('Sierra Leone', 'SL', 'SLE', 'Africa', 'Western Africa', 'Africa/Freetown'),
('Singapore', 'SG', 'SGP', 'Asia', 'South-Eastern Asia', 'Asia/Singapore'),
('Sint Maarten (Dutch part)', 'SX', 'SXM', 'Americas', 'Caribbean', 'America/Lower_Princes'),
('Slovakia', 'SK', 'SVK', 'Europe', 'Eastern Europe', 'Europe/Bratislava'),
('Slovenia', 'SI', 'SVN', 'Europe', 'Southern Europe', 'Europe/Ljubljana'),
('Solomon Islands', 'SB', 'SLB', 'Oceania', 'Melanesia', 'Pacific/Guadalcanal'),
('Somalia', 'SO', 'SOM', 'Africa', 'Eastern Africa', 'Africa/Mogadishu'),
('South Africa', 'ZA', 'ZAF', 'Africa', 'Southern Africa', 'Africa/Johannesburg'),
('South Georgia and the South Sandwich Islands', 'GS', 'SGS', 'Antarctica', '', 'Atlantic/South_Georgia'),
('South Sudan', 'SS', 'SSD', 'Africa', 'Eastern Africa', 'Africa/Juba'),
('Spain', 'ES', 'ESP', 'Europe', 'Southern Europe', 'Europe/Madrid'), -- Includes Africa/Ceuta, Atlantic/Canary zones
('Sri Lanka', 'LK', 'LKA', 'Asia', 'Southern Asia', 'Asia/Colombo'),
('Sudan', 'SD', 'SDN', 'Africa', 'Northern Africa', 'Africa/Khartoum'),
('Suriname', 'SR', 'SUR', 'Americas', 'South America', 'America/Paramaribo'),
('Svalbard and Jan Mayen', 'SJ', 'SJM', 'Europe', 'Northern Europe', 'Arctic/Longyearbyen'),
('Sweden', 'SE', 'SWE', 'Europe', 'Northern Europe', 'Europe/Stockholm'),
('Switzerland', 'CH', 'CHE', 'Europe', 'Western Europe', 'Europe/Zurich'),
('Syrian Arab Republic', 'SY', 'SYR', 'Asia', 'Western Asia', 'Asia/Damascus'),
('Taiwan, Province of China', 'TW', 'TWN', 'Asia', 'Eastern Asia', 'Asia/Taipei'),
('Tajikistan', 'TJ', 'TJK', 'Asia', 'Central Asia', 'Asia/Dushanbe'),
('Tanzania, United Republic of', 'TZ', 'TZA', 'Africa', 'Eastern Africa', 'Africa/Dar_es_Salaam'),
('Thailand', 'TH', 'THA', 'Asia', 'South-Eastern Asia', 'Asia/Bangkok'),
('Timor-Leste', 'TL', 'TLS', 'Asia', 'South-Eastern Asia', 'Asia/Dili'),
('Togo', 'TG', 'TGO', 'Africa', 'Western Africa', 'Africa/Lome'),
('Tokelau', 'TK', 'TKL', 'Oceania', 'Polynesia', 'Pacific/Fakaofo'),
('Tonga', 'TO', 'TON', 'Oceania', 'Polynesia', 'Pacific/Tongatapu'),
('Trinidad and Tobago', 'TT', 'TTO', 'Americas', 'Caribbean', 'America/Port_of_Spain'),
('Tunisia', 'TN', 'TUN', 'Africa', 'Northern Africa', 'Africa/Tunis'),
('Turkey', 'TR', 'TUR', 'Asia', 'Western Asia', 'Europe/Istanbul'),
('Turkmenistan', 'TM', 'TKM', 'Asia', 'Central Asia', 'Asia/Ashgabat'),
('Turks and Caicos Islands', 'TC', 'TCA', 'Americas', 'Caribbean', 'America/Grand_Turk'),
('Tuvalu', 'TV', 'TUV', 'Oceania', 'Polynesia', 'Pacific/Funafuti'),
('Uganda', 'UG', 'UGA', 'Africa', 'Eastern Africa', 'Africa/Kampala'),
('Ukraine', 'UA', 'UKR', 'Europe', 'Eastern Europe', 'Europe/Kiev'), -- Multiple zones exist (Simferopol, Uzhgorod)
('United Arab Emirates', 'AE', 'ARE', 'Asia', 'Western Asia', 'Asia/Dubai'),
('United Kingdom of Great Britain and Northern Ireland', 'GB', 'GBR', 'Europe', 'Northern Europe', 'Europe/London'), -- Excludes overseas territories
('United States Minor Outlying Islands', 'UM', 'UMI', 'Oceania', 'Micronesia', 'Pacific/Wake'), -- Multiple zones exist
('United States of America', 'US', 'USA', 'Americas', 'Northern America', 'America/New_York'), -- Multiple zones exist
('Uruguay', 'UY', 'URY', 'Americas', 'South America', 'America/Montevideo'),
('Uzbekistan', 'UZ', 'UZB', 'Asia', 'Central Asia', 'Asia/Tashkent'), -- Multiple zones exist (Samarkand)
('Vanuatu', 'VU', 'VUT', 'Oceania', 'Melanesia', 'Pacific/Efate'),
('Venezuela (Bolivarian Republic of)', 'VE', 'VEN', 'Americas', 'South America', 'America/Caracas'),
('Viet Nam', 'VN', 'VNM', 'Asia', 'South-Eastern Asia', 'Asia/Ho_Chi_Minh'),
('Virgin Islands (British)', 'VG', 'VGB', 'Americas', 'Caribbean', 'America/Tortola'),
('Virgin Islands (U.S.)', 'VI', 'VIR', 'Americas', 'Caribbean', 'America/St_Thomas'),
('Wallis and Futuna', 'WF', 'WLF', 'Oceania', 'Polynesia', 'Pacific/Wallis'),
('Western Sahara', 'EH', 'ESH', 'Africa', 'Northern Africa', 'Africa/El_Aaiun'),
('Yemen', 'YE', 'YEM', 'Asia', 'Western Asia', 'Asia/Aden'),
('Zambia', 'ZM', 'ZMB', 'Africa', 'Eastern Africa', 'Africa/Lusaka'),
('Zimbabwe', 'ZW', 'ZWE', 'Africa', 'Eastern Africa', 'Africa/Harare');


-- Grant usage and select permissions (adjust schema and role names if needed)
-- GRANT USAGE ON SCHEMA public TO your_user_role;
-- GRANT SELECT ON TABLE public.world_countries TO your_user_role;

-- Example Query: Select countries in Europe/London timezone
-- SELECT name, iso_code_2 FROM public.world_countries WHERE iana_timezone = 'Europe/London';

-- Example Query: Select all countries in South America with their timezones
-- SELECT name, iso_code_2, iana_timezone FROM public.world_countries WHERE subregion = 'South America' ORDER BY name;

