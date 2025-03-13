Select distinct coalesce(product_category_name, 'outros') as categoria_full_name
  from tb_products
 order by product_category_name