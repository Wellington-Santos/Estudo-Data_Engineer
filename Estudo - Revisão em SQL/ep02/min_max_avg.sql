select product_category_name
     , count(*) as qtde_produtos
     , min(product_weight_g) as menor_peso
     , max(product_weight_g) as maior_peso
     , avg(product_weight_g) as media_peso
  from tb_products
 where product_category_name is not null
   and product_category_name != 'alimentos'
   and product_category_name <> 'agro_industria_e_comercio'
 group by product_category_name