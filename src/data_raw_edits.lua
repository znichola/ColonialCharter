-- Satellite recipie eddit to balance to ccolonist sciece output
data.raw.item["satellite"].rocket_launch_product = {"space-science-pack", 200}

-- data.raw.lab["lab"].inputs = {"legal-documents"}             -- this replaced the science input 
table.insert(data.raw.lab["lab"].inputs, "legal-documents")     -- this adds to the input table. 
-- Have to insert into this function to allow productivity modules to be used on consumer-goods and food. 
-- function productivitymodulelimitation()
--     return
--           {
--             "sulfuric-acid",
--             "basic-oil-processing",
--             "advanced-oil-processing",
--              ...
--           }
--     end