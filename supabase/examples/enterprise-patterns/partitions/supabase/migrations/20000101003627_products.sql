create table products (
    id bigint generated by default as identity primary key,
    name text,
    category text,
    price bigint
)
partition by hash (id);

create table products_one 
	partition of products
  for values with (modulus 2, remainder 1);

create table products_two 
	partition of products
  for values with (modulus 2, remainder 0);