# Todo List

Get basic loop working:

6 tierd colonist form rocket
        \/
6 rest in rest-recipie 
        \/
3 work in workshop with; 50 processing units, 
    \/      \/
100space  3 tierd colonists 416 seconds or 1day
            loop

4 colonists in housing  1248 seconds or 3days 
    \/
reprocude-recipie
    \/
6 colonists out.


tech progersion

colonial-charter
    \/      \/
articls,   reprocude


tech order, so they appear togther in the tree - NO idea how, low priority

add chest, holding station for colonists only. - Waiting are in, no idea on exlusivity

add wast as byproduct to reprocess. 

Add a landing site, where colonits are rescived

Migration snippets for future use 

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