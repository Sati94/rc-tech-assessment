---Creating homeroom table

CREATE TABLE homeroom (
  id SERIAL PRIMARY KEY,
  name VARCHAR(10) UNIQUE
  );

  CREATE INDEX id_homeroom_name ON homeroom(name);

  INSERT INTO homeroom(name) VALUES ('9A');
  INSERT INTO homeroom(name) VALUES ('9B');
  