# UNUSED(?), WE ARE USING TEAM UPDATE INSTEAD

# Replace default with species name. Or team name in this case.
team join tepig @p

# data
# default stats
attribute @p generic.movement_speed base set 0.13
attribute @p generic.armor base set 0
attribute @p generic.max_health base set 28
attribute @p generic.attack_damage base set 6
attribute @p generic.attack_knockback base set 0

effect give @p fire_resistance infinite 1 true
effect clear @p jump_boost
effect clear @p water_breathing
effect clear @p haste

# at the end put the species name
title @p actionbar {"text": "You are playing as Tepig", "color": "#47FF47"}

# complete
effect give @p regeneration 2 255 true
# change these to what is updated stats, as for "You have chosen " put the species name there.
tellraw @p {"text": "You have chosen Tepig", "color" : "#47FF47", "bold": true}
tellraw @p {"text": "Speed: x1.3", "color" : "#47FF47"}
tellraw @p {"text": "Natural Armor: None", "color" : "#47FF47"}
tellraw @p {"text": "HP: 28", "color" : "#47FF47"}
tellraw @p {"text": "DMG: x3", "color" : "#47FF47"}
tellraw @p {"text": "Knockback: None", "color" : "#47FF47"}
playsound block.note_block.pling master @a ~ ~ ~ 1000 0