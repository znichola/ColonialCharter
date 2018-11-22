data:extend(
{
  -- item groups 
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
    order = "e"
  },


  -- recipe categories
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

})
