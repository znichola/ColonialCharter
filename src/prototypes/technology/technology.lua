data:extend({
  {
    type = "technology",
    name = "colonial-charter",
    icon_size = 128,
    icon = "__ColonialCharter__/graphics/technology/colonial-charter.png",
    prerequisites = {"rocket-silo"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "colony-ship"
      },
      {
        type = "unlock-recipe",
        recipe = "waiting-hall"
      },
      -- rest
      {
        type = "unlock-recipe",
        recipe = "colonial-housing"
      },
      {
        type = "unlock-recipe",
        recipe = "rest"
      },
      
        -- work
      {
        type = "unlock-recipe",
        recipe = "colonial-workshop"
      },
      {
        type = "unlock-recipe",
        recipe = "technical-work"
      },
      {
        type = "unlock-recipe",
        recipe = "scientific-work"
      },    
      
      -- items
      {
        type = "unlock-recipe",
        recipe = "food"
      },
      {
        type = "unlock-recipe",
        recipe = "consumer-goods"
      },
      {
        type = "unlock-recipe",
        recipe = "empty-pod"
      },

      -- coms
      {
        type = "unlock-recipe",
        recipe = "colonist-arrival-data"
      },
      {
        type = "unlock-recipe",
        recipe = "coms-dish"
      },
      

    },
    unit =
    {
      count = 800,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"production-science-pack", 1},
        {"high-tech-science-pack", 1}
      },
      time = 30
    },
    order = "k-a"
  },
  {
    type = "technology",
    name = "articles-of-colonisation",
    icon_size = 128,
    icon = "__ColonialCharter__/graphics/technology/articles-of-colonisation.png",
    prerequisites = {"colonial-charter"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "legal-work"
      },
    },
    unit =
    {
      count = 600,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"space-science-pack", 2},
      },
      time = 40
    },
    order = "k-b"
  },
  {
    type = "technology",
    name = "colonial-reproductive-initiative",
    icon_size = 128,
    icon = "__ColonialCharter__/graphics/technology/colonial-reproductive-initiative.png",
    prerequisites = {"colonial-charter"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "reproduce"
      },
      {
        type = "unlock-recipe",
        recipe = "memorial"
      },
      {
        type = "unlock-recipe",
        recipe = "heal"
      },
      {
        type = "unlock-recipe",
        recipe = "medical-supplies"
      }
    },
    unit =
    {
      count = 400,
      ingredients =
      {
        {"science-pack-1", 2},
        {"science-pack-2", 2},
        {"science-pack-3", 2},
        {"space-science-pack", 1},
        {"legal-documents", 1},
      },
      time = 60
    },
    order = "k-c"
  },
  {
    type = "technology",
    name = "planethood",
    icon_size = 128,
    icon = "__ColonialCharter__/graphics/technology/planethood.png",
    prerequisites = {"colonial-reproductive-initiative"},
    effects =
    {
    },
    unit =
    {
      count = 2000,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"space-science-pack", 2},
        {"legal-documents", 1},
      },
      time = 60
    },
    order = "k-c"
  }
})