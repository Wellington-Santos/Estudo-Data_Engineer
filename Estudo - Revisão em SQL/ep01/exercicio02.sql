-- Quantos produtos tem mais de 5 litros?

-- Select product_id
--      , product_category_name
--      , product_name_lenght
--      , product_description_lenght
--      , product_photos_qty
--      , product_weight_g
--      , product_length_cm
--      , product_height_cm
--      , product_width_cm
--      , (product_length_cm * product_height_cm * product_width_cm) / 1000 as volume_litros
--   from tb_products
--   where (product_length_cm * product_height_cm * product_width_cm) / 1000 > 5 

Select count(*) as produtos_com_mais_de_5_litros
  from tb_products
  where (product_length_cm * product_height_cm * product_width_cm) / 1000 > 5 