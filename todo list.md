# Todo List
- holding station for colonists only. - Waiting are in, no idea on exclusivity

- add wast as byproduct to reprocess. - maybe for later. 

- Add a landing-site were colonists are received - landing site is in, but animation is shit. 

- Add in science cost to techs, here in the doc

- Implement the planned techs and new items.

The basic idea for the science will be to add intermidiate products for each of the advanced techs. These will have the same cost as their vanila beacon equivilent. The colonists then use this intermidiate in a workshop to produce the final tech, science-pack-3, militaty-pack ... 

```
  ideas for expanding agricultural production cycle, mixed with life support expansion. 
air-filtration > nitrogen + oxygen + carbon-sulphates: all as liquids. 
mine-stone > stone, minerals 0.02%
  leave this for now
    crush-stone > stone-pulp, minerals 
    brick > stone-pulp
    stone-pulp is used in concreete 
nitrogen, sulphates, minerals > fertiliser
oxygen, water, nitrogen > life-suport-unit 

Should life support be requierd as input to each colonist recipe? Maybe have it requiered to build then assumed it's a closed system with little to no loss. I like this idea. 

electronic-circuit, iron-plate > consumer-tech
cotton > clothes - leave this one for now. 
```

# TECH PROGRESSION
```
find-good-tech > air-filtration > colonial-construction > colonial-agriculture

air-filtration > pollutant-sequestration

advanced-electronics > colonial-coms > colonial-agriculture > colonial-charter > articles-of-colonisation

colonial-charter > colonial-bio-research > planethood

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
  atmospheric-sequestration
unlock recipe: nitrogen-sequestration, oxygen-sequestration, atmospheric-sequestor, 
ingredients: science-pack-1 x50, science-pack-2 x50
time: 10

  pollutant-sequestration
unlock recipe: pollutant-sequestration
will see where to add this, not the highest priority. 

colonial-construction
unlock recipe: housing, workshop, waiting-hall
ingredients: science-pack-1 x50, science-pack-2 x50
time: 10

  colonial-coms
unlock recipe: coms-dish,  colonist-arrival-data
ingredients: science-pack-1 x50, science-pack-2 x50
time: 15
done: icon, 

  colonial-agriculture
unlock recipe: hydroponics-building, soil, fertiliser, automated-food
ingredients: science-pack-1 x80, science-pack-2 x80
time: 15
done: icon, 

  colonial-bio-research
unlock recipe: bio-research, grow-lumber, field-equipment
ingredients: science-pack-1 x100, science-pack-2 x 100
time: 15
This should be the way to produce blue science packs. 
done: icon, 

  colonial-charter
unlock recipe: landing-site, colonist-landing
ingredients: science-pack-1 x80, science-pack-2 x80
time: 15
done: icon,

  articles-of-colonisation
unlock recipe: legal-work
ingredients: science-pack-1 x150, science-pack-2 x150
time: 20
done: icon,

  colonial-reproductive-initiative
unlock recipe: reproduce, memorial, heal, medical-supplies
ingredients: science-pack-1 x100, science-pack-2 x100, legal-documents x200
time: 20
done: icon,

colonial-production-optimisation
unlock recipe: industrial-equipment, production-science-pack
ingredients: science-pack-1 x200, science-pack-2 x200, science-pack-3 x200, legal-documents x200
time: 30
done: icon,

colonial-high-tech-production
unlock recipe: high-tech-equipment, high-tech-science-pack
ingredients: science-pack-1 x250, science-pack-2 x250, science-pack-3 x250, legal-documents x250
time: 30
done: icon,

  charter-amendment
this is where we put some sort of colonist output improvements, maybe workshop craft speed or something. 

  planethood
this will be the final colonial tech, the *goal* of the mod. 
done: icon,

...
```
# RECIPE DESCRIPTION
```
  field-equipment
type: itme
subgroup: colonial-products
energy: 1
ingredients: engine-unit x1, advanced-circuit x1, iron-gear-wheel x5, iron-plate x10
done: icon, 

  bio-research
category: colonial-agriculture
energy: 70 (vanilla blue is 12, time should be balanced with output)
ingretients: field-equipment x6, colonist x3, soil x50, fertiliser x2, water x10
result: tierd-colonist x3, soil x45, science-pack-3 x6
done: icon, 

  military-equipment
ingredients: grenade x1, gun-turret x1, piercing-rounds-magazine x1
done: icon,

  military-science-pack 
category: colonial-work
energy: 70
ingredients: colonist x3, military-equipment x6
done: use vanila icon,

  industrial-equipment
ingredients: electric-engine-unit x1, electric-furnace  x1
done: icon, 

  production-science-pack
category: colonial-work
energy: 70
ingredients: colonist x3, industrial-equipment x5
done: use vanila icon,

  high-tech-equipment
ingredients: battery x1, copper-cable x30, processing-unit x3, speed-module x1
done: icon,

  high-tech-science-pack
category: colonial-work
energy: 70
ingredients: colonist x3, high-tech-equipment x5
done: icon,

  optical-observatory
subgroup: colonial-buildings
used to produce space science, will look like a giant telescope. 
done:

  observation-equipment
something balanced for the lategame tech upgrades. 
done:
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
