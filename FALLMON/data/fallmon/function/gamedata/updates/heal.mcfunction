scoreboard players set hpHeal updates 200
effect give @a[scores={radiation=..49,thirst=1..}] regeneration 2 1 true
effect give @a[gamemode=!creative,gamemode=!spectator,scores={radiation=1..}] blindness 1 0 true

scoreboard players remove @a[nbt={Dimension:"minecraft:overworld"},scores={tempRad=1..}] radiation 1
scoreboard players remove @a[nbt={Dimension:"minecraft:overworld"},scores={tempRad=1..}] tempRad 1

execute if score allowThirst updates matches 1.. if entity @a[scores={thirst=1..},gamemode=!creative,gamemode=!spectator] run scoreboard players remove @a[scores={thirst=1..}] thirst 1

execute if score allowThirst updates matches 1.. run effect give @a[scores={thirst=..0,hp=3..}] wither 2 0 true
execute if score allowThirst updates matches 1.. run effect give @a[scores={thirst=..0}] nausea 10 0 true