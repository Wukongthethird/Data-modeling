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
    id text PRIMARY KEY,
    model text NOT NULL,
    cost FLOAT not NULL,
    UNIQUE (model)
);

CREATE TABLE orders (
    orderID SERIAL PRIMARY KEY,
    order_date DATE,
    fly_quantity INT DEFAULT 0, 
    haul_quantity INT DEFAULT 0, 
    skin_quantity INT DEFAULT 0,
    bud_quantity INT DEFAULT 0,
    field text
)

create TABLE 
