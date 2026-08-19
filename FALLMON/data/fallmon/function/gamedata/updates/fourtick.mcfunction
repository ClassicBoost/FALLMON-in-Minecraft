playsound fallmon.rad neutral @a[nbt={Dimension:"minecraft:the_nether"}] ~ ~ ~ 1 1 1

scoreboard players remove @a[nbt={Dimension:"minecraft:overworld"},scores={tempRad=1..}] radiation 1
scoreboard players remove @a[nbt={Dimension:"minecraft:overworld"},scores={tempRad=1..}] tempRad 1

scoreboard players set @a[nbt={Dimension:"minecraft:overworld"},scores={tempRad=..-1}] radiation 0
scoreboard players set @a[nbt={Dimension:"minecraft:overworld"},scores={tempRad=..-1}] tempRad 0

execute as @a[scores={type=1..,thirst=101..}] run scoreboard players set @s[scores={type=1..,thirst=101..}] thirst 100
execute as @a at @s if block ~ ~ ~ water run scoreboard players add @s[scores={type=1..,thirst=..99}] thirst 1
execute as @a at @s if block ~ ~ ~ water run scoreboard players add @s[scores={type=0,thirst=..149}] thirst 1
execute if score allowThirst updates matches 1.. as @a at @s if block ~ ~ ~ lava run scoreboard players remove @s[scores={type=0..,thirst=21..}] thirst 1

execute as @a run attribute @s[scores={radiation=600..}] minecraft:max_health modifier add 600 -4 add_value
execute as @a run attribute @s[scores={radiation=..599}] minecraft:max_health modifier remove 600

execute as @a run attribute @s minecraft:block_interaction_range base set 5
# Survivalist mode reduces block interaction range to 2, because well, you wouldn't really be able to reach very far normally.
# Entity range is left unchanged just so the player does not need to get hit to attack.
execute if score survivalistMode updates matches 1 as @a[gamemode=survival] run attribute @s minecraft:block_interaction_range base set 2

scoreboard players set fourtick updates 4