CREATE TABLE "order" (
    id BIGINT NOT NULL,
    customer_id uuid NOT NULL,
    status VARCHAR(255),
    total_amount NUMERIC(38, 2),
    total_items INTEGER,
    payment_method VARCHAR(255),
    placed_at TIMESTAMP WITH TIME ZONE,
    paid_at TIMESTAMP WITH TIME ZONE,
    ready_at TIMESTAMP WITH TIME ZONE,
    canceled_at TIMESTAMP WITH TIME ZONE,
    shipping_city VARCHAR(255),
    shipping_state VARCHAR(255),
    CONSTRAINT pk_order PRIMARY KEY (id)
);

CREATE INDEX idx_order_customer_id ON "order" (customer_id);
CREATE INDEX idx_order_paid_at ON "order" (paid_at);