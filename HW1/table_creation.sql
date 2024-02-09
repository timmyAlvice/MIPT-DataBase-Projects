create table if not exists transactions (
  transaction_id serial not null unique primary key
  ,product_surragate_id serial not null
  ,customer_id serial not null
  ,transaction_date date
  ,online_order bool
  ,order_status varchar(9)
  ,list_price numeric(6, 2) not null
);


create table if not exists products (
  product_surragate_id serial not null unique primary key
  ,product_id serial
  ,brand text
  ,product_line varchar(8)
  ,product_class varchar(6)
  ,product_size varchar(6)
  ,standard_cost numeric(6, 2)
);


create table if not exists customers (
  customer_id serial not null unique primary key 
  ,address_surragate_id serial
  ,first_name text
  ,last_name text
  ,gender varchar(6)
  ,DOB date
  ,job_title text
  ,job_industry_category text
  ,wealth_segment text
  ,deceased_indicator char(1)
  ,owns_car varchar(3)
  ,property_valuation int2
);
  
  
create table if not exists addresses (
  address_surragate_id serial not null unique primary key
  ,address text not null
  ,postcode int2 not null
  ,state text
  ,country text
);