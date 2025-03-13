-- Exercício 2
-- Qual o valor de receita gerada por sellers de cada estado?
-- Considere a base completa, com apenas pedidos entregues.

-- Select 
--        t1.order_id,
--        t2.seller_id,
--        sum(t2.price) As receita,
--        t3.seller_state
--   From tb_orders As t1
--   Left Join tb_order_items As t2 On t2.order_id = t1.order_id
--   Left Join tb_sellers As t3 On t3.seller_id = t2.seller_id
--  Where t1.order_status = 'delivered'
--  Group By t3.seller_state

---------- Solução ----------------------------

Select 
       t3.seller_state,
       t1.order_id,
       t2.seller_id,
       sum(t2.price) As receita_total_estado,
       sum(t2.price) / count(distinct t2.seller_id) As avg_receita_sellers,
       count(distinct t2.seller_id) As qtde_sellers
  From tb_orders As t1
  Left Join tb_order_items As t2 On t2.order_id = t1.order_id
  Left Join tb_sellers As t3 On t3.seller_id = t2.seller_id
 Where order_status = 'delivered'
 Group by t3.seller_state