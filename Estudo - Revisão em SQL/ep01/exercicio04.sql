-- Tarefa 01 - Quantos produtos temos na categoria 'beleza_saude' abaixo de 1 litro?

Select count(*) as quantidade_produtos_beleza_saude
  from tb_products
 where product_category_name = 'beleza_saude'
   and volume_litro < 1