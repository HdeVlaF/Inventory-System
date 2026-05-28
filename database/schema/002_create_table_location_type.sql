CREATE TABLE location_type (
    location_type_id INTEGER GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(100) NOT NULL,
    description VARCHAR(255),
    created_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP NOT NULL,
    
    CONSTRAINT location_type_pk PRIMARY KEY (location_type_id),
    CONSTRAINT location_type_name_unique UNIQUE (name)
);
