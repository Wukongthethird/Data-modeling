--createdb outer_space

-- sun table
create Table star(
    id SERIAL PRIMARY KEY,
    star_name TEXT not NUll,
    temp_kelvin INT NOT NULL
);

-- planet
create Table planet(
    planetid  SERIAL PRIMARY KEY,
    planet_name TEXT NOT NULL,
    Orbital_periods_in_Yrs FlOAT,
    starid int NOT NULL REFERENCES star
);

-- moon
create TABLE moons (
    moon_id SERIAL PRIMARY KEY,
    moon_name TEXT NOT NULL,
    planetid int NOT NULL REFERENCES planet
);


INSERT INTO star (star_name, temp_kelvin)
    VALUES 
    ('The Sun', 5800),
    ('Proxima Centauri', 3042),
    ('Gliese 876', 3192);

INSERT INTO planet (planet_name, Orbital_periods_in_Yrs, starid)
    VALUES 
    ('Earth', 1.00, 1),
    ('Mars', 1.882, 1),
    ('Venus', 0.62, 1),
    ('Proxima Centauri b', 0.03, 2),
    ('Gliese 876 b', 0.236, 3);

INSERT INTO moons (moon_name, planetid)
    VALUES
    ('The Moon', 1),
    ('Phobos', 2),
    ('Deimos', 2);

    
