# Todo List
tech order, so they appear together in the tree - NO idea how, low priority

holding station for colonists only. - Waiting are in, no idea on exclusivity

add wast as byproduct to reprocess. - maybe for later. 

Add a landing-site were colonists are received - landing site is in, but animation is shit. 


# TECH PROGRESSION
```
advanced-electronics > colonial-coms > colonial-agriculture > colonial-charter > articles-of-colonisation

colonial-agriculture > colonial-bio-research > planethood

articles-of-colonisation > colonial-reproductive-initiative > planethood

articles-of-colonisation > charter-amendment-1 > charter-amendment-n

articles-of-colonisation > colonial-production-optimisation > colonial-high-tech-production > colonial-space-reaserch >  planethood

advanced-material-processing-2 > colonial-production-optimisation
advanced-electronics-2 > colonial-high-tech-production
rocket-silo > colonial-space-reaserch

...
```
# TECH DESCRIPTION
```
  colonial-coms
unlock recipe: coms-dish,  colonist-arrival-data

  colonial-agriculture
unlock recipe: hydroponics-building, soil, fertiliser, automated-food

  colonial-bio-research
unlock recipe: bio-research, grow-lumber, field-equipment
This should be the way to produce blue science packs. 

  colonial-charter
unlock recipe: landing-site, housing, workshop, waiting-hall

  articles-of-colonisation
unlock recipe: legal-work

  colonial-reproductive-initiative
unlock recipe: reproduce, memorial, heal, medical-supplies

  charter-amendment
this is where we put some sort of colonist output improvements, maybe workshop craft speed or something. 

  planethood
this will be the final colonial tech, the *goal* of the mod. 

...
```
# RECIPE DESCRIPTION
```
  field-equipment
energy: 1
engine-unit x1, advanced-circuit x1, iron-gear-wheel x5, iron-plate x10

  bio-research
category: colonial-agriculture
energy: 70 (vanilla blue is 12, time should be balanced with output)
ingretients: field-equipment x6, colonist x3, soil x50, fertiliser x2, water x10
result: tierd-colonist x3, soil x45, science-pack-3 x6

  military-equipment
ingredients: grenade x1, gun-turret x1, piercing-rounds-magazine x1

  military-science-pack 
category: colonial-work
energy: 70
ingredients: colonist x3, military-equipment x6

  industrial-equipment
ingredients: electric-engine-unit x1, electric-furnace  x1

  production-science-pack
category: colonial-work
energy: 70
ingredients: colonist x3, industrial-equipment x5

  high-tech-equipment
ingredients: battery x1, copper-cable x30, processing-unit x3, speed-module x1

  high-tech-science-pack
category: colonial-work
energy: 70
ingredients: colonist x3, high-tech-equipment x5

  optical-observatory
subgroup: colonial-buildings
used to produce space science, will look like a giant telescope. 

  observation-equipment
something balanced for the lategame tech upgrades. 

...
```
# other stuff

Migration snippets for future use 
```
for index, force in pairs(game.forces) do
  local technologies = force.technologies
  local recipes = force.recipes

  recipes["rail-chain-signal"].enabled = technologies["rail-signals"].researched

  if technologies["tanks"].researched then
    recipes["explosive-cannon-shell"].enabled = true
    recipes["cannon-shell"].reload()
    recipes["explosive-cannon-shell"].reload()
  end
end
```
