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
    Orbital_periods_in_Yrs FlOAT,
    planet_name TEXT NOT NULL,
    starid int NOT NULL REFERENCES star
);

create TABLE moons (
    moon_name TEXT NOT NULL,
    planetid int NOT NULL REFERENCES planet
);


INSERT INTO star (star_name, temp_kelvin)
    VALUES ('The Sun', 5800 )

INSERT INTO star (star_name, temp_kelvin)
    VALUES ('Proxima Centauri', 3042 )

INSERT INTO star (star_name, temp_kelvin)
    VALUES ('Gliese 876', 3042 )

    
