execute as @a[team=!] run attribute @s[team=!] minecraft:movement_speed base set 0.1
execute as @a[team=!] run attribute @s[team=!] minecraft:armor base set 0
execute as @a[team=!] run attribute @s[team=!] minecraft:max_health base set 20
execute as @a[team=!] run attribute @s[team=!] minecraft:attack_damage base set 2
execute as @a[team=!] run attribute @s[team=!] minecraft:attack_knockback base set 0
execute as @a[team=!] run attribute @s[team=!] minecraft:attack_speed base set 4

effect give @a[gamemode=survival,team=] minecraft:slowness 2 127 true
effect give @a[gamemode=survival,team=] minecraft:blindness 2 127 true
effect give @a[gamemode=survival,team=] minecraft:resistance 2 127 true
effect give @a[gamemode=survival,team=] minecraft:weakness 2 127 true
title @a[gamemode=survival,team=] actionbar {"text": "Choose a Pokemon (/function fallmon:starter)"}

execute as @a run attribute @s minecraft:jump_strength base set 0.42
execute as @a run attribute @s minecraft:block_break_speed base set 1

# types
#  | 0 - Water | 1 - None/Pure Normal | 2 - Fire | 3 - Grass | 4 - Eletric | 5 - Flying | 6 - Poison
scoreboard players set @a[team=] type -1

effect give @a[scores={type=2}] minecraft:fire_resistance 5 0 true
effect give @a[scores={type=0}] minecraft:water_breathing 5 0 true
effect clear @a[scores={type=1}] minecraft:poison

# bulbasaur
execute as @a[team=bulbasaur] run attribute @s[team=bulbasaur] minecraft:movement_speed base set 0.08
execute as @a[team=bulbasaur] run attribute @s[team=bulbasaur] minecraft:max_health base set 24
execute as @a[team=bulbasaur] run attribute @s[team=bulbasaur] minecraft:attack_knockback base set 0.5

scoreboard players set @a[team=bulbasaur] type 3

# charmander
execute as @a[team=charmander] run attribute @s[team=charmander] minecraft:movement_speed base set 0.12
execute as @a[team=charmander] run attribute @s[team=charmander] minecraft:attack_damage base set 2.15

scoreboard players set @a[team=charmander] type 2

# squirtle
execute as @a[team=squirtle] run attribute @s[team=squirtle] minecraft:armor base set 6
execute as @a[team=squirtle] run attribute @s[team=squirtle] minecraft:attack_knockback base set 0.2

scoreboard players set @a[team=squirtle] type 0

# pikachu
# overrated as fuck man
execute as @a[team=pikachu] run attribute @s[team=pikachu] minecraft:movement_speed base set 0.15
execute as @a[team=pikachu] run attribute @s[team=pikachu] minecraft:max_health base set 18
execute as @a[team=pikachu] run attribute @s[team=pikachu] minecraft:attack_damage base set 2.15

scoreboard players set @a[team=pikachu] type 4
execute as @a[team=pikachu] run attribute @s[team=pikachu] minecraft:jump_strength base set 0.6

#psyduck
execute as @a[team=psyduck] run attribute @s[team=psyduck] minecraft:max_health base set 22
effect give @a[team=psyduck] minecraft:water_breathing 2 1 true

scoreboard players set @a[team=psyduck] type 0

# cubone
execute as @a[team=cubone] run attribute @s[team=cubone] minecraft:movement_speed base set 0.12
execute as @a[team=cubone] run attribute @s[team=cubone] minecraft:armor base set 4
execute as @a[team=cubone] run attribute @s[team=cubone] minecraft:attack_knockback base set 0.2
scoreboard players set @a[team=cubone] type 1

# eevee
# erm... Eevee doesn't really have any modifiers.
# YOUR AD HERE FUCKER
scoreboard players set @a[team=eevee] type 1

# chikorita
execute as @a[team=chikorita] run attribute @s[team=chikorita] minecraft:movement_speed base set 0.11
execute as @a[team=chikorita] run attribute @s[team=chikorita] minecraft:attack_damage base set 3

