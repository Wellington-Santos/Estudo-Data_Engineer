-- Quais são os vendedores que não venderam em Dezembro/2017?
-- Considere vendas valida (entregues)

Select 
        t2.seller_id,
        t3.seller_state
   From tb_orders As t1
   Left Join tb_order_items As t2
     On t2.order_id = t1.order_id
   Left Join tb_sellers As t3 
     On t3.seller_id = t2.seller_id
  Where t1.order_approved_at <= '2018-01-01'
    And t1.order_status = 'delivered'
  group by t2.seller_id
 having max(Case When strftime('%Y-%m', t1.order_approved_at) = '2017-12' then 1
            else 0
       end) = 0