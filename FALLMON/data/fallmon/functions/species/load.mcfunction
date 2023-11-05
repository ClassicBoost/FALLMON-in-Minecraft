team join default @s
attribute @p generic.movement_speed base set 0.1
attribute @p generic.armor base set 0
attribute @p generic.max_health base set 20
attribute @p generic.attack_damage base set 2
attribute @p generic.attack_knockback base set 0
effect clear @p fire_resistance
effect clear @p jump_boost
effect clear @p water_breathing
effect clear @p haste

tellraw @a {"text": "Reloading Species, this may take a while...", "color" : "#47FF47"}
team add default ""
team join default @a
playsound block.note_block.pling master @a ~ ~ ~ 1000 1

function fallmon:species/reload

# done
playsound block.note_block.pling master @a ~ ~ ~ 1000 2
tellraw @a {"text": "Finished", "color" : "#47FF47"}