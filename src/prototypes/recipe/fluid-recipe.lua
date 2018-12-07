data:extend({
  {
    type = "recipe",
    name = "atmospheric-sequestration",
    category = "colonial-atmospherics",
    enabled = true,
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
})