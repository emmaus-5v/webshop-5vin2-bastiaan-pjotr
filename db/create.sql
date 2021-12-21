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
  price NUMERIC(10, 2)  
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
  u_merk TEXT,
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

DROP TABLE IF EXISTS uitlaatsoorten;
CREATE TABLE uitlaatsoorten (
uis_id INTEGER PRIMARY KEY AUTOINCREMENT,
uis_naam TEXT
);

DROP TABLE IF EXISTS merksoorten;
CREATE TABLE accesoiresoorten (
acs_id INTEGER PRIMARY KEY AUTOINCREMENT,
acs_naam TEXT
);


--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--
/* nu alles erin zetten jippie */
insert into products (name, description, code, price, merk, kleur, nationaliteit, motor) values ('BMW M5', 'Mauris...', '816905633-0', 10.5, 1, duits, v8);
insert into products (name, description, code, price, merk, kleur, nationaliteit, motor) values ('Audi rs7', 'Nulla... ', '077030122-3', 11, 2, duits, v8 );
insert into products (name, description, code, price, merk, kleur, nationaliteit, motor) values ('Mercedes c63s', 'Pellentesque... ', '445924201-X', 13.5, 3, duits, v8);
insert into products (name, description, code, price, merk, kleur, nationaliteit, motor) values ('Dodge Charger', 'Duis bibendum...', '693155505-7', 13.5, 4, amerikaans, v8);
insert into products (name, description, code, price, merk, kleur, nationaliteit, motor) values ('Porsche Panemera', 'Nulla... ', '492662523-7', 14, 5, duits, v10);
insert into products (name, description, code, price, merk, kleur, nationaliteit, motor) values ('Porsche Panemera', 'Nulla... ', '492662523-7', 14, 5, duits, v10);
insert into products (name, description, code, price, merk, kleur, nationaliteit, motor) values ('Porsche Panemera', 'Nulla... ', '492662523-7', 14, 5, duits, v10);
insert into products (name, description, code, price, merk, kleur, nationaliteit, motor) values ('Porsche Panemera', 'Nulla... ', '492662523-7', 14, 5, duits, v10);

insert into accesoires (a_naam, a_kleur, soort) values ('Spoiler', 'zwart', 1);
insert into accesoires (a_naam, a_kleur, soort) values ('LED lampen', 'RBG', 2);  
insert into accesoires (a_naam, a_kleur, soort) values ('voorlampen', 'wit', 2); 
insert into accesoires (a_naam, a_kleur, soort) values ('achterlampen', 'rood', 2);
insert into accesoires (a_naam, a_kleur, soort) values ('turbo', 'grijs', 3);  
insert into accesoires (a_naam, a_kleur, soort) values ('supercharger', 'grijs', 3); 
insert into accesoires (a_naam, a_kleur, soort) values ('Front splitter', 'zwart', 1);
insert into accesoires (a_naam, a_kleur, soort) values ('defuser', 'zwart', 1);

insert into uitlaat (u_merk, u_kleur, instalatie_tijd) values ('Akeapovic', 'zwart', 60);
insert into uitlaat (u_merk, u_kleur, instalatie_tijd) values ('Armyytrix', 'groen', 60);
insert into uitlaat (u_merk, u_kleur, instalatie_tijd) values ('Milltek', 'zwart', 70);

