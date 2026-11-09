CREATE TABLE order_item (
    id BIGINT NOT NULL,
    order_id BIGINT NOT NULL,
    price NUMERIC(38, 2),
    product_id uuid,
    product_name VARCHAR(255),
    quantity INTEGER,
    total_amount NUMERIC(38, 2),
    CONSTRAINT pk_order_item PRIMARY KEY (id)
);

CREATE INDEX idx_order_item_order_id ON order_item (order_id);
CREATE INDEX idx_order_item_product_id ON order_item (product_id);
