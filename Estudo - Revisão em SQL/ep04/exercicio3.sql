-- Exercício 3
-- Qual o peso médio dos produtos vendidos por sellers de cada estado?
-- Considere apenas o ano de 2017 e pedidos entregues nesta analise.
-- product_weight_g

-- Select 
--        t2.seller_id,
--        t2.order_id,
--        t2.product_id,
--        avg(product_weight_g) As media_peso_produto,
--        t3.seller_state
--   From tb_orders As t1
--   Left Join tb_order_items As t2 On t2.order_id = t1.order_id
--   Left Join tb_sellers As t3 On t3.seller_id = t2.seller_id
--   Left Join tb_products As t4 On t4.product_id = t2.product_id
--  Where t1.order_status = 'delivered'
--  group by seller_state

----------------- Solução ----------------------------------------------

-- A minha solução esta correta, só trouxe mais campos que o necessário

Select 
       t4.seller_state,
       avg(t3.product_weight_g) As avg_peso_produto     
  From tb_orders As t1
  Left Join tb_order_items As t2
    On t2.order_id = t1.order_id
  Left Join tb_products As t3
    On t3.product_id = t2.product_id
  Left Join tb_sellers As t4
    On t4.seller_id = t2.seller_id
 Where t1.order_status = 'delivered' 
   And Cast(strftime('%Y', t1.order_approved_at) As int) = 2017
 Group By t4.seller_state
