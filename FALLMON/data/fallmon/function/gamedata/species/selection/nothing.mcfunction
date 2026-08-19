# UNUSED(?), WE ARE USING TEAM UPDATE INSTEAD

# Replace default with species name. Or team name in this case.
team join nothing @p

# data
# default stats
attribute @p minecraft:movement_speed base set 0.1
attribute @p minecraft:armor base set 0
attribute @p minecraft:max_health base set 20
attribute @p minecraft:attack_damage base set 1
attribute @p minecraft:attack_knockback base set 0

effect clear @p fire_resistance
effect clear @p jump_boost
effect clear @p water_breathing
effect clear @p haste

# complete
effect give @p regeneration 2 255 true
# change these to what is updated stats, as for "You have chosen " put the species name there.
tellraw @p {"text": "You have chosen Nothing", "color" : "#47FF47", "bold": true}
playsound choose.eevee master @a ~ ~ ~ 1000 1