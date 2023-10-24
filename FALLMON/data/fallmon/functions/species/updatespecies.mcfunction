execute if entity @a[team=!] run effect clear @a[team=!] haste
execute if entity @a[team=!] run effect clear @a[team=!] water_breathing
execute if entity @a[team=!] run effect clear @a[team=!] jump_boost
execute if entity @a[team=!] run effect clear @a[team=!] fire_resistance

execute if entity @a[team=!] run attribute @p generic.movement_speed base set 0.1
execute if entity @a[team=!] run attribute @p generic.armor base set 0
execute if entity @a[team=!] run attribute @p generic.max_health base set 20
execute if entity @a[team=!] run attribute @p generic.attack_damage base set 2
execute if entity @a[team=!] run attribute @p generic.attack_knockback base set 0

# bulbasaur
execute if entity @a[team=bulbasaur] run attribute @p generic.movement_speed base set 0.08
execute if entity @a[team=bulbasaur] run attribute @p generic.max_health base set 24
execute if entity @a[team=bulbasaur] run attribute @p generic.attack_knockback base set 0.5

# charmander
execute if entity @a[team=charmander] run attribute @p generic.movement_speed base set 0.12
execute if entity @a[team=charmander] run attribute @p generic.attack_damage base set 2.15

effect give @a[team=charmander] fire_resistance infinite 0 true

# squirtle
execute if entity @a[team=squirtle] run attribute @p generic.armor base set 6
execute if entity @a[team=squirtle] run attribute @p generic.attack_knockback base set 0.2

effect give @a[team=squirtle] water_breathing infinite 0 true

# pikachu
execute if entity @a[team=pikachu] run attribute @p generic.movement_speed base set 0.15
execute if entity @a[team=pikachu] run attribute @p generic.max_health base set 18
execute if entity @a[team=pikachu] run attribute @p generic.attack_damage base set 2.15

effect give @a[team=pikachu] jump_boost infinite 1 true

# riolu
execute if entity @a[team=riolu] run attribute @p generic.movement_speed base set 0.11
execute if entity @a[team=riolu] run attribute @p generic.armor base set 2
execute if entity @a[team=riolu] run attribute @p generic.max_health base set 14
execute if entity @a[team=riolu] run attribute @p generic.attack_damage base set 3.5
execute if entity @a[team=riolu] run attribute @p generic.attack_knockback base set 0.5

effect give @a[team=riolu] jump_boost infinite 0 true
effect give @a[team=riolu] haste infinite 0 true

# snivy
execute if entity @a[team=snivy] run attribute @p generic.movement_speed base set 0.125
execute if entity @a[team=snivy] run attribute @p generic.armor base set -4
execute if entity @a[team=snivy] run attribute @p generic.max_health base set 16
execute if entity @a[team=snivy] run attribute @p generic.attack_damage base set 1.5
execute if entity @a[team=snivy] run attribute @p generic.attack_knockback base set 0.2

effect give @a[team=snivy] jump_boost infinite 0 true

#rattata
execute if entity @a[team=rattata] run attribute @p generic.movement_speed base set 0.15
execute if entity @a[team=rattata] run attribute @p generic.max_health base set 22
effect give @a[team=rattata] jump_boost infinite 1 true

#psyduck
execute if entity @a[team=psyduck] run attribute @p generic.max_health base set 22
effect give @a[team=psyduck] water_breathing infinite 1 true


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