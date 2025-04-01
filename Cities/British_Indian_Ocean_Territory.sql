-- SQL Script regarding localities for the British Indian Ocean Territory (IO).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains British Indian Ocean Territory (IO).

-- NOTE: The British Indian Ocean Territory has NO permanent civilian population.
-- The native Chagossian population was forcibly removed. The only significant inhabited place
-- is the joint UK/US military base on Diego Garcia. This script lists only that location.
-- Standard postal codes do not apply; using '0000' as a placeholder.

-- Inserting the only significant inhabited location for British Indian Ocean Territory (IO)
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
('Diego Garcia', (SELECT id FROM world_countries WHERE iso_code_2 = 'IO'), '0000'); -- Location of UK/US military base

-- End of British Indian Ocean Territory locality list (Unique Case)

/*
-- =======================================================================
-- == Información sobre el Territorio Británico del Océano Índico (TBOI) ==
-- =======================================================================
--
-- Descripción General:
-- El Territorio Británico del Océano Índico (TBOI) es un Territorio Británico de
-- Ultramar ubicado en el Océano Índico, a medio camino entre África e Indonesia.
-- Comprende los seis atolones del Archipiélago de Chagos, con más de 1,000 islas
-- individuales (la mayoría muy pequeñas). La isla más grande es Diego García,
-- que alberga una importante base militar conjunta del Reino Unido y Estados Unidos.
--
-- Ciudades Principales (Localidades):
-- No existen ciudades ni asentamientos civiles en el TBOI. La población indígena
-- original, los chagosianos, fue expulsada por la fuerza entre 1968 y 1973.
-- La única población actual consiste en personal militar británico y estadounidense
-- y contratistas asociados, concentrados en la base de Diego García. Las demás
-- islas del archipiélago están deshabitadas.
--
-- Un Poco de Historia:
-- Las islas fueron reclamadas por Francia y luego cedidas a Gran Bretaña después
-- de las guerras napoleónicas. Formaron parte de las dependencias de Mauricio
-- hasta 1965, cuando el Reino Unido las separó para crear el TBOI, poco antes
-- de la independencia de Mauricio. Este acto, junto con la posterior expulsión
-- de los chagosianos y el arrendamiento de Diego García a EE.UU. para la base
-- militar, es objeto de una disputa legal y diplomática internacional, con
-- Mauricio reclamando la soberanía sobre el archipiélago y la Corte Internacional
-- de Justicia dictaminando que la separación fue ilegal.
--
-- Datos Adicionales:
-- El territorio tiene una importancia estratégica militar significativa. La
-- situación de los chagosianos expulsados y su derecho al retorno es un tema
-- importante de derechos humanos. Las aguas circundantes fueron declaradas una
-- gran reserva marina protegida, aunque su gestión también ha sido objeto de controversia.
--
*/
