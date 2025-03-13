-- Qual a receita de cada categoria de produto?
-- E o total de vendas ?
-- Em unidades e em pedidos?
-- considerando as vendas de 2017 e pedidos entregues

Select 
       t2.product_category_name,
       sum(t1.price) as receita,
       count(*) as qtde_itens_vendidos,
       count(distinct t1.order_id) as qtde_pedidos,
       count(*) / cast(count(distinct t1.order_id) as float) as media_item_por_pedido

       
  from tb_order_items as t1
  left join tb_products as t2
    on t2.product_id = t1.product_id
  left join tb_orders as t3
    on t3.order_id = t1.order_id
 where t3.order_status = 'delivered'
   and cast(strftime('%Y', t3.order_approved_at) as int) = 2017
 group by t2.product_category_name
 order by count(*) / cast(count(distinct t1.order_id) as float) desc;

