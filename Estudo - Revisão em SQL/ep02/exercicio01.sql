Select product_category_name
     , max(product_description_lenght) tamanho_maximo_descricao_produto
     , min(product_description_lenght) tamanho_minimo_descricao_produto
     , avg(product_description_lenght) tamanho_medio_descricao_produto
  from tb_products
  where product_description_lenght is not null
 group by product_category_name

