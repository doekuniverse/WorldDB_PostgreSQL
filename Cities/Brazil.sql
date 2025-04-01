-- SQL Script to insert a representative sample of significant cities for Brazil (BR).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Brazil (BR).

-- NOTE: Brazil is immense, with over 5,500 municipalities. This list includes the federal capital,
-- state capitals, and a broad sample of major metropolitan and regional cities.
-- Listing every single locality is IMPOSSIBLE.
-- Postal codes (CEP) are #####-###; examples or '00000-000' placeholder are provided.

-- Inserting cities for Brazil (BR) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Federal Capital & State Capitals / Major Cities
('Brasília', (SELECT id FROM world_countries WHERE iso_code_2 = 'BR'), '70000-000'), -- Federal Capital (DF)
('São Paulo', (SELECT id FROM world_countries WHERE iso_code_2 = 'BR'), '01000-000'), -- State Capital (SP), Largest city
('Rio de Janeiro', (SELECT id FROM world_countries WHERE iso_code_2 = 'BR'), '20000-000'), -- State Capital (RJ)
('Salvador', (SELECT id FROM world_countries WHERE iso_code_2 = 'BR'), '40000-000'), -- State Capital (BA)
('Fortaleza', (SELECT id FROM world_countries WHERE iso_code_2 = 'BR'), '60000-000'), -- State Capital (CE)
('Belo Horizonte', (SELECT id FROM world_countries WHERE iso_code_2 = 'BR'), '30000-000'), -- State Capital (MG)
('Manaus', (SELECT id FROM world_countries WHERE iso_code_2 = 'BR'), '69000-000'), -- State Capital (AM)
('Curitiba', (SELECT id FROM world_countries WHERE iso_code_2 = 'BR'), '80000-000'), -- State Capital (PR)
('Recife', (SELECT id FROM world_countries WHERE iso_code_2 = 'BR'), '50000-000'), -- State Capital (PE)
('Goiânia', (SELECT id FROM world_countries WHERE iso_code_2 = 'BR'), '74000-000'), -- State Capital (GO)
('Belém', (SELECT id FROM world_countries WHERE iso_code_2 = 'BR'), '66000-000'), -- State Capital (PA)
('Porto Alegre', (SELECT id FROM world_countries WHERE iso_code_2 = 'BR'), '90000-000'), -- State Capital (RS)
('Guarulhos', (SELECT id FROM world_countries WHERE iso_code_2 = 'BR'), '07000-000'), -- Major city (SP, São Paulo Metro)
('Campinas', (SELECT id FROM world_countries WHERE iso_code_2 = 'BR'), '13000-000'), -- Major city (SP)
('São Luís', (SELECT id FROM world_countries WHERE iso_code_2 = 'BR'), '65000-000'), -- State Capital (MA)
('São Gonçalo', (SELECT id FROM world_countries WHERE iso_code_2 = 'BR'), '24400-000'), -- Major city (RJ, Rio Metro)
('Maceió', (SELECT id FROM world_countries WHERE iso_code_2 = 'BR'), '57000-000'), -- State Capital (AL)
('Duque de Caxias', (SELECT id FROM world_countries WHERE iso_code_2 = 'BR'), '25000-000'), -- Major city (RJ, Rio Metro)
('Campo Grande', (SELECT id FROM world_countries WHERE iso_code_2 = 'BR'), '79000-000'), -- State Capital (MS)
('Natal', (SELECT id FROM world_countries WHERE iso_code_2 = 'BR'), '59000-000'), -- State Capital (RN)
('Teresina', (SELECT id FROM world_countries WHERE iso_code_2 = 'BR'), '64000-000'), -- State Capital (PI)
('São Bernardo do Campo', (SELECT id FROM world_countries WHERE iso_code_2 = 'BR'), '09700-000'), -- Major city (SP, São Paulo Metro - ABC Region)
('Nova Iguaçu', (SELECT id FROM world_countries WHERE iso_code_2 = 'BR'), '26000-000'), -- Major city (RJ, Rio Metro)
('João Pessoa', (SELECT id FROM world_countries WHERE iso_code_2 = 'BR'), '58000-000'), -- State Capital (PB)
('Santo André', (SELECT id FROM world_countries WHERE iso_code_2 = 'BR'), '09000-000'), -- Major city (SP, São Paulo Metro - ABC Region)
('Osasco', (SELECT id FROM world_countries WHERE iso_code_2 = 'BR'), '06000-000'), -- Major city (SP, São Paulo Metro)
('São José dos Campos', (SELECT id FROM world_countries WHERE iso_code_2 = 'BR'), '12200-000'), -- Major city (SP)
('Jaboatão dos Guararapes', (SELECT id FROM world_countries WHERE iso_code_2 = 'BR'), '54000-000'), -- Major city (PE, Recife Metro)
('Ribeirão Preto', (SELECT id FROM world_countries WHERE iso_code_2 = 'BR'), '14000-000'), -- Major city (SP)
('Uberlândia', (SELECT id FROM world_countries WHERE iso_code_2 = 'BR'), '38400-000'), -- Major city (MG)
('Contagem', (SELECT id FROM world_countries WHERE iso_code_2 = 'BR'), '32000-000'), -- Major city (MG, Belo Horizonte Metro)
('Aracaju', (SELECT id FROM world_countries WHERE iso_code_2 = 'BR'), '49000-000'), -- State Capital (SE)
('Feira de Santana', (SELECT id FROM world_countries WHERE iso_code_2 = 'BR'), '44000-000'), -- Major city (BA)
('Sorocaba', (SELECT id FROM world_countries WHERE iso_code_2 = 'BR'), '18000-000'), -- Major city (SP)
('Cuiabá', (SELECT id FROM world_countries WHERE iso_code_2 = 'BR'), '78000-000'), -- State Capital (MT)
('Joinville', (SELECT id FROM world_countries WHERE iso_code_2 = 'BR'), '89200-000'), -- Major city (SC)
('Juiz de Fora', (SELECT id FROM world_countries WHERE iso_code_2 = 'BR'), '36000-000'), -- Major city (MG)
('Londrina', (SELECT id FROM world_countries WHERE iso_code_2 = 'BR'), '86000-000'), -- Major city (PR)
('Florianópolis', (SELECT id FROM world_countries WHERE iso_code_2 = 'BR'), '88000-000'), -- State Capital (SC)
('Porto Velho', (SELECT id FROM world_countries WHERE iso_code_2 = 'BR'), '76800-000'), -- State Capital (RO)
('Macapá', (SELECT id FROM world_countries WHERE iso_code_2 = 'BR'), '68900-000'), -- State Capital (AP)
('Rio Branco', (SELECT id FROM world_countries WHERE iso_code_2 = 'BR'), '69900-000'), -- State Capital (AC)
('Boa Vista', (SELECT id FROM world_countries WHERE iso_code_2 = 'BR'), '69300-000'), -- State Capital (RR)
('Palmas', (SELECT id FROM world_countries WHERE iso_code_2 = 'BR'), '77000-000'), -- State Capital (TO)
('Vitória', (SELECT id FROM world_countries WHERE iso_code_2 = 'BR'), '29000-000'), -- State Capital (ES)
('Santos', (SELECT id FROM world_countries WHERE iso_code_2 = 'BR'), '11000-000'), -- Major port city (SP)
('Niterói', (SELECT id FROM world_countries WHERE iso_code_2 = 'BR'), '24000-000'), -- City across bay from Rio (RJ)
('Campos dos Goytacazes', (SELECT id FROM world_countries WHERE iso_code_2 = 'BR'), '28000-000'), -- Major city (RJ)
('Blumenau', (SELECT id FROM world_countries WHERE iso_code_2 = 'BR'), '89000-000'), -- Major city (SC)
('Franca', (SELECT id FROM world_countries WHERE iso_code_2 = 'BR'), '14400-000'), -- Major city (SP)
('Ponta Grossa', (SELECT id FROM world_countries WHERE iso_code_2 = 'BR'), '84000-000'), -- Major city (PR)
('Olinda', (SELECT id FROM world_countries WHERE iso_code_2 = 'BR'), '53000-000'), -- Historic city (PE, Recife Metro)
('Cascavel', (SELECT id FROM world_countries WHERE iso_code_2 = 'BR'), '85800-000'), -- Major city (PR)
('Pelotas', (SELECT id FROM world_countries WHERE iso_code_2 = 'BR'), '96000-000'), -- Major city (RS)
('Caxias do Sul', (SELECT id FROM world_countries WHERE iso_code_2 = 'BR'), '95000-000'), -- Major city (RS)
('Anápolis', (SELECT id FROM world_countries WHERE iso_code_2 = 'BR'), '75000-000'); -- Major city (GO)


