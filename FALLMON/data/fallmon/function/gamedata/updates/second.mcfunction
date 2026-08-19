scoreboard players set second updates 20

execute at @e[type=zombie] as @a[distance=..2] run scoreboard players add @p radiation 7
execute at @e[type=zombie] as @a[distance=..2] run playsound fallmon.radbad neutral @s ~ ~ ~ 1 1 1
execute at @e[type=husk] as @a[distance=..2] run scoreboard players add @p radiation 14
execute at @e[type=husk] as @a[distance=..2] run playsound fallmon.radbad neutral @s ~ ~ ~ 1 1 1

execute as @a at @s if block ~ ~ ~ water if score survivalistMode updates matches 0 run scoreboard players add @s[scores={type=0..},gamemode=!creative,gamemode=!spectator] radiation 1
execute as @a at @s if block ~ ~ ~ water if score survivalistMode updates matches 0 run playsound fallmon.radbad neutral @s[scores={type=0..},gamemode=!creative,gamemode=!spectator] ~ ~ ~ 1 1 1
execute as @a at @s if block ~ ~ ~ water run effect give @s[scores={type=0}] dolphins_grace 2 0 true
#execute as @a at @s if block ~ ~ ~ water run title @s[scores={type=1..},gamemode=!creative,gamemode=!spectator] actionbar {"text": "+1 RAD", "color": "#FF443A"}

scoreboard players add @a[nbt={Dimension:"minecraft:the_nether"},scores={armorLevel=..17}] radiation 1
scoreboard players add @a[nbt={Dimension:"minecraft:the_nether"},scores={armorLevel=..17}] tempRad 1

execute as @a run attribute @s[nbt={Dimension:"minecraft:overworld"}] minecraft:gravity base set 0.06
execute as @a run attribute @s[nbt={Dimension:"minecraft:the_end"}] minecraft:gravity base set 0.01
execute as @a run attribute @s minecraft:safe_fall_distance base set 99