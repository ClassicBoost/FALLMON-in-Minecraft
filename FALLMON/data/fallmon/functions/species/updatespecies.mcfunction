execute as @a[team=!] run effect clear @a[team=!] haste
execute as @a[team=!] run effect clear @a[team=!] water_breathing
execute as @a[team=!] run effect clear @a[team=!] jump_boost
execute as @a[team=!] run effect clear @a[team=!] fire_resistance

execute as @a[team=!] run attribute @s[team=!] generic.movement_speed base set 0.1
execute as @a[team=!] run attribute @s[team=!] generic.armor base set 0
execute as @a[team=!] run attribute @s[team=!] generic.max_health base set 20
execute as @a[team=!] run attribute @s[team=!] generic.attack_damage base set 2
execute as @a[team=!] run attribute @s[team=!] generic.attack_knockback base set 0

effect give @a[team=] slowness 2 127 true
effect give @a[team=] blindness 2 127 true
effect give @a[team=] resistance 2 127 true
effect give @a[team=] weakness 2 127 true
title @a[team=] actionbar {"text": "Choose a Pokemon (/function fallmon:starter)"}

# bulbasaur
execute as @a[team=bulbasaur] run attribute @s[team=bulbasaur] generic.movement_speed base set 0.08
execute as @a[team=bulbasaur] run attribute @s[team=bulbasaur] generic.max_health base set 24
execute as @a[team=bulbasaur] run attribute @s[team=bulbasaur] generic.attack_knockback base set 0.5

# charmander
execute as @a[team=charmander] run attribute @s[team=charmander] generic.movement_speed base set 0.12
execute as @a[team=charmander] run attribute @s[team=charmander] generic.attack_damage base set 2.15

effect give @a[team=charmander] fire_resistance infinite 0 true

# squirtle
execute as @a[team=squirtle] run attribute @s[team=squirtle] generic.armor base set 6
execute as @a[team=squirtle] run attribute @s[team=squirtle] generic.attack_knockback base set 0.2

effect give @a[team=squirtle] water_breathing infinite 0 true

# pikachu
execute as @a[team=pikachu] run attribute @s[team=pikachu] generic.movement_speed base set 0.15
execute as @a[team=pikachu] run attribute @s[team=pikachu] generic.max_health base set 18
execute as @a[team=pikachu] run attribute @s[team=pikachu] generic.attack_damage base set 2.15

effect give @a[team=pikachu] jump_boost infinite 1 true

#rattata
execute as @a[team=rattata] run attribute @s[team=rattata] generic.movement_speed base set 0.15
execute as @a[team=rattata] run attribute @s[team=rattata] generic.max_health base set 22
effect give @a[team=rattata] jump_boost infinite 1 true

#psyduck
execute as @a[team=psyduck] run attribute @s[team=psyduck] generic.max_health base set 22
effect give @a[team=psyduck] water_breathing infinite 1 true

# cubone
execute as @a[team=cubone] run attribute @s[team=cubone] generic.movement_speed base set 0.12
execute as @a[team=cubone] run attribute @s[team=cubone] generic.attack_damage base set 4
execute as @a[team=cubone] run attribute @s[team=cubone] generic.attack_knockback base set 0.2

# eevee
# erm... Eevee doesn't really have any modifiers.
# YOUR AD HERE FUCKER

# chikorita
execute as @a[team=chikorita] run attribute @s[team=chikorita] generic.movement_speed base set 0.11
execute as @a[team=chikorita] run attribute @s[team=chikorita] generic.attack_damage base set 3

# cyndaquil
execute as @a[team=cyndaquil] run attribute @s[team=cyndaquil] generic.attack_damage base set 3
execute as @a[team=cyndaquil] run attribute @s[team=cyndaquil] generic.max_health base set 16
effect give @a[team=cyndaquil] fire_resistance infinite 1 true

# totodile
execute as @a[team=totodile] run attribute @s[team=totodile] generic.attack_damage base set 6
execute as @a[team=totodile] run attribute @s[team=totodile] generic.attack_knockback base set 0.2
effect give @a[team=totodile] water_breathing infinite 1 true

# treecko
execute as @a[team=treecko] run attribute @s[team=treecko] generic.movement_speed base set 0.11
execute as @a[team=treecko] run attribute @s[team=treecko] generic.armor base set -2
execute as @a[team=treecko] run attribute @s[team=treecko] generic.attack_damage base set 1

# torchic
execute as @a[team=torchic] run attribute @s[team=torchic] generic.armor base set 1
execute as @a[team=torchic] run attribute @s[team=torchic] generic.attack_damage base set 5
effect give @a[team=torchic] fire_resistance infinite 1 true

