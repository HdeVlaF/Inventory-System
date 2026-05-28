CREATE TABLE movement_type (
    movement_type_id INTEGER GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(50) NOT NULL, -- Ej: Ingreso, Traslado, Reparación, Baja
    description VARCHAR(255),
    created_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP NOT NULL,
    
    CONSTRAINT movement_type_pk PRIMARY KEY (movement_type_id),
    CONSTRAINT movement_type_name_unique UNIQUE (name)
);
