--
-- create tables
--

DROP TABLE IF EXISTS products; 
CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  merk INTEGER,
  kleur TEXT,
  nationaliteit TEXT,
  model INTEGER,
  motor NUMERIC(10, 2),
  name VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 2),  
);

/* dingen om toetevoegen*/
DROP TABLE IF EXISTS accesoires; 
CREATE TABLE accesoires (
  a_id INTEGER PRIMARY KEY AUTOINCREMENT,
  a_naam TEXT,
  a_kleur TEXT,
  soort INTEGER
);

DROP TABLE IF EXISTS uitlaat; 
CREATE TABLE uitlaat (
  u_id INTEGER PRIMARY KEY AUTOINCREMENT,
  u_kleur TEXT,
  merk TEXT,
  instalatie_tijd INTEGER
);
/* effe dingen splitsen voor logica */

DROP TABLE IF EXISTS uitlaatId_tabel; 
CREATE TABLE uitlaatId_tabel (
  ui_id INTEGER PRIMARY KEY AUTOINCREMENT,
  uitlaat_id INTEGER,
  merk_soort INTEGER
);

DROP TABLE IF EXISTS accesoiresId_tabel; 
CREATE TABLE accesoiresId_tabel (
  ac_id INTEGER PRIMARY KEY AUTOINCREMENT,
  merk_soort INTEGER,
  accesoires_id INTEGER
);

DROP TABLE IF EXISTS accesoiressoorten; 
CREATE TABLE accesoiressoorten (
  acs_id INTEGER PRIMARY KEY AUTOINCREMENT,
  acs_naam TEXT
);

DROP TABLE IF EXISTS model; 
CREATE TABLE model (
  g_id INTEGER PRIMARY KEY AUTOINCREMENT,
  g_naam TEXT
);
--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, description, code, price) values ('BMW M5', 'Mauris...', '816905633-0', 10.5, 1);
insert into products (name, description, code, price) values ('Audi rs7', 'Nulla... ', '077030122-3', 11, 2);
insert into products (name, description, code, price) values ('Mercedes c63s', 'Pellentesque... ', '445924201-X', 13.5, 3);
insert into products (name, description, code, price) values ('Dodge Charger', 'Duis bibendum...', '693155505-7', 13.5, 3);
insert into products (name, description, code, price) values ('Porsche Panemera', 'Nulla... ', '492662523-7', 14, 1);

insert into products (name) values ('v8')
insert into products (name) values ('v10')
insert into products (name) values ('v6')

insert into products (name) values ('duits')
insert into products (name) values ('engels')
insert into products (name) values ('amerikaans')