# mudkip
# i herd u liek mudkipz
execute as @a[team=mudkip] run attribute @s[team=mudkip] generic.armor base set 2
execute as @a[team=mudkip] run attribute @s[team=mudkip] generic.max_health base set 22
execute as @a[team=mudkip] run attribute @s[team=mudkip] generic.attack_damage base set 5
execute as @a[team=mudkip] run attribute @s[team=mudkip] generic.attack_knockback base set 0.2
effect give @a[team=mudkip] water_breathing infinite 1 true

# volpix
execute as @a[team=volpix] run attribute @s[team=volpix] generic.movement_speed base set 0.09
execute as @a[team=volpix] run attribute @s[team=volpix] generic.armor base set 2
effect give @a[team=volpix] water_breathing infinite 1 true

# phanpy
# fat ass
execute as @a[team=phanpy] run attribute @s[team=phanpy] generic.movement_speed base set 0.08
execute as @a[team=phanpy] run attribute @s[team=phanpy] generic.armor base set 1
execute as @a[team=phanpy] run attribute @s[team=phanpy] generic.max_health base set 22
execute as @a[team=phanpy] run attribute @s[team=phanpy] generic.attack_damage base set 5

# turtwig
# I like turtles
execute as @a[team=turtwig] run attribute @s[team=turtwig] generic.movement_speed base set 0.11
execute as @a[team=turtwig] run attribute @s[team=turtwig] generic.armor base set 2
execute as @a[team=turtwig] run attribute @s[team=turtwig] generic.max_health base set 22
execute as @a[team=turtwig] run attribute @s[team=turtwig] generic.attack_damage base set 4

# chimchar
# naw man, this is just a fucking charmander rip off
execute as @a[team=chimchar] run attribute @s[team=chimchar] generic.movement_speed base set 0.09
execute as @a[team=chimchar] run attribute @s[team=chimchar] generic.attack_damage base set 3
effect give @a[team=chimchar] fire_resistance infinite 1 true

# piplup
# bf as piplup??????????
execute as @a[team=piplup] run attribute @s[team=piplup] generic.attack_damage base set 3
effect give @a[team=piplup] water_breathing infinite 1 true

# shinx
# https://pokepasta.fandom.com/wiki/PMD:_Explorers_of_Death
execute as @a[team=shinx] run attribute @s[team=shinx] generic.movement_speed base set 0.11
execute as @a[team=shinx] run attribute @s[team=shinx] generic.armor base set 1
execute as @a[team=shinx] run attribute @s[team=shinx] generic.attack_damage base set 5

# riolu
execute as @a[team=riolu] run attribute @s[team=riolu] generic.movement_speed base set 0.11
execute as @a[team=riolu] run attribute @s[team=riolu] generic.armor base set 2
execute as @a[team=riolu] run attribute @s[team=riolu] generic.max_health base set 14
execute as @a[team=riolu] run attribute @s[team=riolu] generic.attack_damage base set 3.5
execute as @a[team=riolu] run attribute @s[team=riolu] generic.attack_knockback base set 0.5

effect give @a[team=riolu] jump_boost infinite 0 true
effect give @a[team=riolu] haste infinite 0 true

# wooper
execute as @a[team=wooper] run attribute @s[team=wooper] generic.movement_speed base set 0.13
execute as @a[team=wooper] run attribute @s[team=wooper] generic.max_health base set 22
execute as @a[team=wooper] run attribute @s[team=wooper] generic.armor base set 5
execute as @a[team=wooper] run attribute @s[team=wooper] generic.attack_damage base set 1
execute as @a[team=wooper] run attribute @s[team=wooper] generic.attack_knockback base set 0.4

# azurill
# doing doing doing doing doing doing doing doing doing doing doing doing
execute as @a[team=azurill] run attribute @s[team=azurill] generic.movement_speed base set 0.13
execute as @a[team=azurill] run attribute @s[team=azurill] generic.armor base set 5
execute as @a[team=azurill] run attribute @s[team=azurill] generic.attack_damage base set 1

# growlithe
# dog
execute as @a[team=growlithe] run attribute @s[team=growlithe] generic.movement_speed base set 0.12
execute as @a[team=growlithe] run attribute @s[team=growlithe] generic.armor base set 2
execute as @a[team=growlithe] run attribute @s[team=growlithe] generic.attack_damage base set 5
effect give @a[team=growlithe] fire_resistance infinite 1 true

# teddiursa
# freddy fazbear what happened? SQUID GAME
execute as @a[team=teddiursa] run attribute @s[team=teddiursa] generic.movement_speed base set 0.11
execute as @a[team=teddiursa] run attribute @s[team=teddiursa] generic.armor base set 1
execute as @a[team=teddiursa] run attribute @s[team=teddiursa] generic.max_health base set 22
execute as @a[team=teddiursa] run attribute @s[team=teddiursa] generic.attack_damage base set 4

