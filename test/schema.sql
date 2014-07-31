CREATE EXTENSION IF NOT EXISTS intarray;
CREATE EXTENSION IF NOT EXISTS hstore;

DROP TABLE IF EXISTS test_models;

CREATE TABLE test_models (
  id serial PRIMARY KEY,
  test_attr_through_id INTEGER,
  content text,
  country_id integer,
  created_at timestamp,
  updated_at timestamp
);

DROP TABLE IF EXISTS test_attrs;

CREATE TABLE test_attrs (
  id serial PRIMARY KEY,
  test_model_id integer,
  test_another_model_id integer,
  test_a_third_model_id integer,
  branch_id integer,
  company_id integer,
  test_attr_through_id INTEGER,
  n_way_join_item_id INTEGER,
  test_model_security_model_id integer,
  attr integer default 1
);

DROP TABLE IF EXISTS test_attr_throughs;

CREATE TABLE test_attr_throughs (
  id serial PRIMARY KEY,
  test_attr_id integer
);

DROP TABLE IF EXISTS test_model_security_models;

CREATE TABLE test_model_security_models (
  id serial PRIMARY KEY,
  attr integer default 1,
  attr_2 integer default 1,
  test_attr_id integer
);

DROP TABLE IF EXISTS n_way_join_items;

CREATE TABLE n_way_join_items (
  id serial PRIMARY KEY
);

DROP TABLE IF EXISTS branches;

CREATE TABLE branches (
  id serial PRIMARY KEY,
  company_id integer,
  name text
);

DROP TABLE IF EXISTS companies;

CREATE TABLE companies (
  id serial PRIMARY KEY,
  country_id integer,
  type text,
  name text
);

DROP TABLE IF EXISTS countries;

CREATE TABLE countries (
  id serial PRIMARY KEY,
  name text
);

DROP TABLE IF EXISTS stores;

CREATE TABLE stores (
  id serial PRIMARY KEY,
  product_ids integer[],
  permissions_flags hstore
);
