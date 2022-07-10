# Antes de iniciar:

# COMENTARIOS:
-- comentario NA LINHA DE EDIÇÃO.
# comentario ANTES DA LINHA DE EDIÇÃO.

/* COMENTE
EM VARIAS
LINHAS. */

# Paraver todas os bancos:
show databases;

# Para ver todas as tabelas:
show tables;

# CAPITULO 02.

# OBTENDO COLUNAS:
#Todas as colunas de uma tabela:
select *
from products;

# Uma coluna especifica:
select prod_name
from products;

#varias colunas especificas
select prod_id, prod_name, prod_price
from products;

# Obtendo linhas distintas:
select vend_id
from products;

# Obtendo linhas distintas SEM REPETIR ITEM:
select distinct vend_id
from products;

#LIMITANDO RESULTADOS:
select prod_name
from products
limit 5;

#LIMITANDO RESULTADOS, Destinando onde deve-se começar:
# OBS: A linha inicial é a linha 0 (zero).

select prod_name
from products
limit 5			-- 5 Resultados
offset 5;		-- Começando na Linha 5.

# DESAFIOS:

# 01.
select cust_id
from customers;

# 02.
select distinct prod_id
from orderitems;

# 03.
select * 
# select cust_name -- Para ver somente a coluna cust_name.
from customers ;

# CAPITULO 03.
# Classificando dados obtidos:

# 01. Ordenando:
select prod_name
from products
order by prod_name;

# 02. Ordenando por varias colunas:
select prod_id, prod_price, prod_name
from products
order by prod_price, prod_name;

# 03. Classificar pela posição da coluna.
# OBS:  ASC - PADRÃO. Ordem ascendente.
#		DESC - Ordem descendente.

select prod_id, prod_price, prod_name
from products
order by 2, 3; -- ORDENA PELA COLUNA 2 (prod_price) depois pela coluna 3 (prod_name) da lista SELECT.

select prod_id, prod_price, prod_name
from products
order by prod_price DESC, prod_name;

# DESAFIOS:
# 01.
select cust_name
from customers
order by cust_name DESC;

# 02.
select cust_id, order_num
from orders
order by cust_id, order_num desc;

# 03.
select *
from orderitems
order by quantity desc, item_price desc;

# 04.
select vend_name
from vendors
order by vend_name desc; -- No exercicio esta faltando o BY de ORDER BY.

# CAPITULO 04.
# ESPECIFICANDO CONDIÇÕES DE PESQUISA (WHERE).

# 01. FILTRANDO SOMENTE OS VALORES 3.49 DA COLUNA PROD_PRICE DA TABELA PRODUCTS.
select prod_name, prod_price
from products
where prod_price = 3.49;

# 02. OPERADORES:

select prod_name, prod_price
from products
where prod_price < 10;

select prod_name, prod_price
from products
where vend_id <> 'dll01'; -- NÃO IGUALDADE - PODE SER USADO TAMBEM =!

# VERIFICAR INTERVALO DE VALORES (BETWEEN):
select prod_name, prod_price
from products
where prod_price between 5 AND 10;

# VERIFICANDO SE VALORES SÃO NULOS (NULL):
select cust_name
from customers
where cust_email is null ;

# Desafios:
# 01.
select prod_id, prod_name
from products
where prod_price = 9.49 ;

# 02. 
select prod_id, prod_name
from products
where prod_price >= 9 ;

# 03. 
select order_num, quantity
from orderitems
where quantity >= 100;

# 04.
select prod_name, prod_price
from products
where prod_price between 3 and 6;