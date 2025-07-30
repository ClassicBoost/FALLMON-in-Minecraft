scoreboard players set radiationHeal updates 200

execute if entity @a[nbt={Dimension:"minecraft:overworld"},scores={radiation=1..}] run scoreboard players remove @a radiation 1
execute if entity @a[nbt={Dimension:"minecraft:overworld"},scores={tempRad=1..}] run scoreboard players remove @a tempRad 1
execute if score survivalistMode updates matches 1 run scoreboard players set radiationHeal updates 500