data:extend({
  -- colonial housing 
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
  
  -- colinial workshop it's just a copy of housing with diffrent crafting category
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

  -- STATION CHEST
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
  -- {
  --   type = "assembling-machine",
  --   name = "landing-site",
  --   icon = "__ColonialCharter__/graphics/entity/landing-site/landing-site.png",
  --   icon_size = 32,
  --   flags = {"placeable-neutral", "placeable-player", "player-creation"},
  --   minable = {hardness = 0.2, mining_time = 0.5, result = "assembling-machine-1"},
  --   max_health = 300,
  --   corpse = "big-remnants",
  --   dying_explosion = "medium-explosion",
  --   resistances =
  --   {
  --     {
  --       type = "fire",
  --       percent = 70
  --     }
  --   },
  --   collision_box = {{-4.2, -4.7}, {4.2, 4.7}},
  --   selection_box = {{-4.5, -5}, {4.5, 5}},
  --   -- fast_replaceable_group = "assembling-machine",
  --   alert_icon_shift = util.by_pixel(-3, -12),
  --   animation =
  --   {
  --     layers =
  --     {
  --       {
  --         filename = "__ColonialCharter__/graphics/entity/landing-site//landing.png",
  --         priority="high",
  --         width = 353,
  --         height = 368,
  --         frame_count = 18,
  --         line_length = 8,
  --         -- shift = util.by_pixel(0, 2),
  --       },
  --       }
  --     }
  --   },
  --   crafting_categories = {"crafting"},
  --   crafting_speed = 0.5,
  --   energy_source =
  --   {
  --     type = "electric",
  --     usage_priority = "secondary-input",
  --     emissions = 0.05 / 1.5
  --   },
  --   energy_usage = "90kW",
  --   ingredient_count = 2,
  --   open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
  --   close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
  --   vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
  --   working_sound =
  --   {
  --     sound =
  --     {
  --       {
  --         filename = "__base__/sound/assembling-machine-t1-1.ogg",
  --         volume = 0.8
  --       },
  --       {
  --         filename = "__base__/sound/assembling-machine-t1-2.ogg",
  --         volume = 0.8
  --       }
  --     },
  --     idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
  --     apparent_volume = 1.5
  --   }
  -- },

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

})

-- minable = {hardness = 0.2, mining_time = 0.5, result = "electric-energy-interface"},
--     max_health = 150,
--     corpse = "medium-remnants",
--     collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
--     selection_box = {{-1, -1}, {1, 1}},
--     enable_gui = true,
--     allow_copy_paste = true,
--     energy_source =
--     {
--       type = "electric",
--       buffer_capacity = "10GJ",
--       usage_priority = "terciary",
--       input_flow_limit = "0kW",
--       output_flow_limit = "500GW"
--     },

--     energy_production = "500GW",
--     energy_usage = "0kW",
--     -- also 'pictures' for 4-way sprite is available, or 'animation' resp. 'animations'
--     picture =
--     {
--       filename = "__base__/graphics/entity/accumulator/accumulator.png",
--       priority = "extra-high",
--       width = 124,
--       height = 103,
--       shift = {0.6875, -0.203125},
--       tint = {r=1, g=0.8, b=1, a=1}
--     },
--     vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
--     working_sound =
--     {
--       sound =
--       {
--         filename = "__base__/sound/accumulator-working.ogg",
--         volume = 1
--       },
--       idle_sound =
--       {
--         filename = "__base__/sound/accumulator-idle.ogg",
--         volume = 0.4
--       },
--       max_sounds_per_type = 5
--     }
--   },