scoreboard players set @a[team=chikorita] type 3

# cyndaquil
execute as @a[team=cyndaquil] run attribute @s[team=cyndaquil] minecraft:attack_damage base set 3
execute as @a[team=cyndaquil] run attribute @s[team=cyndaquil] minecraft:max_health base set 16
effect give @a[team=cyndaquil] minecraft:fire_resistance 2 1 true

scoreboard players set @a[team=cyndaquil] type 2

# totodile
execute as @a[team=totodile] run attribute @s[team=totodile] minecraft:attack_damage base set 6
execute as @a[team=totodile] run attribute @s[team=totodile] minecraft:attack_knockback base set 0.2
effect give @a[team=totodile] minecraft:water_breathing 2 1 true

scoreboard players set @a[team=totodile] type 0

# treecko
execute as @a[team=treecko] run attribute @s[team=treecko] minecraft:movement_speed base set 0.11
execute as @a[team=treecko] run attribute @s[team=treecko] minecraft:armor base set -2
execute as @a[team=treecko] run attribute @s[team=treecko] minecraft:attack_damage base set 1

scoreboard players set @a[team=treecko] type 3

# torchic
execute as @a[team=torchic] run attribute @s[team=torchic] minecraft:armor base set 1
execute as @a[team=torchic] run attribute @s[team=torchic] minecraft:attack_damage base set 5

scoreboard players set @a[team=torchic] type 2

# mudkip
# i herd u liek mudkipz
execute as @a[team=mudkip] run attribute @s[team=mudkip] minecraft:armor base set 2
execute as @a[team=mudkip] run attribute @s[team=mudkip] minecraft:max_health base set 22
execute as @a[team=mudkip] run attribute @s[team=mudkip] minecraft:attack_damage base set 5
execute as @a[team=mudkip] run attribute @s[team=mudkip] minecraft:attack_knockback base set 0.2

scoreboard players set @a[team=mudkip] type 0

# volpix
execute as @a[team=volpix] run attribute @s[team=volpix] minecraft:movement_speed base set 0.09
execute as @a[team=volpix] run attribute @s[team=volpix] minecraft:armor base set 2

scoreboard players set @a[team=volpix] type 2
# NOW A FIRE TYPE NOT WATER LMAO

# phanpy
execute as @a[team=phanpy] run attribute @s[team=phanpy] minecraft:movement_speed base set 0.08
execute as @a[team=phanpy] run attribute @s[team=phanpy] minecraft:armor base set 1
execute as @a[team=phanpy] run attribute @s[team=phanpy] minecraft:max_health base set 22
execute as @a[team=phanpy] run attribute @s[team=phanpy] minecraft:attack_damage base set 5

scoreboard players set @a[team=phanpy] type 1

# turtwig
execute as @a[team=turtwig] run attribute @s[team=turtwig] minecraft:movement_speed base set 0.11
execute as @a[team=turtwig] run attribute @s[team=turtwig] minecraft:armor base set 2
execute as @a[team=turtwig] run attribute @s[team=turtwig] minecraft:max_health base set 22
execute as @a[team=turtwig] run attribute @s[team=turtwig] minecraft:attack_damage base set 4

scoreboard players set @a[team=turtwig] type 3

# chimchar
# naw man, this is just a fucking charmander rip off
execute as @a[team=chimchar] run attribute @s[team=chimchar] minecraft:movement_speed base set 0.09
execute as @a[team=chimchar] run attribute @s[team=chimchar] minecraft:attack_damage base set 3

scoreboard players set @a[team=chimchar] type 2

# piplup
# bf as piplup??????????
execute as @a[team=piplup] run attribute @s[team=piplup] minecraft:attack_damage base set 3

scoreboard players set @a[team=piplup] type 0

