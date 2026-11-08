CREATE TABLE customer (
    id uuid NOT NULL,
    archived BOOLEAN,
    archived_at TIMESTAMP WITH TIME ZONE,
    birth_date date,
    loyalty_points INTEGER,
    promotion_notifications_allowed BOOLEAN,
    registered_at TIMESTAMP WITH TIME ZONE,
    address_city VARCHAR(255),
    address_state VARCHAR(255),
    CONSTRAINT pk_customer PRIMARY KEY (id)
);