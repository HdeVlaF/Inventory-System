CREATE TABLE asset_status (
    asset_status_id INTEGER GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(50) NOT NULL, -- Ej: Operativo, En Reparación, De Baja, En Tránsito
    description VARCHAR(255),
    
    CONSTRAINT asset_status_pk PRIMARY KEY (asset_status_id),
    CONSTRAINT asset_status_name_unique UNIQUE (name)
);
