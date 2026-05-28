CREATE TABLE asset (
    asset_id INTEGER GENERATED ALWAYS AS IDENTITY,
    serial_number VARCHAR(100) NOT NULL,
    internal_code VARCHAR(100) NOT NULL,
    brand VARCHAR(100) NOT NULL,
    model VARCHAR(100) NOT NULL,
    hostname VARCHAR(100),
    pos_number VARCHAR(50),
    teamviewer_id VARCHAR(50),
    purchase_date DATE,
    received_at TIMESTAMPTZ,
    warranty_end_date DATE,
    notes TEXT,
    asset_type_id INTEGER NOT NULL,
    asset_status_id INTEGER NOT NULL,
    current_location_id INTEGER NOT NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
    
    CONSTRAINT asset_pk PRIMARY KEY (asset_id),
    CONSTRAINT asset_serial_unique UNIQUE (serial_number),
    CONSTRAINT asset_internal_code_unique UNIQUE (internal_code),
    -- Relaciones:
    CONSTRAINT asset_type_fk FOREIGN KEY (asset_type_id) REFERENCES asset_type(asset_type_id),
    CONSTRAINT asset_status_fk FOREIGN KEY (asset_status_id) REFERENCES asset_status(asset_status_id),
    CONSTRAINT asset_current_location_fk FOREIGN KEY (current_location_id) REFERENCES location(location_id)
);
