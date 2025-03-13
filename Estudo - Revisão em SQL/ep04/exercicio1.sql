-- Exercício 1
-- Qual o valor total da receita gerada por clientes de cada estado?
-- Considere a base completa, com apenas pedidos entregues.

-- Select 
--        t1.order_id,
--        t2.customer_id,
--        sum(t3.price) As receita,
--        t2.customer_state
--   From tb_orders As t1
--   Left Join tb_customers As t2
--     On t2.customer_id = t1.customer_id
--   Left Join tb_order_items As t3 
--     On t3.order_id = t1.order_id
--  Where t1.order_status = 'delivered'
--  group by t2.customer_state

------------- Solução ---------------------
-- A solução que fiz foi baseada no total por estado e não por cliente, a consulta correta está abaixo

Select 
       t2.customer_state,
       sum(t3.price) as receita_total_estado,
       sum(t3.price) / count(distinct t1.customer_id) As avg_receita_cliente
  From tb_orders As t1
  Left Join tb_customers As t2 On t2.customer_id = t1.customer_id
  Left Join tb_order_items As t3 On t3.order_id = t1.order_id
 Where t1.order_status = 'delivered'
 group by t2.customer_state