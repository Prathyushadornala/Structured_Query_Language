USE jfs_58;
CREATE TABLE products (
    product_id INT NOT NULL AUTO_INCREMENT,
    sku VARCHAR(20) NOT NULL,
    product_name VARCHAR(150) NOT NULL,
    category VARCHAR(80) NOT NULL,
    brand VARCHAR(80),
    unit_price DECIMAL(12, 2) NOT NULL,
    quantity_in_stock INT UNSIGNED NOT NULL DEFAULT 0,
    reorder_level INT UNSIGNED  NOT NULL DEFAULT 5,
    manufacture_date DATE,
    expiry_date DATE,
    product_status VARCHAR(15) DEFAULT 'ACTIVE',
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT `uq_sku` UNIQUE (sku),
    CONSTRAINT `pk_products_product_id` PRIMARY KEY (product_id),
    CONSTRAINT `chk_unit_price_greater_than_0` CHECK (unit_price > 0),
    CONSTRAINT `chk_quantity_in_stock_non_negative` CHECK (quantity_in_stock >= 0),
    CONSTRAINT `chk_reorder_level_non_negative` CHECK (reorder_level >= 0),
    CONSTRAINT `chk_expiry_date` CHECK (expiry_date IS NULL OR manufacture_date IS NULL OR expiry_date > manufacture_date)
);

INSERT INTO products (product_id, sku, product_name, category, brand, unit_price, quantity_in_stock, reorder_level, manufacture_date, expiry_date) VALUES (101, 'sku_1', 'Chips', 'Namkeen', 'Lays', 18.00, 25, 4, '2026-09-01', '2026-09-10');

INSERT INTO products (product_id, sku, product_name, category, brand, unit_price, quantity_in_stock, reorder_level, manufacture_date, expiry_date) VALUES (102, 'sku_33', 'Laptop', 'Electronics', 'HP', 30.00, 57, 15, '2026-08-15', '2027-02-22');

INSERT INTO products (product_id, sku, product_name, category, brand, unit_price, quantity_in_stock, reorder_level, manufacture_date, expiry_date) VALUES (103, 'sku_2', 'Orange Juice', 'Juices', 'Paper Boat', 24.00, 30, 3, '2026-07-01', '2027-07-01');

SELECT * FROM products;