# buneary
# bunny sex
execute as @a[team=buneary] run attribute @s[team=buneary] generic.movement_speed base set 0.12
execute as @a[team=buneary] run attribute @s[team=buneary] generic.attack_damage base set 3

# togepi
# should this even be allowed!?!?!?!
execute as @a[team=togepi] run attribute @s[team=togepi] generic.movement_speed base set 0.13
execute as @a[team=togepi] run attribute @s[team=togepi] generic.armor base set 5
execute as @a[team=togepi] run attribute @s[team=togepi] generic.max_health base set 18
execute as @a[team=togepi] run attribute @s[team=togepi] generic.attack_damage base set 1

# mareep
# the player turns into a sheep
execute as @a[team=mareep] run attribute @s[team=mareep] generic.max_health base set 22
execute as @a[team=mareep] run attribute @s[team=mareep] generic.attack_damage base set 3

# elekid
execute as @a[team=elekid] run attribute @s[team=elekid] generic.movement_speed base set 0.17
execute as @a[team=elekid] run attribute @s[team=elekid] generic.max_health base set 14
execute as @a[team=elekid] run attribute @s[team=elekid] generic.attack_damage base set 6

# pachirisu
execute as @a[team=pachirisu] run attribute @s[team=pachirisu] generic.movement_speed base set 0.09
execute as @a[team=pachirisu] run attribute @s[team=pachirisu] generic.armor base set 3
execute as @a[team=pachirisu] run attribute @s[team=pachirisu] generic.max_health base set 22
execute as @a[team=pachirisu] run attribute @s[team=pachirisu] generic.attack_damage base set 3

# snivy
execute as @a[team=snivy] run attribute @s[team=snivy] generic.movement_speed base set 0.125
execute as @a[team=snivy] run attribute @s[team=snivy] generic.armor base set -4
execute as @a[team=snivy] run attribute @s[team=snivy] generic.max_health base set 16
execute as @a[team=snivy] run attribute @s[team=snivy] generic.attack_damage base set 1.5
execute as @a[team=snivy] run attribute @s[team=snivy] generic.attack_knockback base set 0.2

effect give @a[team=snivy] jump_boost infinite 0 true

# tepig
execute as @a[team=tepig] run attribute @s[team=tepig] generic.movement_speed base set 0.13
execute as @a[team=tepig] run attribute @s[team=tepig] generic.max_health base set 24
execute as @a[team=tepig] run attribute @s[team=tepig] generic.attack_damage base set 6

effect give @a[team=tepig] fire_resistance infinite 0 true

# oshawott
execute as @a[team=oshawott] run attribute @s[team=oshawott] generic.movement_speed base set 0.11
execute as @a[team=oshawott] run attribute @s[team=oshawott] generic.armor base set 1
execute as @a[team=oshawott] run attribute @s[team=oshawott] generic.attack_damage base set 3

effect give @a[team=oshawott] water_breathing infinite 0 true

# axew
execute as @a[team=axew] run attribute @s[team=axew] generic.movement_speed base set 0.13
execute as @a[team=axew] run attribute @s[team=axew] generic.max_health base set 22
execute as @a[team=axew] run attribute @s[team=axew] generic.attack_damage base set 6

# chespin
execute as @a[team=chespin] run attribute @s[team=chespin] generic.movement_speed base set 0.12
execute as @a[team=chespin] run attribute @s[team=chespin] generic.armor base set 1
execute as @a[team=chespin] run attribute @s[team=chespin] generic.attack_damage base set 4

# fennekin
execute as @a[team=fennekin] run attribute @s[team=fennekin] generic.movement_speed base set 0.11
execute as @a[team=fennekin] run attribute @s[team=fennekin] generic.attack_damage base set 1
execute as @a[team=fennekin] run attribute @s[team=fennekin] generic.max_health base set 18

# froakie
execute as @a[team=froakie] run attribute @s[team=froakie] generic.movement_speed base set 0.12
execute as @a[team=froakie] run attribute @s[team=froakie] generic.attack_damage base set 1

effect give @a[team=froakie] water_breathing infinite 0 true

# joey
effect give @a[team=joey] slowness 2 0 true
effect give @a[team=joey] poison 2 127 true
effect give @a[team=joey] darkness 2 0 true
effect give @a[team=joey] nausea 2 0 true
effect give @a[team=joey] wither 2 0 true
# effect give @a[team=joey] weakness 2 0 true
effect give @a[team=joey] hunger 2 0 true
effect give @a[team=joey] blindness 2 0 true
effect give @a[team=joey] unluck 2 0 true
effect give @a[team=joey] slowness 2 0 true
title @a[team=joey] actionbar "You are too drunk"