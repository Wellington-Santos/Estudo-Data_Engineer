-- Tarefa 01 - Quantos produtos temos na categoria 'artes'?

Select count(*) as quantidade_produto_artes 
  from tb_products
 where product_category_name = 'artes';