-- End of Brazil city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Brazil ==
-- ====================================
--
-- Descripción General:
-- Brasil es el país más grande de América del Sur y de América Latina, y el quinto
-- más grande del mundo tanto por área como por población. Ocupa casi la mitad del
-- continente sudamericano. Es una república federal presidencialista. Brasil es
-- conocido por su vasta selva amazónica, la cuenca fluvial más grande del mundo,
-- extensas costas atlánticas con playas famosas, el Pantanal (el humedal más
-- grande del mundo) y una rica biodiversidad. Es una sociedad multiétnica con
-- influencias indígenas, africanas, europeas y asiáticas.
--
-- Ciudades Principales:
-- * São Paulo: La ciudad más poblada de Brasil y del hemisferio sur, principal
--   centro financiero y corporativo de América Latina.
-- * Rio de Janeiro: Famosa mundialmente por sus playas (Copacabana, Ipanema), el
--   Cristo Redentor, el Pan de Azúcar y el Carnaval. Antigua capital.
-- * Brasília: La capital federal, una ciudad planificada modernista inaugurada en
--   1960, ubicada en el interior del país. Patrimonio de la Humanidad por la UNESCO.
-- * Salvador: Primera capital de Brasil, centro de la cultura afrobrasileña.
-- * Fortaleza, Belo Horizonte, Manaus, Curitiba, Recife, Porto Alegre, Goiânia, Belém:
--   Otras capitales estatales y grandes metrópolis con gran importancia económica y cultural.
-- * La lista incluye también muchas otras ciudades grandes y capitales estatales.
--
-- Un Poco de Historia:
-- Habitado por pueblos indígenas, Brasil fue reclamado por Portugal en 1500. Fue
-- una colonia portuguesa hasta 1822, cuando declaró su independencia y se estableció
-- el Imperio de Brasil. Se convirtió en una república en 1889. La historia brasileña
-- ha estado marcada por ciclos económicos (azúcar, oro, café), la esclavitud
-- (abolida en 1888), periodos de inestabilidad política, la Era Vargas, una
-- dictadura militar (1964-1985) y la redemocratización posterior.
--
-- Datos Adicionales:
-- El portugués es el idioma oficial. Brasil es famoso por el fútbol (pentacampeón
-- del mundo), el Carnaval, la samba y la bossa nova. Es un líder mundial en la
-- producción de café, soja y otros productos agrícolas. La Amazonía brasileña
-- juega un papel crucial en el clima global.
--
*/
