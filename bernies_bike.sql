-- BIKES
--     name
--     id
--     cost
--     selling price

-- quanitity

--     orderID

-- orders
--     orderID
--     date
--     flyq    (BIKES.ID)
--     haulq   (BIKES.ID)
--     skinq   (BIKES.ID)
--     budq    (BIKES.ID)
--     field

-- price 
--     orderID
--     bike id
--     price  * disc

CREATE TABLE bikes (
    id TEXT PRIMARY KEY,
    model TEXT NOT NULL,
    cost NUMERIC(10, 2) not NULL,
    -- discount INT,
    UNIQUE (model)
);

CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    order_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    -- fly_quantity INT DEFAULT 0, 
    -- haul_quantity INT DEFAULT 0, 
    -- skin_quantity INT DEFAULT 0,
    -- bud_quantity INT DEFAULT 0,
    notes TEXT
);

CREATE TABLE sales (
    id SERIAL PRIMARY KEY,
    bike_id INT NOT NULL REFERENCES bikes,
    order_id INT NOT NULL REFERENCES order,
    -- cost NUMERIC(10, 2) NOT NULL,
    quantity INT NOT NULL
    -- notes TEXT
);
