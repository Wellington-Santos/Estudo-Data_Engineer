Select count(*)
     , seller_state
  from tb_sellers
 where seller_state in ('SP', 'RJ', 'CE', 'MG','RS', 'AM', 'PE')
  group by seller_state
  HAVING COUNT(*) > 10 