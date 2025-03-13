Select *
 from (Select count(*) as quantidade_vendedor
            , seller_state
         from tb_sellers
        group by seller_state
) as t1

where t1.quantidade_vendedor > 10