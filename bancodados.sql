//// -- LEVEL 1
//// -- Schemas, CREATE TABLEs and References

// Creating CREATE TABLEs
// You can define the CREATE TABLEs with full schema names
CREATE TABLE paises (
  id int,
  nome_pais varchar,
  country_code varchar,
  "created at" varchar,
  admin_id int [ref: > U.id]
  Indexes (
    (id, country_code) [pk]
  )
)

// If schema name is omitted, it will default to "public" schema.
CREATE TABLE users as U (
  id int [pk, increment] // auto-increment
  nome varchar
  email varchar
  senha varchar
)

CREATE TABLE regioes (
  id int
  nome_regiao varchar
  country_code varchar
  "created at" varchar
  admin_id int [ref: > U.id]
  Indexes (
    (id, country_code) [pk]
  )
)
CREATE TABLE municipios (
  id int
  nome_municipios varchar
  country_code varchar
  "created at" varchar
  admin_id int [ref: > U.id]
  Indexes (
    (id, country_code) [pk]
  )
)
CREATE TABLE distritos (
  id int
  nomedistritos varchar
  country_code varchar
  "created at" varchar
  admin_id int [ref: > U.id]
  Indexes (
    (id, country_code) [pk]
  )
)
CREATE TABLE bairro (
  id int
  nome_bairro varchar
  country_code varchar
  "created at" varchar
  admin_id int [ref: > U.id]
  Indexes (
    (id, country_code) [pk]
  )
)
CREATE TABLE tplongradouro (
  id int
  nome_tplongradouro varchar
  country_code varchar
  "created at" varchar
  admin_id int [ref: > U.id]
  Indexes (
    (id, country_code) [pk]
  )
)
CREATE TABLE longradouro (
  id int
  nome_longradouro varchar
  "created at" varchar
  country_code varchar
  admin_id int [ref: > U.id]
  Indexes (
    (id, country_code) [pk]
  )
)
CREATE TABLE estradas_municipais (
  id int
  nome_estradasmuni varchar
  country_code varchar
  "created at" varchar
  admin_id int [ref: > U.id]
  Indexes (
    (id, country_code) [pk]
  )
)







