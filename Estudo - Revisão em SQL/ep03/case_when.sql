Select
        DISTINCT case when product_category_name is null then 'outros'
                      when product_category_name = 'alimentos'
                        or product_category_name = 'alimentos_bebidas' then 'alimentos'
                      when product_category_name in ('artes', 'artes_e_artesanato') then 'artes'
                      when product_category_name like "%artigos%" then 'artigos'
                      when product_category_name like "%casa%" then 'casa'
                      when product_category_name like "%construcao%" then 'construcao'
                      when product_category_name like "%fashion%" then 'fashion'
                      when product_category_name like "%moveis%" then 'moveis'
                      when product_category_name like "%eletrodomestico%" then 'eletrodomesticos'
                      when product_category_name like "%livros%" then 'livros'
                      when product_category_name like "%telefonia%" then 'telefonia'
                      else product_category_name
                 end as categoria_full_name
 
  from tb_products
 order by 1 