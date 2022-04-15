CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
CREATE TABLE IF NOT EXISTS seller(
 id uuid DEFAULT uuid_generate_v4 () PRIMARY KEY, 
 name text NOT NULL
);
CREATE TABLE IF NOT EXISTS buyer(
 id uuid DEFAULT uuid_generate_v4 () PRIMARY KEY, 
 name text NOT NULL
);
CREATE TABLE IF NOT EXISTS product(
 id uuid DEFAULT uuid_generate_v4 () PRIMARY KEY, 
 name text NOT NULL,
 isbn text NOT NULL,
 seller_id uuid NOT NULL,
 -- CONSTRAINT
 CONSTRAINT seller_id_fk FOREIGN KEY (seller_id) REFERENCES seller(id) ON DELETE CASCADE 
);