# shinx
# https://pokepasta.fandom.com/wiki/PMD:_Explorers_of_Death
execute as @a[team=shinx] run attribute @s[team=shinx] minecraft:movement_speed base set 0.11
execute as @a[team=shinx] run attribute @s[team=shinx] minecraft:armor base set 1
execute as @a[team=shinx] run attribute @s[team=shinx] minecraft:attack_damage base set 5

scoreboard players set @a[team=shinx] type 4

# riolu
execute as @a[team=riolu] run attribute @s[team=riolu] minecraft:movement_speed base set 0.11
execute as @a[team=riolu] run attribute @s[team=riolu] minecraft:armor base set 2
execute as @a[team=riolu] run attribute @s[team=riolu] minecraft:max_health base set 14
execute as @a[team=riolu] run attribute @s[team=riolu] minecraft:attack_damage base set 3.5
execute as @a[team=riolu] run attribute @s[team=riolu] minecraft:attack_knockback base set 0.5

execute as @a[team=riolu] run attribute @s[team=riolu] minecraft:jump_strength base set 0.6
execute as @a[team=riolu] run attribute @s[team=riolu] minecraft:block_break_speed base set 1.2

scoreboard players set @a[team=riolu] type 1

# wooper
execute as @a[team=wooper] run attribute @s[team=wooper] minecraft:movement_speed base set 0.13
execute as @a[team=wooper] run attribute @s[team=wooper] minecraft:max_health base set 22
execute as @a[team=wooper] run attribute @s[team=wooper] minecraft:armor base set 5
execute as @a[team=wooper] run attribute @s[team=wooper] minecraft:attack_damage base set 1
execute as @a[team=wooper] run attribute @s[team=wooper] minecraft:attack_knockback base set 0.4

scoreboard players set @a[team=wooper] type 0

# azurill
# doing doing doing doing doing doing doing doing doing doing doing doing
execute as @a[team=azurill] run attribute @s[team=azurill] minecraft:movement_speed base set 0.13
execute as @a[team=azurill] run attribute @s[team=azurill] minecraft:armor base set 5
execute as @a[team=azurill] run attribute @s[team=azurill] minecraft:attack_damage base set 1

scoreboard players set @a[team=azurill] type 1

# growlithe
# dog
execute as @a[team=growlithe] run attribute @s[team=growlithe] minecraft:movement_speed base set 0.12
execute as @a[team=growlithe] run attribute @s[team=growlithe] minecraft:armor base set 2
execute as @a[team=growlithe] run attribute @s[team=growlithe] minecraft:attack_damage base set 5

scoreboard players set @a[team=growlithe] type 2

# teddiursa
# freddy fazbear what happened? SQUID GAME
execute as @a[team=teddiursa] run attribute @s[team=teddiursa] minecraft:movement_speed base set 0.11
execute as @a[team=teddiursa] run attribute @s[team=teddiursa] minecraft:armor base set 1
execute as @a[team=teddiursa] run attribute @s[team=teddiursa] minecraft:max_health base set 22
execute as @a[team=teddiursa] run attribute @s[team=teddiursa] minecraft:attack_damage base set 4
scoreboard players set @a[team=teddiursa] type 1

# buneary
# bunny sex
execute as @a[team=buneary] run attribute @s[team=buneary] minecraft:movement_speed base set 0.12
execute as @a[team=buneary] run attribute @s[team=buneary] minecraft:attack_damage base set 3
scoreboard players set @a[team=buneary] type 1

# togepi
# should this even be allowed!?!?!?!
execute as @a[team=togepi] run attribute @s[team=togepi] minecraft:movement_speed base set 0.13
execute as @a[team=togepi] run attribute @s[team=togepi] minecraft:armor base set 5
execute as @a[team=togepi] run attribute @s[team=togepi] minecraft:max_health base set 18
execute as @a[team=togepi] run attribute @s[team=togepi] minecraft:attack_damage base set 1
scoreboard players set @a[team=togepi] type 1

