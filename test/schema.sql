CREATE EXTENSION IF NOT EXISTS intarray;

DROP TABLE test_models;

CREATE TABLE test_models (
  id serial PRIMARY KEY,
  test_attr_through_id INTEGER,
  content text,
  country_id integer,
  created_at timestamp,
  updated_at timestamp
);

DROP TABLE test_attrs;

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

DROP TABLE test_attr_throughs;

CREATE TABLE test_attr_throughs (
  id serial PRIMARY KEY,
  test_attr_id integer
);

DROP TABLE test_model_security_models;

CREATE TABLE test_model_security_models (
  id serial PRIMARY KEY,
  attr integer default 1,
  attr_2 integer default 1,
  test_attr_id integer
);

DROP TABLE n_way_join_items;

CREATE TABLE n_way_join_items (
  id serial PRIMARY KEY
);

DROP TABLE branches;

CREATE TABLE branches (
  id serial PRIMARY KEY,
  company_id integer,
  name text
);

DROP TABLE companies;

CREATE TABLE companies (
  id serial PRIMARY KEY,
  country_id integer,
  type text,
  name text
);

DROP TABLE countries;

CREATE TABLE countries (
  id serial PRIMARY KEY,
  name text
);
