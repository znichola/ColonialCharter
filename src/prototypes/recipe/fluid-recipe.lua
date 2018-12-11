data:extend({
  {
    type = "recipe",
    name = "atmospheric-sequestration",
    category = "colonial-atmospherics",
    enabled = false,
    energy_required = 30,
    ingredients =
    {
    --   {type="fluid", name="crude-oil", amount=100}
    },
    results=
    {
      {type="fluid", name="oxygen", amount=15},
      {type="fluid", name="nitrogen", amount=40},
      {type="fluid", name="pollutant", amount=5}
    },
    icon = "__ColonialCharter__/graphics/icons/fluid/atmospheric-sequestration.png",
    icon_size = 32,
    subgroup = "colonial-gasses",
    order = "a[oil-processing]-a[atmospheric-sequestration]"
  },

  -- LIFE SUPPORT UNIT 
  -- chemistry only allows two liquid ingredients! 
{
  type = "recipe",
  name = "life-support-air",
  icon = "__ColonialCharter__/graphics/icons/fluid/life-support-air.png",
  icon_size = 32,
  energy_required = 0.5,
  enabled = false,
  category = "chemistry",
  subgroup = "colonial-gasses",
  ingredients =
  {
    {type="fluid", name="oxygen", amount=5},
    {type="fluid", name="nitrogen", amount=15},
    -- {type="fluid", name="water", amount=10},
    -- {"pump", 1}
  },
  results = {{type="fluid", name="life-support-air", amount=20}}
},
})