# UNUSED(?), WE ARE USING TEAM UPDATE INSTEAD

team join squirtle @p

# data
attribute @p minecraft:movement_speed base set 0.1
attribute @p minecraft:armor base set 6
attribute @p minecraft:max_health base set 20
attribute @p minecraft:attack_damage base set 2
attribute @p minecraft:attack_knockback base set 0.2

effect clear @p fire_resistance
effect clear @p jump_boost
effect give @p water_breathing 2 0 true
effect clear @p haste

title @p actionbar {"text": "You are playing as Squirtle", "color": "#47FF47"}

# complete
effect give @p regeneration 2 255 true
tellraw @p {"text": "You have chosen Bulbasaur", "color" : "#47FF47", "bold": true}
tellraw @p {"text": "Speed: x1", "color" : "#47FF47"}
tellraw @p {"text": "Natural Armor: 6", "color" : "#47FF47"}
tellraw @p {"text": "HP: 20", "color" : "#47FF47"}
tellraw @p {"text": "DMG: x1", "color" : "#47FF47"}
tellraw @p {"text": "Knockback: 0.2", "color" : "#47FF47"}
playsound minecraft:choose.squirtle master @a ~ ~ ~ 1000 1