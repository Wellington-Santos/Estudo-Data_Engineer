
Select max(product_name_lenght) tamanho_maximo_nome_produto
     , min(product_name_lenght) tamanho_minimo_nome_produto
     , avg(product_name_lenght) tamanho_medio_nome_produto
     , product_category_name
  from tb_products
  where product_name_lenght is not null
    and product_description_lenght > 100
 group by product_category_name
 HAVING avg(product_description_lenght) > 500
