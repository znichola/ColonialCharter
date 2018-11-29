data:extend({
  -- COLONIAL HOUSING 
    {
    type = "assembling-machine",
    name = "colonial-housing",
    icon = "__ColonialCharter__/graphics/icons/colonial-housing.png",
    icon_size = 32,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "colonial-housing"},
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},

    -- light = {intensity = 0.75, size = 8, color = {r = 1.0, g = 1.0, b = 1.0}},
    -- alert_icon_shift = util.by_pixel(-3, -12),
    animation =
    {
      layers =
      {
        {
          filename = "__ColonialCharter__/graphics/entity/colonial-housing/colonial-housing.png",
          width = 98,
          height = 87,
          frame_count = 33,
          line_length = 11,
          animation_speed = 1 / 3,
          shift = util.by_pixel(0, 1.5),
          hr_version =
          {
            filename = "__ColonialCharter__/graphics/entity/colonial-housing/hr-colonial-housing.png",
            width = 194,
            height = 174,
            frame_count = 33,
            line_length = 11,
            animation_speed = 1 / 3,
            shift = util.by_pixel(0, 1.5),
            scale = 0.5
          }
        },   
        {
          filename = "__ColonialCharter__/graphics/entity/colonial-housing/colonial-housing-shadow.png",
          width = 122,
          height = 68,
          frame_count = 1,
          line_length = 1,
          repeat_count = 33,
          animation_speed = 1 / 3,
          shift = util.by_pixel(13, 11),
          draw_as_shadow = true,
          hr_version =
          {
            filename = "__ColonialCharter__/graphics/entity/colonial-housing/hr-colonial-housing-shadow.png",
            width = 242,
            height = 136,
            frame_count = 1,
            line_length = 1,
            repeat_count = 33,
            animation_speed = 1 / 3,
            shift = util.by_pixel(13, 11),
            scale = 0.5,
            draw_as_shadow = true
          }
        }
      }
    },
    crafting_categories = {"colonial-rest"},
    crafting_speed = 5,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      -- emissions = 0.05 / 1.5
    },
    energy_usage = "600kW",
    ingredient_count = 4,
    -- open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    -- close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/lab.ogg",
        volume = 0.7
      },
      apparent_volume = 1
    },
    -- module_specification = { module_slots = 0 }
  },
  
  -- COLONIAL WORKSHOP it's just a copy of housing with diffrent crafting category
  {
    type = "assembling-machine",
    name = "colonial-workshop",
    icon = "__ColonialCharter__/graphics/icons/colonial-workshop.png",
    icon_size = 32,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "colonial-workshop"},
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    -- light = {intensity = 0.75, size = 8, color = {r = 1.0, g = 1.0, b = 1.0}},
    -- alert_icon_shift = util.by_pixel(-3, -12),
    animation =
    {
      layers =
      {
        {
          filename = "__ColonialCharter__/graphics/entity/colonial-workshop/colonial-workshop.png",
          width = 98,
          height = 87,
          frame_count = 33,
          line_length = 11,
          animation_speed = 1 / 3,
          shift = util.by_pixel(0, 1.5),
          hr_version =
          {
            filename = "__ColonialCharter__/graphics/entity/colonial-workshop/hr-colonial-workshop.png",
            width = 194,
            height = 174,
            frame_count = 33,
            line_length = 11,
            animation_speed = 1 / 3,
            shift = util.by_pixel(0, 1.5),
            scale = 0.5
          }
        },   
        {
          filename = "__ColonialCharter__/graphics/entity/colonial-workshop/colonial-workshop-shadow.png",
          width = 122,
          height = 68,
          frame_count = 1,
          line_length = 1,
          repeat_count = 33,
          animation_speed = 1 / 3,
          shift = util.by_pixel(13, 11),
          draw_as_shadow = true,
          hr_version =
          {
            filename = "__ColonialCharter__/graphics/entity/colonial-workshop/hr-colonial-workshop-shadow.png",
            width = 242,
            height = 136,
            frame_count = 1,
            line_length = 1,
            repeat_count = 33,
            animation_speed = 1 / 3,
            shift = util.by_pixel(13, 11),
            scale = 0.5,
            draw_as_shadow = true
          }
        }
      }
    },
    crafting_categories = {"colonial-work"},
    crafting_speed = 5,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      -- emissions = 0.05 / 1.5
    },
    energy_usage = "800kW",
    ingredient_count = 4,
    -- open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    -- close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/lab.ogg",
        volume = 0.7
      },
      apparent_volume = 1
    },
    -- module_specification = { module_slots = 0 }
  },

  -- WAITING HALL
  {
    type = "container",
    name = "waiting-hall",
    icon = "__ColonialCharter__/graphics/icons/waiting-hall.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "waiting-hall"},
    max_health = 200,
    corpse = "medium-remnants",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    resistances =
    {
      {
        type = "fire",
        percent = 80
      },
      {
        type = "impact",
        percent = 30
      }
    },
    collision_box = {{-0.8, -0.8}, {0.8, 0.8}},
    selection_box = {{-1, -1}, {1, 1}},
    -- fast_replaceable_group = "container",
    inventory_size = 32,
    -- item_group_filters = "colonial-charter",
    item_subgroup_filters = {"colonial-colonist"}, -- should restrict it to just colonits, will see if it works. 
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    picture =
    {
      filename = "__ColonialCharter__/graphics/entity/waiting-hall/waiting-hall.png",
      priority = "extra-high",
      width = 84,
      height = 61,
      shift = {0.245, 0}
      -- shift = util.by_pixel(0, 1.5),
    },
    circuit_wire_connection_point = circuit_connector_definitions["chest"].points,
    circuit_connector_sprites = circuit_connector_definitions["chest"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance
  },

-- LANDING SITE
  {
    type = "assembling-machine",
    name = "landing-site",
    icon = "__ColonialCharter__/graphics/icons/landing-site.png",
    icon_size = 32,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "landing-site"},
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    collision_box = {{-4.2, -4.7}, {4.2, 4.7}},
    selection_box = {{-4.5, -5}, {4.5, 5}},
    alert_icon_shift = util.by_pixel(-3, -12),

    animation =
    {
      layers =
      {
        {
          filename = "__ColonialCharter__/graphics/entity/landing-site/landing-site-night.png",
          width = 353,
          height = 368,
          frame_count = 1,
          repeat_count = 16,
          shift = {0, 0}
          -- frame_count = 18,
          -- line_length = 8,
          -- shift = util.by_pixel(0, 2),
        },
      }
    },
-- TODO: Working visualisation is not working. Not sure how to fix, also not a top priority becasue it's likly to change. 
    working_visualisation =
    {
      {
        animation =
        {
          filename = "__ColonialCharter__/graphics/entity/landing-site/landing-site-night.png",
          -- 352,352,16
          frame_count = 16,
          width = 352,
          height = 352,
          animation_speed = 0.5,
          shift = util.by_pixel(0, -15),
        },
      },
    },
    crafting_categories = {"colonial-landing"},
    crafting_speed = 0.5,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.05 / 1.5
    },
    energy_usage = "90kW",
    ingredient_count = 1,
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/assembling-machine-t1-1.ogg",
          volume = 0.8
        },
        {
          filename = "__base__/sound/assembling-machine-t1-2.ogg",
          volume = 0.8
        }
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 1.5
    }
  },

  -- COMS DISH
  {
    type = "assembling-machine",
    name = "coms-dish",
    icon = "__ColonialCharter__/graphics/icons/coms-dish.png",
    icon_size = 32,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "coms-dish"},
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    -- light = {intensity = 0.75, size = 8, color = {r = 1.0, g = 1.0, b = 1.0}},
    -- alert_icon_shift = util.by_pixel(-3, -12),
    animation =
    {
      layers =
      {
        {
          filename = "__ColonialCharter__/graphics/entity/coms-dish/coms-dish.png",
          width = 171,
          height = 190,
          frame_count = 5,
          line_length = 5,
          animation_speed = 1 / 30,
                              -- 135 38 - I have no idea how this shift thing works, or what the units are
          shift = util.by_pixel(18, -47), 
          hr_version =
          {
            filename = "__ColonialCharter__/graphics/entity/coms-dish/hr-coms-dish.png",
            width = 343,
            height = 381,
            frame_count = 5,
            line_length = 5,
            animation_speed = 1 / 30,
            shift = util.by_pixel(18, -47), 
            scale = 0.5
          }
        },   
        {
          filename = "__ColonialCharter__/graphics/entity/coms-dish/coms-dish-shadow.png",
          width = 289,
          height = 122,
          frame_count = 5,
          line_length = 5,
          animation_speed = 1 / 30,
                                --214 53
          shift = util.by_pixel(110, 19), 
          draw_as_shadow = true,
          hr_version =
          {
            filename = "__ColonialCharter__/graphics/entity/coms-dish/hr-coms-dish-shadow.png",
            width = 578,
            height = 244,
            frame_count = 5,
            line_length = 5,
            animation_speed = 1 / 30,
            shift = util.by_pixel(110, 19), 
            scale = 0.5,
            draw_as_shadow = true
          }
        }
      }
    },
    crafting_categories = {"colonial-coms"},
    crafting_speed = 5,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      -- emissions = 0.05 / 1.5
    },
    energy_usage = "2800kW",
    ingredient_count = 1,
    -- open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    -- close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/lab.ogg",
        volume = 0.7
      },
      apparent_volume = 1
    },
    -- module_specification = { module_slots = 0 }
    },

  -- HYDROPONICS BUILDING
  -- TODO: add pipe connections they should be located on the left and right edges 2.5 squars down from the center. 
    {
      type = "assembling-machine",
      name = "hydroponics-building",
      icon = "__ColonialCharter__/graphics/icons/hydroponics-building.png",
      icon_size = 32,
      flags = {"placeable-neutral", "placeable-player", "player-creation"},
      minable = {hardness = 0.2, mining_time = 0.5, result = "hydroponics-building"},
      max_health = 300,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = {{-4.2, -3.2}, {4.2, 3.2}},
      selection_box = {{-4.5, -3.5}, {4.5, 3.5}},
      -- light = {intensity = 0.75, size = 8, color = {r = 1.0, g = 1.0, b = 1.0}},
      -- alert_icon_shift = util.by_pixel(-3, -12),
      animation =
      {
        layers =
        {
          {
            filename = "__ColonialCharter__/graphics/entity/hydroponics-building/hydroponics-building.png",
            width = 288,
            height = 224,
            frame_count = 1,
            -- had an issue with the bounidng box with the animation sprites. It's also a bit shit and the file size is massive. 
            -- frame_count = 16,
            -- line_length = 4,
            -- animation_speed = 1 / 30,
            hr_version =
            {
              filename = "__ColonialCharter__/graphics/entity/hydroponics-building/hr-hydroponics-building.png",
              width = 576,
              height = 448,
              frame_count = 1,
              -- frame_count = 16,
              -- line_length = 4,
              -- animation_speed = 1 / 30,
              scale = 0.5
            }
          },   
          {
            filename = "__ColonialCharter__/graphics/entity/hydroponics-building/hydroponics-building-shadow.png",
            width = 320,
            height = 207,
            frame_count = 1,
            -- repeat_count = 16,
            shift = util.by_pixel(16.75, 5.5), 
            draw_as_shadow = true,
            hr_version =
            {
              filename = "__ColonialCharter__/graphics/entity/hydroponics-building/hr-hydroponics-building.png",
              width = 641,
              height = 414,
              frame_count = 1,
              -- repeat_count = 16,
              shift = util.by_pixel(16.75, 5.5), 
              scale = 0.5,
              draw_as_shadow = true
            }
          }
        }
      },
      crafting_categories = {"colonial-agriculture"},
      crafting_speed = 5,
      energy_source =
      {
        type = "electric",
        usage_priority = "secondary-input",
        -- emissions = 0.05 / 1.5
      },
      energy_usage = "800kW",
      ingredient_count = 5,
      -- open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
      -- close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
      vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
      working_sound =
      {
        sound =
        {
          filename = "__base__/sound/lab.ogg",
          volume = 0.7
        },
        apparent_volume = 1
      },
      -- module_specification = { module_slots = 0 }
    },

})
