# UNUSED(?), WE ARE USING TEAM UPDATE INSTEAD

team join machop @p

# data
attribute @p minecraft:movement_speed base set 0.1
attribute @p minecraft:armor base set 0
attribute @p minecraft:max_health base set 24
attribute @p minecraft:attack_damage base set 2
attribute @p minecraft:attack_knockback base set 0

effect clear @p fire_resistance
effect clear @p jump_boost
effect clear @p water_breathing
effect give @p haste 2 1 true

title @p actionbar {"text": "You are playing as Machop", "color": "#47FF47"}

# complete
effect give @p regeneration 2 255 true
tellraw @p {"text": "You have chosen Machop", "color" : "#47FF47", "bold": true}
tellraw @p {"text": "Speed: x1", "color" : "#47FF47"}
tellraw @p {"text": "Natural Armor: None", "color" : "#47FF47"}
tellraw @p {"text": "HP: 24", "color" : "#47FF47"}
tellraw @p {"text": "DMG: x1", "color" : "#47FF47"}
tellraw @p {"text": "Knockback: None", "color" : "#47FF47"}
playsound pokemon.machop master @a ~ ~ ~ 1000 1