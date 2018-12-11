data:extend({
  -- ATMOSPHERIC SEQUESTRATION
  {
    type = "technology",
    name = "atmospheric-sequestration",
    icon_size = 128,
    icon = "__ColonialCharter__/graphics/technology/atmospheric-sequestration.png",
    prerequisites = {"automation-2"},
    effects =
    {
      {type = "unlock-recipe",  recipe = "atmospheric-sequestor"},
      {type = "unlock-recipe",  recipe = "atmospheric-sequestration"},
      {type = "unlock-recipe",  recipe = "life-support-air"},
      {type = "unlock-recipe",  recipe = "life-support-unit"},
    },
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 1},
      },
      time = 10
    },
    order = "k-a"
  },
  -- COLONIAL COMS
  {
    type = "technology",
    name = "colonial-coms",
    icon_size = 128,
    icon = "__ColonialCharter__/graphics/technology/colonial-coms.png",
    prerequisites = {"advanced-electronics"},
    effects =
    {
      {type = "unlock-recipe",  recipe = "coms-dish"},
      {type = "unlock-recipe",  recipe = "colonist-arrival-data"},
    },
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 15
    },
    order = "k-a"
  },
  -- COLONIAL CONSTRUCTION
  {
    type = "technology",
    name = "colonial-construction",
    icon_size = 128,
    icon = "__ColonialCharter__/graphics/technology/colonial-construction.png",
    prerequisites = {"atmospheric-sequestration", "steel-processing"},
    effects =
    {
      {type = "unlock-recipe",  recipe = "colonial-housing"},
      {type = "unlock-recipe",  recipe = "colonial-workshop"},
      {type = "unlock-recipe",  recipe = "waiting-hall"},
      {type = "unlock-recipe",  recipe = "consumer-goods"},
    },
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 10
    },
    order = "k-b"
  },
  -- COLONIAL AGRICULTURE
  {
    type = "technology",
    name = "colonial-agriculture",
    icon_size = 128,
    icon = "__ColonialCharter__/graphics/technology/colonial-agriculture.png",
    prerequisites = {"colonial-construction", "colonial-coms"},
    effects =
    {
      {type = "unlock-recipe",  recipe = "hydroponics-building"},
      {type = "unlock-recipe",  recipe = "soil"},
      {type = "unlock-recipe",  recipe = "fertiliser"},
      {type = "unlock-recipe",  recipe = "automated-food"},
    },
    unit =
    {
      count = 80,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 15
    },
    order = "k-b"
  },
  -- COLONIAL BIO RESEARCH
  {
    type = "technology",
    name = "colonial-bio-research",
    icon_size = 128,
    icon = "__ColonialCharter__/graphics/technology/colonial-bio-research.png",
    prerequisites = {"colonial-agriculture","colonial-charter"},
    effects =
    {
      {type = "unlock-recipe",  recipe = "grow-lumber"},
      {type = "unlock-recipe",  recipe = "bio-research"},
      {type = "unlock-recipe",  recipe = "field-equipment"},
    },
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 15
    },
    order = "k-c"
  },
  -- COLONIAL CHARTER
  {
    type = "technology",
    name = "colonial-charter",
    icon_size = 128,
    icon = "__ColonialCharter__/graphics/technology/colonial-charter.png",
    prerequisites = {"colonial-agriculture"},
    effects =
    {
      {type = "unlock-recipe",  recipe = "landing-site"},
      {type = "unlock-recipe",  recipe = "landing-colonists"},
      {type = "unlock-recipe",  recipe = "rest"},
    },
    unit =
    {
      count = 80,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 15
    },
    order = "k-b"
  },
  -- ARTICLES OF COLONISATION
  {
    type = "technology",
    name = "articles-of-colonisation",
    icon_size = 128,
    icon = "__ColonialCharter__/graphics/technology/articles-of-colonisation.png",
    prerequisites = {"colonial-charter"},
    effects =
    {
      {type = "unlock-recipe",  recipe = "legal-work"},
    },
    unit =
    {
      count = 150,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 20
    },
    order = "k-c"
  },
  -- COLONIAL REPRODUCTIVE INITIATIVE
  {
    type = "technology",
    name = "colonial-reproductive-initiative",
    icon_size = 128,
    icon = "__ColonialCharter__/graphics/technology/colonial-reproductive-initiative.png",
    prerequisites = {"articles-of-colonisation"},
    effects =
    {
      {type = "unlock-recipe",  recipe = "reproduce"},
      {type = "unlock-recipe",  recipe = "heal"},
      {type = "unlock-recipe",  recipe = "medical-supplies"},
      {type = "unlock-recipe",  recipe = "memorial"},
      {type = "unlock-recipe",  recipe = "empty-pod"},
    },
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"legal-documents", 2},
      },
      time = 20
    },
    order = "k-d"
  },
  -- COLONIAL MILITARY RESEARCH
  {
    type = "technology",
    name = "colonial-military-research",
    icon_size = 128,
    icon = "__ColonialCharter__/graphics/technology/colonial-military-research.png",
    prerequisites = {"military-2", "articles-of-colonisation"},
    effects =
    {
      {type = "unlock-recipe",  recipe = "military-equipment"},
      {type = "unlock-recipe",  recipe = "military-science-pack"},
    },
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
         {"legal-documents", 1},
      },
      time = 10
    },
    order = "k-e"
  },
  -- COLONIAL PRODUCTION OPTIMISATION
  {
    type = "technology",
    name = "colonial-production-optimisation",
    icon_size = 128,
    icon = "__ColonialCharter__/graphics/technology/colonial-production-optimisation.png",
    prerequisites = {"articles-of-colonisation"},
    effects =
    {
      {type = "unlock-recipe",  recipe = "industrial-equipment"},
      {type = "unlock-recipe",  recipe = "production-science-pack"},
    },
    unit =
    {
      count = 200,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"legal-documents", 1},
      },
      time = 30,
    },
    order = "k-e",
  },
  -- COLONIAL HIGH TECH PRODUCTION
  {
    type = "technology",
    name = "colonial-high-tech-production",
    icon_size = 128,
    icon = "__ColonialCharter__/graphics/technology/colonial-high-tech-production.png",
    prerequisites = {"colonial-production-optimisation"},
    effects =
    {
      {type = "unlock-recipe",  recipe = "high-tech-equipment"},
      {type = "unlock-recipe",  recipe = "high-tech-science-pack"},
    },
    unit =
    {
      count = 250,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"legal-documents", 1},
      },
      time = 30
    },
    order = "k-f"
  },
  -- PLANETHOOD
  {
    type = "technology",
    name = "planethood",
    icon_size = 128,
    icon = "__ColonialCharter__/graphics/technology/planethood.png",
    prerequisites = {"colonial-high-tech-production"},
    effects =
    {
      {type = "unlock-recipe", recipe = "athena"},
      {type = "unlock-recipe", recipe = "colony-ship"},
    },
    unit =
    {
      count = 1000,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"space-science-pack", 2},
        {"legal-documents", 4},
      },
      time = 30
    },
    order = "k-g"
  }
})