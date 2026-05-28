CREATE TABLE location (
    location_id INTEGER GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(150) NOT NULL,
    code VARCHAR(50) NOT NULL, -- Ej: STGO-01, BOD-CENTRAL
    address VARCHAR(255),
    city VARCHAR(100),
    region_name VARCHAR(100),
    location_type_id INTEGER NOT NULL,
    active BOOLEAN NOT NULL DEFAULT TRUE,
    created_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
    
    CONSTRAINT location_pk PRIMARY KEY (location_id),
    CONSTRAINT location_code_unique UNIQUE (code),
    -- Relación:
    CONSTRAINT location_type_fk FOREIGN KEY (location_type_id) REFERENCES location_type(location_type_id)
);
