data:extend({
  -- colonial recipie catgories

{
  type = "recipe",
  name = "waiting-hall",
  energy_required = 5,
  ingredients =
  {
    {"steel-plate", 40},
    {"plastic-bar", 60},
    -- {"concrete ", 80},
    {"processing-unit", 20},
  },
  result = "waiting-hall",
  enabled = false,
},
  -- rest

-- buildings
{
  type = "recipe",
  name = "colonial-housing",
  energy_required = 15,
  ingredients =
  {
    {"steel-plate", 60},
    {"plastic-bar", 80},
    -- {"concrete ", 80},
    {"processing-unit", 40},
  },
  result = "colonial-housing",
  enabled = false,
},

-- actions
{
  type = "recipe",
  name = "rest",
  category = "colonial-rest",
  enabled = false,
  energy_required = 140, --139, --1/3rd of a day 
  icon = "__ColonialCharter__/graphics/icons/rest.png",
  icon_size = 32,
  ingredients = 
  {
    {"tired-colonist", 4},
    {"consumer-goods", 4},
    {"food", 8}
  },
  results =
  {
    {
      name = "colonist",
      probability = 0.98,
      amount = 1
    },
    {
      name = "colonist",
      probability = 1,
      amount = 3
    },
    {
      name = "deceased-colonist",
      probability = 0.02,
      amount = 1
    }
  },
  catalysts = {'colonist', 6},
  subgroup = "colonial-activities",
  -- result_count = 6,
  allow_decomposition = false,
  -- hidden = true
},
{
  type = "recipe",
  name = "heal",
  category = "colonial-rest",
  enabled = false,
  energy_required = 7,
  icon = "__ColonialCharter__/graphics/icons/heal.png",
  icon_size = 32,
  ingredients = 
  {
    {"injured-colonist", 1},
    {"processing-unit", 20},
    {"food", 10}
  },
  result = "colonist",
  result_count = 1,
  subgroup = "colonial-activities",
  catalysts = {'colonist', 1}, --no idea if this does anything api is not very helpfull
  allow_decomposition = false,
  -- hidden = true
},
{
  type = "recipe",
  name = "memorial",
  category = "colonial-rest",
  enabled = false,
  energy_required = 20,
  icon = "__ColonialCharter__/graphics/icons/memorial.png",
  icon_size = 32,
  ingredients = 
  {
    {"deceased-colonist", 1},
    {"colonist", 8},
    {"consumer-goods", 36}
    -- {"colonist", 10},
  },
  results =
  {
    {
      name = "colonist",
      amount = 8
    },
    {
      name = "empty-pod",
      amount = 1
    }
  },
  result = "empty-pod",
  result_count = 1,
  subgroup = "colonial-activities",
  allow_decomposition = false,
  -- hidden = true
},
{
  type = "recipe",
  name = "reproduce",
  category = "colonial-rest",
  enabled = false,
  energy_required = 178,
  icon = "__ColonialCharter__/graphics/icons/reproduce.png",
  icon_size = 32,
  ingredients = 
  {
    {"colonist", 2},
    {"medical-supplies", 12},
    {"food", 48},
    {"consumer-goods", 36},
    {"empty-pod", 1}
  },
  result = "colonist",
  result_count = 3,
  subgroup = "colonial-activities",
  allow_decomposition = false,
  -- hidden = true
},

-- work

-- buildings
{
  type = "recipe",
  name = "colonial-workshop",
  energy_required = 15,
  ingredients =
  {
    {"steel-plate", 60},
    {"electric-engine-unit", 30},
    -- {"concrete ", 80},
    {"processing-unit", 40},
  },
  result = "colonial-workshop",
  enabled = false,
},
-- actions
{
  type = "recipe",
  name = "scientific-work",
  category = "colonial-work",
  enabled = false,
  energy_required = 70, --139, --1/3rd of a day 
  icon = "__ColonialCharter__/graphics/icons/scientific-work.png",
  icon_size = 32,
  ingredients = 
  {
    {"colonist", 3},
    {"processing-unit", 6},
    {"technical-documents", 4}
  },
  results =
  {
    {
      name = "injured-colonist",
      probability = 0.08,
      amount = 1
    },
    {
      name = "tired-colonist",
      probability = 0.92,
      amount = 1
    },
    {
      name = "tired-colonist",
      amount = 2
    },
    {
      name = "space-science-pack",
      amount = 5
    }
  },
  subgroup = "colonial-activities",
  
  allow_decomposition = false,
},
{
  type = "recipe",
  name = "legal-work",
  category = "colonial-work",
  enabled = false,
  energy_required = 70,
  icon = "__ColonialCharter__/graphics/icons/legal-work.png",
  icon_size = 32,
  ingredients = 
  {
    {"colonist", 5},
    {"processing-unit", 10}
  },
  results =
  {
    {
      name = "tired-colonist",
      amount = 5
    },
    {
      name = "legal-documents",
      amount = 2
    }
  },
  subgroup = "colonial-activities",
  allow_decomposition = false,
},
{
  type = "recipe",
  name = "technical-work",
  category = "colonial-work",
  enabled = false,
  energy_required = 70,
  icon = "__ColonialCharter__/graphics/icons/technical-work.png",
  icon_size = 32,
  ingredients = 
  {
    {"colonist", 2},
    {"processing-unit", 4}
  },
  results =
  {
    {
      name = "injured-colonist",
      probability = 0.08,
      amount = 1
    },
    {
      name = "tired-colonist",
      probability = 0.92,
      amount = 1
    },
    {
      name = "tired-colonist",
      probability = 1,
      amount = 1
    },
    {
      name = "technical-documents",
      amount = 1
    }
  },
  subgroup = "colonial-activities",
  allow_decomposition = false,
}, 

-- items produced in non-colony machienes 
{
  type = "recipe",
  name = "colony-ship",
  energy_required = 30,
  enabled = false,
  category = "crafting",
  ingredients =
  {
    {"low-density-structure", 100},
    {"processing-unit", 80},
    {"nuclear-fuel", 8},
    -- {"rocket-fuel", 60},
    {"water-barrel", 10}
  },
  result= "colony-ship",
  -- allow_decomposition = false,
  requester_paste_multiplier = 1
},
{
  type = "recipe",
  name = "empty-pod",
  energy_required = 1,
  enabled = false,
  category = "crafting",
  ingredients =
  {
    {"low-density-structure", 20},
    {"processing-unit", 10},
    {"nuclear-fuel", 1}
  },
  result= "empty-pod",
  result_count = 2,
  requester_paste_multiplier = 1
},
{
  type = "recipe",
  name = "consumer-goods",
  category = "crafting",
  enabled = false,
  energy_required = 5,
  ingredients = 
  {
    {"processing-unit", 5},
    {"plastic-bar", 30},
    {"battery", 5}
  },
  result = "consumer-goods",
  result_count = 2,
},

{
  type = "recipe",
  name = "medical-supplies",
  category = "crafting",
  enabled = false,
  energy_required = 1,
  ingredients = 
  {
    {"processing-unit", 10},
    {"plastic-bar", 20},
  },
  result = "medical-supplies",
  result_count = 1,
},

{
  type = "recipe",
  name = "landing-site",
  energy_required = 5,
  ingredients =
  {
    {"steel-plate", 60},
    {"electronic-circuit", 30},
    {"radar", 2},
    -- {"concrete ", 80},
  },
  result = "landing-site",
  enabled = true,
},

{
  type = "recipe",
  name = "landing-colonists",
  icon = "__ColonialCharter__/graphics/icons/landing-colonists.png",
  icon_size = 32,
  energy_required = 10,
  ingredients =
  {
    {"colonist-arrival-data", 100},
  },
  results =
  {
    {
      name = "colonist",
      amount = 6
    }
  },
  allow_decomposition = false,
  category = "colonial-landing",
  subgroup = "colonial-landing",
  enabled = true,
},

{
  type = "recipe",
  name = "coms-dish",
  energy_required = 15,
  ingredients =
  {
    {"iron-plate", 60},
    {"electronic-circuit", 30},
    -- {"concrete ", 80},
  },
  result = "coms-dish",
  enabled = false,
},
{
  type = "recipe",
  name = "colonist-arrival-data",
  category = "colonial-coms",
  energy_required = 15,
  ingredients = 
  {
    -- {"electronic-circuit", 1}
  },
  result= "colonist-arrival-data",
  allow_decomposition = false,
  enabled = false,
  subgroup = "colonial-coms",
},


{
  type = "recipe",
  name = "hydroponics-building",
  energy_required = 15,
  ingredients =
  {
    {"iron-plate", 60},
    {"electronic-circuit", 30},
    -- {"concrete ", 80},
  },
  result = "hydroponics-building",
  enabled = true,
},
{
  type = "recipe",
  name = "soil",
  energy_required = 10,
  enabled = false,
  category = "crafting-with-fluid",
  ingredients =
  {
    {"raw-wood", 10},
    {"stone", 1},
    {type="fluid", name="water", amount=10}
  },
  result= "soil",
  result_count = 1
},
{
  type = "recipe",
  name = "fertiliser",
  energy_required = 10,
  enabled = false,
  category = "crafting",
  ingredients =
  {
    {"coal", 4},
    {"stone", 2},
  },
  result= "fertiliser",
  result_count = 1
},
{
  type = "recipe",
  name = "automated-food",
  icon = "__ColonialCharter__/graphics/icons/automated-food.png",
  icon_size = 32,
  energy_required = 80,
  enabled = false,
  category = "colonial-agriculture",
  subgroup = "colonial-products",
  ingredients =
  {
    {"soil", 100},
    {"fertiliser", 40},
    -- {type="fluid", name="water", amount=100}
  },
  results =
  {
    {
      name = "food",
      amount = 20
    },
    {
      name = "soil",
      amount = 80
    },
  },
},
{
  type = "recipe",
  name = "grow-lumber",
  icon = "__base__/graphics/icons/raw-wood.png",
  icon_size = 32,
  energy_required = 80,
  enabled = false,
  category = "colonial-agriculture",
  subgroup = "colonial-products",
  ingredients =
  {
    {"soil", 100},
    {"fertiliser", 40},
    -- {type="fluid", name="water", amount=100}
  },
  results =
  {
    {
      name = "wood",
      amount = 100
    },
    {
      name = "soil",
      amount = 80
    },
  },
},
{
  type = "recipe",
  name = "bio-research",
  icon = "__ColonialCharter__/graphics/icons/bio-research.png",
  icon_size = 32,
  energy_required = 80,
  enabled = false,
  category = "colonial-agriculture",
  subgroup = "colonial-activities",
  ingredients =
  {
    {"soil", 100},
    {"fertiliser", 40},
    -- {type="fluid", name="water", amount=100}
  },
  results =
  {
    {
      name = "food",
      amount = 10
    },
    {
      name = "soil",
      amount = 80
    },
  },
},

-- ATMOSPHERIC SEQUSTRATION
{
  type = "recipe",
  name = "atmospheric-sequestor",
  energy_required = 15,
  ingredients =
  {
    {"iron-plate", 10},
    {"copper-plate", 10},
    {"electronic-circuit", 20},
    {"pump", 5},
  },
  result = "atmospheric-sequestor",
  enabled = true,
},



})