data:extend({
    {
      -- colonial building
        type = "item",
        name = "colonial-housing",
        icon = "__ColonialCharter__/graphics/icons/colonial-housing.png",
        icon_size = 32,
        flags = {"goes-to-quickbar"},
        subgroup = "colonial-buildings",
        order = "b[colonial-housing]",
        place_result = "colonial-housing",
        stack_size = 20
      },
      {
        type = "item",
        name = "colonial-workshop",
        icon = "__ColonialCharter__/graphics/icons/colonial-workshop.png",
        icon_size = 32,
        flags = {"goes-to-quickbar"},
        subgroup = "colonial-buildings",
        order = "b[colonial-workshop]",
        place_result = "colonial-workshop",
        stack_size = 20
      },
      -- HOLDING STATION
      {
        type = "item",
        name = "waiting-hall",
        icon = "__ColonialCharter__/graphics/icons/waiting-hall.png",
        icon_size = 32,
        flags = {"goes-to-quickbar"},
        subgroup = "colonial-buildings",
        order = "a[items]-c[steel-chest]",
        place_result = "waiting-hall",
        stack_size = 20
      },

      -- colonists and their activities 
      {
        type = "item",
        name = "colonist",
        icon = "__ColonialCharter__/graphics/icons/colonist.png",
        icon_size = 32,
        flags = {"goes-to-quickbar"},
        order = "c[colonist]",
        subgroup = "colonial-colonist",
        stack_size = 12
      },
      {
        type = "item",
        name = "tired-colonist",
        icon = "__ColonialCharter__/graphics/icons/tired.png",
        icon_size = 32,
        flags = {"goes-to-quickbar"},
        order = "c[tired]",
        subgroup = "colonial-colonist",
        stack_size = 12
      },
      {
        type = "item",
        name = "injured-colonist",
        icon = "__ColonialCharter__/graphics/icons/injured.png",
        icon_size = 32,
        flags = {"goes-to-quickbar"},
        order = "c[injured]",
        subgroup = "colonial-colonist",
        stack_size = 12
      },
      {
        type = "item",
        name = "deceased-colonist",
        icon = "__ColonialCharter__/graphics/icons/deceased.png",
        icon_size = 32,
        flags = {"goes-to-quickbar"},
        order = "c[deceased]",
        subgroup = "colonial-colonist",
        stack_size = 12
      },

      -- items
      {
        type = "item",
        name = "empty-pod",
        icon = "__ColonialCharter__/graphics/icons/empty-pod.png",
        icon_size = 32,
        flags = {"goes-to-quickbar"},
        order = "e[empty-pod]",
        subgroup = "colonial-colonist",
        stack_size = 25
      },
      {
        type = "item",
        name = "colony-ship",
        icon = "__ColonialCharter__/graphics/icons/colony-ship.png",
        icon_size = 32,
        flags = {"goes-to-main-inventory"},
        subgroup = "colonial-colonist",
        order = "e[colony-ship]",
        stack_size = 1,
        rocket_launch_product = {"colonist", 12}
      },

      -- work products
      {
        type = "item",
        name = "technical-documents",
        icon = "__ColonialCharter__/graphics/icons/technical-documents.png",
        icon_size = 32,
        flags = {"goes-to-main-inventory"},
        subgroup = "colonial-products",
        order = "d[legal-documents]",
        stack_size = 25,
      },
      {
        type = "tool",
        name = "legal-documents",
        icon = "__ColonialCharter__/graphics/icons/legal-documents.png",
        icon_size = 32,
        flags = {"goes-to-main-inventory"},
        subgroup = "colonial-products",
        order = "d[technical-documents]",
        stack_size = 100,
        durability = 1,
        durability_description_key = "description.science-pack-remaining-amount-key",
        durability_description_value = "description.science-pack-remaining-amount-value"
      },

      -- intermediate
      {
        type = "item",
        name = "consumer-goods",
        icon = "__ColonialCharter__/graphics/icons/consumer-goods.png",
        icon_size = 32,
        flags = {"goes-to-main-inventory"},
        subgroup = "colonial-products",
        order = "e[consumer-goods]",
        stack_size = 50,
      },
      {
        type = "item",
        name = "food",
        icon = "__ColonialCharter__/graphics/icons/food.png",
        icon_size = 32,
        flags = {"goes-to-main-inventory"},
        subgroup = "colonial-products",
        order = "e[consumer-goods]",
        stack_size = 50,
      },
      {
        type = "item",
        name = "medical-supplies",
        icon = "__ColonialCharter__/graphics/icons/medical-supplies.png",
        icon_size = 32,
        flags = {"goes-to-main-inventory"},
        subgroup = "colonial-products",
        order = "e[consumer-goods]",
        stack_size = 50,
      },
      

      {
        type = "item",
        name = "coms-dish",
        icon = "__ColonialCharter__/graphics/icons/coms-dish.png",
        icon_size = 32,
        flags = {"goes-to-quickbar"},
        subgroup = "colonial-buildings",
        order = "a[items]-c[coms-dish]",
        place_result = "coms-dish",
        stack_size = 20
      },

      {
        type = "item",
        name = "colonist-arrival-data",
        icon = "__ColonialCharter__/graphics/icons/colonist-arrival-data.png",
        icon_size = 32,
        flags = {"goes-to-main-inventory"},
        subgroup = "colonial-products",
        order = "f[arrival-data]",
        stack_size = 100,
      },

      

})
