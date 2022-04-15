-- Drops existing tables, so we start fresh with each
-- run of this script
-- e.g. DROP TABLE IF EXISTS ______;

-- CREATE TABLES
DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS activity;
DROP TABLE IF EXISTS companies;
DROP TABLE IF EXISTS salesperson;
DROP TABLE IF EXISTS industries;

CREATE TABLE contacts (
id INTEGER PRIMARY KEY AUTOINCREMENT,
first_name TEXT,
last_name TEXT,
email TEXT,
phone_number TEXT,
title TEXT,
company_id INTEGER
);

CREATE TABLE activity ( 
id INTEGER PRIMARY KEY AUTOINCREMENT,
salesperson_id INTEGER,
contact_id INTEGER,
created_at TEXT,
type TEXT
);

CREATE TABLE companies ( 
id INTEGER PRIMARY KEY AUTOINCREMENT,
company_name TEXT,
industry_id INTEGER
);

CREATE TABLE salesperson ( 
 id INTEGER PRIMARY KEY AUTOINCREMENT,
 first_name TEXT,
 last_name TEXT,
 email TEXT,
);

CREATE TABLE industries ( 
 id INTEGER PRIMARY KEY AUTOINCREMENT,
 industry TEXT
);