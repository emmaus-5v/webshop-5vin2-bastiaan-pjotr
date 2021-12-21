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
  auto_merk INTEGER,
  uitlaat_merk INTEGER
);

DROP TABLE IF EXISTS accesoiresId_tabel; 
CREATE TABLE accesoiresId_tabel (
  ac_id INTEGER PRIMARY KEY AUTOINCREMENT,
  auto_merk INTEGER,
  accesoires_id INTEGER
);

DROP TABLE IF EXISTS accesoiressoorten; 
CREATE TABLE accesoiressoorten (
  acs_id INTEGER PRIMARY KEY AUTOINCREMENT,
  acs_naam TEXT
);

DROP TABLE IF EXISTS model; 
CREATE TABLE model (
  m_id INTEGER PRIMARY KEY AUTOINCREMENT,
  m_naam TEXT
);

DROP TABLE IF EXISTS uitlaatsoorten;
CREATE TABLE uitlaatsoorten (
uis_id INTEGER PRIMARY KEY AUTOINCREMENT,
uis_naam TEXT
);

DROP TABLE IF EXISTS merksoort;
CREATE TABLE merksoort (
merk_id INTEGER PRIMARY KEY AUTOINCREMENT,
merk_naam TEXT
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
insert into products (name, description, code, price, merk, kleur, nationaliteit, model, motor) values ('M5', 'Mauris...', '816905633-0', 10.5, 2, duits, v8);
insert into products (name, description, code, price, merk, kleur, nationaliteit, model, motor) values ('rs7', 'Nulla... ', '077030122-3', 11, 1, duits, v8 );
insert into products (name, description, code, price, merk, kleur, nationaliteit, model, motor) values ('c63s', 'Pellentesque... ', '445924201-X', 13.5, 3, duits, v8);
insert into products (name, description, code, price, merk, kleur, nationaliteit, model, motor) values ('Charger', 'Duis bibendum...', '693155505-7', 13.5, 5, amerikaans, v8);
insert into products (name, description, code, price, merk, kleur, nationaliteit, model, motor) values ('Panemera', 'Nulla... ', '492662523-7', 14, 4, duits, v10);
insert into products (name, description, code, price, merk, kleur, nationaliteit, model, motor) values ('rs3', 'Nulla... ', '492662523-7', 14, 1, duits, v10);
insert into products (name, description, code, price, merk, kleur, nationaliteit, model, motor) values ('a45', 'Nulla... ', '492662523-7', 14, 3, duits, v10);
insert into products (name, description, code, price, merk, kleur, nationaliteit, model, motor) values ('gt2rs', 'Nulla... ', '492662523-7', 14, 4, duits, v10);

insert into accesoires (a_naam, a_kleur, soort) values ('Spoiler', 'zwart', 1);
insert into accesoires (a_naam, a_kleur, soort) values ('LED lampen', 'RBG', 2);  
insert into accesoires (a_naam, a_kleur, soort) values ('voorlampen', 'wit', 2); 
insert into accesoires (a_naam, a_kleur, soort) values ('achterlampen', 'rood', 2);
insert into accesoires (a_naam, a_kleur, soort) values ('turbo', 'grijs', 3);  
insert into accesoires (a_naam, a_kleur, soort) values ('supercharger', 'grijs', 3); 
insert into accesoires (a_naam, a_kleur, soort) values ('Front splitter', 'zwart', 1);
insert into accesoires (a_naam, a_kleur, soort) values ('defuser', 'zwart', 1);

insert into uitlaat (u_merk, u_kleur, instalatie_tijd) values (1, 'zwart', 60);
insert into uitlaat (u_merk, u_kleur, instalatie_tijd) values (2, 'groen', 60);
insert into uitlaat (u_merk, u_kleur, instalatie_tijd) values (3, 'zwart', 70);

insert into uitlaatsoorten (uis_naam) values ('Akraapovic');
insert into uitlaatsoorten (uis_naam)) values ('Armytrix');
insert into uitlaatsoorten (uis_naam) values ('Milltek');


/*nog effe naar dit kijken bas met die gekke n:m en 1:n dingen*/
insert into uitlaatId_tabel (auto_merk, uitlaat_merk) values (1, );
insert into uitlaatId_tabel (auto_merk, uitlaat_merk) values (1, );
insert into uitlaatId_tabel (auto_merk, uitlaat_merk) values (2, );
insert into uitlaatId_tabel (auto_merk, uitlaat_merk) values (2, );
insert into uitlaatId_tabel (auto_merk, uitlaat_merk) values (3, );
insert into uitlaatId_tabel (auto_merk, uitlaat_merk) values (3, );

insert into model (m_naam) values('sedan');
insert into model (m_naam) values('coupe');
insert into model (m_naam) values('hatchback');

insert into accesoiressoorten (acs_naam) values('visuele onderdelen');
insert into accesoiressoorten (acs_naam) values('verlichting');
insert into accesoiressoorten (acs_naam) values('motor upgrades');

insert into merksoort (merk_naam) values('audi');
insert into merksoort (merk_naam) values('bmw');
insert into merksoort (merk_naam) values('mercedes');
insert into merksoort (merk_naam) values('porsche');
insert into merksoort (merk_naam) values('dodge');