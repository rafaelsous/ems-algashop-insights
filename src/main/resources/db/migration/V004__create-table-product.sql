CREATE TABLE product (
    id uuid NOT NULL,
    NAME VARCHAR(255),
    brand VARCHAR(255),
    regular_price NUMERIC(38, 2),
    sale_price NUMERIC(38, 2),
    quantity_in_stock INTEGER,
    enabled BOOLEAN,
    category_id uuid,
    category_name VARCHAR(255),
    added_at TIMESTAMP WITH TIME ZONE,
    updated_at TIMESTAMP WITH TIME ZONE,
    CONSTRAINT pk_product PRIMARY KEY (id)
);

CREATE INDEX idx_product_category_id ON product (category_id);