-- SQL Script to create the world_cities table, linked to world_countries.
-- This script should be run BEFORE inserting any city data.

-- Assumes the public.world_countries table already exists.

-- Drop the table if it already exists (optional, use with caution)
-- DROP TABLE IF EXISTS public.world_cities;

-- Create the world_cities table
CREATE TABLE public.world_cities (
    id SERIAL PRIMARY KEY, -- Unique numeric identifier for the city
    name VARCHAR(255) NOT NULL, -- Name of the city/locality
    country_id INT NOT NULL, -- Foreign key linking to the world_countries table
    postal_code VARCHAR(20) NULL, -- Postal code (nullable as not always applicable/available, variable format)
    -- Optional useful columns (uncomment to add):
    -- latitude DECIMAL(9, 6) NULL, -- Latitude coordinate
    -- longitude DECIMAL(9, 6) NULL, -- Longitude coordinate
    -- administrative_area VARCHAR(100) NULL, -- e.g., State, Province, Region within the country
    created_at TIMESTAMPTZ DEFAULT NOW() NOT NULL, -- Timestamp when the record was created
    updated_at TIMESTAMPTZ DEFAULT NOW() NOT NULL, -- Timestamp when the record was last updated

    -- Foreign Key constraint to link with world_countries table
    CONSTRAINT fk_country
        FOREIGN KEY(country_id)
        REFERENCES public.world_countries(id)
        ON DELETE RESTRICT -- Defines behavior if a linked country is deleted (RESTRICT prevents deletion)
        ON UPDATE CASCADE -- Defines behavior if a linked country ID is updated (CASCADE updates city record)

    -- Note: Index creation moved outside the CREATE TABLE statement below
);

-- Add comments to the table and columns for clarity
COMMENT ON TABLE public.world_cities IS 'Table containing cities/localities of the world, linked to countries.';
COMMENT ON COLUMN public.world_cities.id IS 'Unique identifier for the city (Serial PK).';
COMMENT ON COLUMN public.world_cities.name IS 'Name of the city or locality.';
COMMENT ON COLUMN public.world_cities.country_id IS 'Foreign key referencing the ID in the world_countries table.';
COMMENT ON COLUMN public.world_cities.postal_code IS 'Postal code associated with the city/locality (format varies by country).';
COMMENT ON COLUMN public.world_cities.created_at IS 'Timestamp of creation.';
COMMENT ON COLUMN public.world_cities.updated_at IS 'Timestamp of last update.';
-- COMMENT ON COLUMN public.world_cities.latitude IS 'Latitude coordinate.';
-- COMMENT ON COLUMN public.world_cities.longitude IS 'Longitude coordinate.';
-- COMMENT ON COLUMN public.world_cities.administrative_area IS 'Administrative division within the country (e.g., State, Province).';

-- Create indexes AFTER the table is created for better performance on lookups
CREATE INDEX idx_cities_country_id ON public.world_cities (country_id);

-- Optional: Add an index on the city name for faster searching by name (uncomment to create)
-- CREATE INDEX idx_cities_name ON public.world_cities (name);

-- Optional: Add index on postal code if frequently searched (uncomment to create)
-- CREATE INDEX idx_cities_postal_code ON public.world_cities (postal_code);


-- Optional: Ensure the trigger function to automatically update the updated_at timestamp exists
-- If you haven't created it with the world_countries script, you can create it now:
/*
CREATE OR REPLACE FUNCTION update_updated_at_column()
RETURNS TRIGGER AS $$
BEGIN
   NEW.updated_at = NOW();
   RETURN NEW;
END;
$$ language 'plpgsql';
*/

-- Apply the trigger to the new table
-- Make sure the function update_updated_at_column() exists before running this.
CREATE TRIGGER update_world_cities_updated_at
BEFORE UPDATE ON public.world_cities
FOR EACH ROW
EXECUTE FUNCTION update_updated_at_column(); -- Assumes the function update_updated_at_column() exists

-- Grant usage and select permissions (adjust schema and role names if needed)
-- GRANT USAGE ON SCHEMA public TO your_user_role;
-- GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE public.world_cities TO your_user_role; -- Adjust permissions as needed

