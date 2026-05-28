CREATE TABLE movement (
    movement_id INTEGER GENERATED ALWAYS AS IDENTITY,
    asset_id INTEGER NOT NULL,
    user_id INTEGER NOT NULL,
    movement_type_id INTEGER NOT NULL,
    source_location_id INTEGER, -- NULLable porque el 'Ingreso' inicial no tiene origen
    destination_location_id INTEGER NOT NULL,
    source_status_id INTEGER,      -- Estado del equipo antes del movimiento
    destination_status_id INTEGER, -- Estado del equipo al llegar al destino
    movement_date TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
    notes TEXT,
    
    CONSTRAINT movement_pk PRIMARY KEY (movement_id),
    -- Relaciones:
    CONSTRAINT movement_asset_fk FOREIGN KEY (asset_id) REFERENCES asset(asset_id),
    CONSTRAINT movement_user_fk FOREIGN KEY (user_id) REFERENCES "user"(user_id),
    CONSTRAINT movement_type_fk FOREIGN KEY (movement_type_id) REFERENCES movement_type(movement_type_id),
    CONSTRAINT movement_source_location_fk FOREIGN KEY (source_location_id) REFERENCES location(location_id),
    CONSTRAINT movement_dest_location_fk FOREIGN KEY (destination_location_id) REFERENCES location(location_id),
    CONSTRAINT movement_source_status_fk FOREIGN KEY (source_status_id) REFERENCES asset_status(asset_status_id),
    CONSTRAINT movement_dest_status_fk FOREIGN KEY (destination_status_id) REFERENCES asset_status(asset_status_id)
);
