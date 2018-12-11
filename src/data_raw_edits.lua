-- Satellite item prototype eddit to balance to ccolonist sciece output
data.raw.item["satellite"].rocket_launch_product = {"space-science-pack", 200}

-- data.raw.lab["lab"].inputs = {"legal-documents"}             -- this replaced the science input 
table.insert(data.raw.lab["lab"].inputs, "legal-documents")     -- this adds to the input table. 

data.raw.technology["advanced-electronics"].effects = { {type = "unlock-recipe", recipe = "advanced-circuit"} }


-- HIGH TECH SCIENCE 
data.raw.recipe["high-tech-science-pack"].ingredients = { {"colonist", 3}, {"high-tech-equipment", 5}}
data.raw.recipe["high-tech-science-pack"].results = {
  {name = "tired-colonist", amount = 2},
  {name = "tired-colonist", probability = 0.92, amount = 1},
  {name = "injured-colonist", probability = 0.08, amount = 1},
  {name = "high-tech-science-pack",  amount = 6},
}
data.raw.recipe["high-tech-science-pack"].energy = 70
data.raw.recipe["high-tech-science-pack"].icon = "__base__/graphics/icons/high-tech-science-pack.png"
data.raw.recipe["high-tech-science-pack"].icon_size = 32
data.raw.recipe["high-tech-science-pack"].category = "colonial-work"
data.raw.recipe["high-tech-science-pack"].subgroup = "colonial-science"

data.raw.technology["advanced-electronics-2"].effects = { {type = "unlock-recipe", recipe = "processing-unit"} }


-- PPDUCTION SCIENCE PACK
data.raw.recipe["production-science-pack"].ingredients = { {"colonist", 3}, {"industrial-equipment", 5}}
data.raw.recipe["production-science-pack"].results = {
  {name = "tired-colonist", amount = 2},
  {name = "tired-colonist", probability = 0.92, amount = 1},
  {name = "injured-colonist", probability = 0.08, amount = 1},
  {name = "production-science-pack",  amount = 6},
}
data.raw.recipe["high-tech-science-pack"].energy = 70
data.raw.recipe["production-science-pack"].icon = "__base__/graphics/icons/production-science-pack.png"
data.raw.recipe["production-science-pack"].icon_size = 32
data.raw.recipe["production-science-pack"].category = "colonial-work"
data.raw.recipe["production-science-pack"].subgroup = "colonial-science"

data.raw.technology["advanced-material-processing-2"].effects = { {type = "unlock-recipe", recipe = "electric-furnace"} }

-- MILITARY SCIENCE PACK
data.raw.recipe["military-science-pack"].ingredients = { {"colonist", 3}, {"military-equipment", 6}}
data.raw.recipe["military-science-pack"].results = {
  {name = "tired-colonist", amount = 2},
  {name = "tired-colonist", probability = 0.92, amount = 1},
  {name = "injured-colonist", probability = 0.08, amount = 1},
  {name = "military-science-pack",  amount = 6},
}
data.raw.recipe["high-tech-science-pack"].energy = 70
data.raw.recipe["military-science-pack"].icon = "__base__/graphics/icons/military-science-pack.png"
data.raw.recipe["military-science-pack"].icon_size = 32
data.raw.recipe["military-science-pack"].category = "colonial-work"
data.raw.recipe["military-science-pack"].subgroup = "colonial-science"

data.raw.technology["military-2"].effects = { {type = "unlock-recipe", recipe = "piercing-rounds-magazine"},{type = "unlock-recipe", recipe = "grenade"} }


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