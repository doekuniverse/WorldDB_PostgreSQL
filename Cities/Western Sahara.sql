-- SQL Script to insert a representative sample of significant towns and settlements for Western Sahara (EH).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Western Sahara (EH).

-- NOTE: Western Sahara is a disputed territory. Most of the territory, including all major towns listed below (except Tifariti),
-- is administered de facto by Morocco. The Polisario Front, which claims independence as the Sahrawi Arab Democratic Republic (SADR),
-- administers a smaller, less populated eastern zone ('Free Zone'). Listing every single settlement is impractical,
-- and data reflects the complex administrative situation.
-- Postal codes provided are those used by the Moroccan administration (5-digit format). Areas administered by the Polisario Front
-- generally lack a functioning postal code system; using '00000' as a placeholder.

-- Inserting towns/settlements for Western Sahara (EH) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Main City & Other Major Towns (Primarily under Moroccan administration)
('Laayoune', (SELECT id FROM world_countries WHERE iso_code_2 = 'EH'), '70000'), -- Largest city, de facto administrative center under Morocco (El Aaiún in Spanish)
('Dakhla', (SELECT id FROM world_countries WHERE iso_code_2 = 'EH'), '73000'), -- Major coastal city (formerly Villa Cisneros in Spanish)
('Smara', (SELECT id FROM world_countries WHERE iso_code_2 = 'EH'), '72000'), -- Significant inland town (Semara in Spanish)
('Boujdour', (SELECT id FROM world_countries WHERE iso_code_2 = 'EH'), '71000'), -- Coastal town (Cabo Bojador in Spanish)
('Guerguerat', (SELECT id FROM world_countries WHERE iso_code_2 = 'EH'), '00000'), -- Border post with Mauritania (Postal code uncertain/placeholder)

-- Settlement in Polisario-administered zone ('Free Zone')
('Tifariti', (SELECT id FROM world_countries WHERE iso_code_2 = 'EH'), '00000'); -- Settlement in the eastern part, sometimes cited as SADR's temporary capital


-- End of Western Sahara town/settlement list (Representative Sample reflecting administrative situation)

/*
-- ===========================================================
-- ==      Información sobre el Sáhara Occidental           ==
-- ===========================================================
--
-- Descripción General:
-- El Sáhara Occidental es un territorio ubicado en la región del Magreb, en el noroeste
-- de África. Limita con Marruecos al norte, Argelia al noreste, Mauritania al este y
-- sur, y el Océano Atlántico al oeste. Es uno de los territorios más escasamente
-- poblados del mundo, compuesto principalmente por llanuras desérticas. Su estatus
-- político es objeto de una larga disputa.
--
-- Estatus Político y Asentamientos Principales:
-- El Sáhara Occidental es un Territorio No Autónomo según las Naciones Unidas, pendiente
-- de descolonización. Marruecos reclama y administra de facto aproximadamente el 80%
-- del territorio (al oeste del muro marroquí), incluyendo las principales ciudades:
-- * El Aaiún (Laayoune): La ciudad más grande y centro administrativo de facto.
-- * Dajla (Dakhla): Anteriormente Villa Cisneros, importante ciudad costera y pesquera.
-- * Esmara (Smara): La única ciudad importante fundada por los saharauis antes del
--   periodo colonial, ubicada en el interior.
-- * Bojador (Boujdour): Ciudad costera.
-- El Frente Polisario, que proclamó la República Árabe Saharaui Democrática (RASD) en
-- 1976, reclama la soberanía sobre todo el territorio y administra la zona restante
-- al este del muro ('Zona Libre'), que es mayormente deshabitada. Tifariti es un
-- asentamiento en esta zona, a veces considerado capital temporal por la RASD. Los
-- campamentos de refugiados saharauis, administrados por el Polisario con apoyo
-- internacional, se encuentran en la vecina Argelia (cerca de Tinduf) y no forman
-- parte del territorio del Sáhara Occidental.
--
-- Un Poco de Historia:
-- Habitada por pueblos bereberes y nómadas saharianos (hablantes de árabe hassanía).
-- España estableció un protectorado y luego una provincia (Sahara Español) a finales
-- del siglo XIX y principios del XX. En 1975, España se retiró tras la Marcha Verde
-- marroquí. Marruecos y Mauritania se repartieron el territorio, pero Mauritania se
-- retiró en 1979 tras combatir contra el Frente Polisario (fundado en 1973 para luchar
-- por la independencia). Marruecos ocupó entonces la mayor parte del territorio. Se
-- declaró un alto el fuego auspiciado por la ONU en 1991, con la promesa de un referéndum
-- de autodeterminación que nunca se ha celebrado debido a desacuerdos sobre el censo
-- electoral. El estatus final del territorio sigue sin resolverse.
--
-- Datos Adicionales:
-- Los idiomas hablados son el árabe hassanía y el árabe marroquí en las zonas
-- administradas por Marruecos, donde el francés también tiene presencia administrativa.
-- El español todavía tiene cierta influencia como antigua potencia colonial. La población
-- indígena es saharaui. La religión principal es el islam sunita. La economía en la
-- zona administrada por Marruecos se basa en la pesca, la extracción de fosfatos y,
-- cada vez más, el turismo y las energías renovables. La situación de los derechos
-- humanos en el territorio es objeto de preocupación internacional.
--
*/
