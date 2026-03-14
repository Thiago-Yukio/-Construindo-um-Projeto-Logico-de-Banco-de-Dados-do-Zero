CREATE TABLE "cliente" (
  "id_cliente" integer PRIMARY KEY,
  "nome" varchar(20) NOT NULL,
  "sobrenome" varchar(20) NOT NULL,
  "cpf" char(11) NOT NULL,
  "data_nascimento" date NOT NULL,
  "email" varchar(40) NOT NULL,
  "endereço" varchar(50) NOT NULL
);

CREATE TABLE "compra" (
  "id_compra" integer PRIMARY KEY,
  "id_cliente" integer,
  "id_vendedor" integer,
  "pagamento" enum NOT NULL,
  "data_compra" date NOT NULL,
  "tipo_produto" enum NOT NULL,
  "fabrica" varchar(20) NOT NULL,
  "valor" numeric(10,2) NOT NULL
);

CREATE TABLE "vendedor" (
  "id_vendedor" integer PRIMARY KEY,
  "cpf" char(11) NOT NULL,
  "cnpj" char(14) NOT NULL,
  "nome" varchar(20) NOT NULL,
  "sobrenome" varchar(20) NOT NULL,
  "endereço" varchar(50) NOT NULL,
  "data_nascimento" date NOT NULL,
  "email" varchar(40) NOT NULL
);

ALTER TABLE "compra" ADD FOREIGN KEY ("id_cliente") REFERENCES "cliente" ("id_cliente") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "compra" ADD FOREIGN KEY ("id_vendedor") REFERENCES "vendedor" ("id_vendedor") DEFERRABLE INITIALLY IMMEDIATE;
