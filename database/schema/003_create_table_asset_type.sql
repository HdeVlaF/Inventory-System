CREATE TABLE asset_type (
    asset_type_id INTEGER GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(100) NOT NULL,
    category VARCHAR(100) NOT NULL, -- Ej: Computación, Impresión, Redes
    description VARCHAR(255),
    created_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP NOT NULL,
    
    CONSTRAINT asset_type_pk PRIMARY KEY (asset_type_id),
    CONSTRAINT asset_type_name_unique UNIQUE (name)
);
