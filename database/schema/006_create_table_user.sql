CREATE TABLE "user" (
    user_id INTEGER GENERATED ALWAYS AS IDENTITY,
    rut INTEGER NOT NULL,
    dv CHAR(1) NOT NULL, -- Soporta números y la letra 'K'
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL,
    username VARCHAR(50) NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    role_id INTEGER NOT NULL,
    active BOOLEAN NOT NULL DEFAULT TRUE,
    blocked BOOLEAN NOT NULL DEFAULT FALSE,
    failed_login_attempts INTEGER NOT NULL DEFAULT 0,
    last_login_at TIMESTAMPTZ,
    created_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
    
    CONSTRAINT user_pk PRIMARY KEY (user_id),
    CONSTRAINT user_rut_unique UNIQUE (rut),
    CONSTRAINT user_username_unique UNIQUE (username),
    CONSTRAINT user_email_unique UNIQUE (email),
    -- Relación:
    CONSTRAINT user_role_fk FOREIGN KEY (role_id) REFERENCES role(role_id)
);
