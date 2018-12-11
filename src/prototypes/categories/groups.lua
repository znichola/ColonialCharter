data:extend(
{
  -- item groups 
  -- this is the order they whill appear in the colonial charter item tab 
  {
    type = "item-group",
    name = "colonial-charter",
    order = "z",
    order_in_recipe = "0",
    icon = "__ColonialCharter__/graphics/item-group/colonial-products.png",
    icon_size = 64
  },
  {
    type = "item-subgroup",
    name = "colonial-colonist",
    group = "colonial-charter",
    order = "a"
  },
  {
    type = "item-subgroup",
    name = "colonial-products",
    group = "colonial-charter",
    order = "b"
  },
  {
    type = "item-subgroup",
    name = "colonial-buildings",
    group = "colonial-charter",
    order = "d"
  },
  {
    type = "item-subgroup",
    name = "colonial-activities",
    group = "colonial-charter",
    order = "e"
  },
  {
    type = "item-subgroup",
    name = "colonial-coms",
    group = "colonial-charter",
    order = "f"
  },
  {
    type = "item-subgroup",
    name = "colonial-landing",
    group = "colonial-charter",
    order = "f"
  },
  {
    type = "item-subgroup",
    name = "colonial-gasses",
    group = "colonial-charter",
    order = "g"
  },
  {
    type = "item-subgroup",
    name = "colonial-science",
    group = "colonial-charter",
    orger = "g"
  },


  -- recipe categories
  -- refered as 'crafting-categorie' when defining an entity 
  -- and category when defining a recipe 
  {
    type = "recipe-category",
    name = "colonial-rest"
  },
  {
    type = "recipe-category",
    name = "colonial-work"
  },
  {
    type = "recipe-category",
    name = "colonial-coms"
  },
  {
    type = "recipe-category",
    name = "colonial-agriculture"
  },
  {
    type = "recipe-category",
    name = "colonial-landing"
  },
  {
    type = "recipe-category",
    name = "colonial-atmospherics"
  },
  {
    type = "recipe-category",
    name = "colonial-statue"
  }

})
