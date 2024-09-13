CREATE TABLE olx_data(
uuid SERIAL NOT NULL,
title varchar(300),
price float8,
url_listing varchar(300) NOT NULL,
kelurahan varchar(100),
kabupaten_kota varchar(100),
posting_date varchar(100),
created_at TIMESTAMP NOT NULL DEFAULT NOW(),
CONSTRAINT pk_olx_data PRIMARY KEY (uuid)
);

CREATE TABLE sales_data(
id serial not null,
name varchar,
main_category varchar,	
sub_category varchar,
image varchar,
link varchar,
ratings varchar,
no_of_ratings varchar,	
discount_price  float,
actual_price float,
created_at TIMESTAMP NOT NULL DEFAULT NOW(),
CONSTRAINT pk_sales_data PRIMARY KEY (id)
);


CREATE TABLE product_data(
"uuid" serial NOT NULL,
"id" varchar,
"prices.amountMax" float,
"prices.amountMin" float,
"prices.availability" varchar,
"prices.condition" varchar,
"prices.currency" varchar,
"prices.dateSeen" varchar,
"prices.isSale" boolean,
"prices.merchant" varchar,
"prices.shipping" varchar,
"prices.sourceURLs" varchar,
"asins" varchar,
"brand" varchar,
"categories" varchar,
"dateAdded" timestamp with time zone ,
"dateUpdated" timestamp with time zone ,
"keys" varchar,
"manufacturer" varchar,
"manufacturerNumber" varchar,
"name" varchar,
"primaryCategories" varchar,
"upc" varchar,
"weight" varchar,
"created_at" TIMESTAMP  DEFAULT NOW(),
CONSTRAINT pk_product_data PRIMARY KEY (uuid)
);