# mareep
# the player turns into a sheep
execute as @a[team=mareep] run attribute @s[team=mareep] minecraft:max_health base set 22
execute as @a[team=mareep] run attribute @s[team=mareep] minecraft:attack_damage base set 3

scoreboard players set @a[team=mareep] type 4

# elekid
execute as @a[team=elekid] run attribute @s[team=elekid] minecraft:movement_speed base set 0.17
execute as @a[team=elekid] run attribute @s[team=elekid] minecraft:max_health base set 14
execute as @a[team=elekid] run attribute @s[team=elekid] minecraft:attack_damage base set 6

scoreboard players set @a[team=elekid] type 4

# pachirisu
execute as @a[team=pachirisu] run attribute @s[team=pachirisu] minecraft:movement_speed base set 0.09
execute as @a[team=pachirisu] run attribute @s[team=pachirisu] minecraft:armor base set 3
execute as @a[team=pachirisu] run attribute @s[team=pachirisu] minecraft:max_health base set 22
execute as @a[team=pachirisu] run attribute @s[team=pachirisu] minecraft:attack_damage base set 3
scoreboard players set @a[team=pachirisu] type 4

# snivy
execute as @a[team=snivy] run attribute @s[team=snivy] minecraft:movement_speed base set 0.125
execute as @a[team=snivy] run attribute @s[team=snivy] minecraft:armor base set -2
execute as @a[team=snivy] run attribute @s[team=snivy] minecraft:max_health base set 16
execute as @a[team=snivy] run attribute @s[team=snivy] minecraft:attack_damage base set 1.5
execute as @a[team=snivy] run attribute @s[team=snivy] minecraft:attack_knockback base set 0.2
execute as @a[team=snivy] run attribute @s[team=snivy] minecraft:attack_speed base set 5

scoreboard players set @a[team=snivy] type 3
execute as @a[team=snivy] run attribute @s[team=snivy] minecraft:jump_strength base set 0.6

# tepig
execute as @a[team=tepig] run attribute @s[team=tepig] minecraft:movement_speed base set 0.12
execute as @a[team=tepig] run attribute @s[team=tepig] minecraft:attack_damage base set 3.5
execute as @a[team=tepig] run attribute @s[team=tepig] minecraft:attack_speed base set 3

scoreboard players set @a[team=tepig] type 2

# oshawott
execute as @a[team=oshawott] run attribute @s[team=oshawott] minecraft:movement_speed base set 0.11
execute as @a[team=oshawott] run attribute @s[team=oshawott] minecraft:armor base set 2
execute as @a[team=oshawott] run attribute @s[team=oshawott] minecraft:attack_damage base set 3

scoreboard players set @a[team=oshawott] type 0

# axew
execute as @a[team=axew] run attribute @s[team=axew] minecraft:movement_speed base set 0.085
execute as @a[team=axew] run attribute @s[team=axew] minecraft:max_health base set 24
execute as @a[team=axew] run attribute @s[team=axew] minecraft:attack_damage base set 4
scoreboard players set @a[team=axew] type 1

# chespin
execute as @a[team=chespin] run attribute @s[team=chespin] minecraft:movement_speed base set 0.12
execute as @a[team=chespin] run attribute @s[team=chespin] minecraft:armor base set 1
execute as @a[team=chespin] run attribute @s[team=chespin] minecraft:attack_damage base set 4

scoreboard players set @a[team=chespin] type 3

# fennekin
execute as @a[team=fennekin] run attribute @s[team=fennekin] minecraft:movement_speed base set 0.11
execute as @a[team=fennekin] run attribute @s[team=fennekin] minecraft:attack_damage base set 1
execute as @a[team=fennekin] run attribute @s[team=fennekin] minecraft:max_health base set 18

scoreboard players set @a[team=fennekin] type 2

# froakie
execute as @a[team=froakie] run attribute @s[team=froakie] minecraft:movement_speed base set 0.12
execute as @a[team=froakie] run attribute @s[team=froakie] minecraft:attack_damage base set 1

scoreboard players set @a[team=froakie] type 0