data:extend({

    {
    type = "fluid",
    name = "oxygen",
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = {r=0.5, g=0.04, b=0},
    flow_color = {r=0.85, g=0.6, b=0.3},
    max_temperature = 100,
    icon = "__ColonialCharter__/graphics/icons/fluid/oxygen.png",
    icon_size = 32,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    order = "a[fluid]-x[oxygen]"
  },
  {
    type = "fluid",
    name = "nitrogen",
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = {r=0, g=0.02, b=0.5},
    flow_color = {r=0.3, g=0.5, b=0.85},
    max_temperature = 100,
    icon = "__ColonialCharter__/graphics/icons/fluid/nitrogen.png",
    icon_size = 32,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    order = "a[fluid]-y[nitrogen]"
  },
  {
    type = "fluid",
    name = "pollutant",
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = {r=0.2, g=0.02, b=0.1},
    flow_color = {r=0.3, g=0.3, b=0.2},
    max_temperature = 100,
    icon = "__ColonialCharter__/graphics/icons/fluid/pollutant.png",
    icon_size = 32,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    order = "a[fluid]-n[pollutand]"
  },
  {
    type = "fluid",
    name = "life-support-air",
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = {r=0.2, g=0.02, b=0.1},
    flow_color = {r=0.3, g=0.3, b=0.2},
    max_temperature = 100,
    icon = "__ColonialCharter__/graphics/icons/fluid/life-support-air.png",
    icon_size = 32,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    order = "a[fluid]-n[air]"
  },

  
})