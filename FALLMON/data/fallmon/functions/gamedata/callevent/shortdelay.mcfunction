scoreboard players set waterRad stuffIguess 20
execute as @a at @s if block ~ ~ ~ water run scoreboard players add @s radiation 1
execute if score fallmonian stuffIguess matches 1.. as @a at @s if block ~ ~ ~ water run scoreboard players add @s radiation 4
execute if score fallmonian stuffIguess matches 1.. as @a at @s if block ~ ~ ~ water run scoreboard players add @s tempRadiation 4

execute at @e[type=zombie] as @a[distance=..2] run scoreboard players add @p radiation 5
execute at @e[type=zombie] as @a[distance=..2] run playsound fallmon.radbad neutral @s ~ ~ ~ 1 1 1
execute at @e[type=husk] as @a[distance=..2] run scoreboard players add @p radiation 10
execute at @e[type=husk] as @a[distance=..2] run playsound fallmon.radbad neutral @s ~ ~ ~ 1 1 1

scoreboard players add @a[nbt={Dimension:"minecraft:the_nether"}] radiation 1
scoreboard players add @a[nbt={Dimension:"minecraft:the_nether"}] tempRadiation 1

execute if score fallmonian stuffIguess matches 1.. run scoreboard players add @a[nbt={Dimension:"minecraft:the_nether"}] radiation 1
execute if score fallmonian stuffIguess matches 1.. run scoreboard players add @a[nbt={Dimension:"minecraft:the_nether"}] tempRadiation 1

time add 5

# playsound block.note_block.bit block @a[gamemode=!creative,gamemode=!spectator,scores={health=..4}] ~ ~ ~ 100000000000000000000000000000 0.5

# playsound minecraft:ambient.crimson_forest.loop player @a ~ ~ ~ 10000000000000 0

# playsound ambient.crimson_forest.loop ambient @a[y=-64,dy=100] ~ ~ ~ 100000000000000000000000000000 1

function fallmon:species/updatespecies

scoreboard players remove @a[nbt={Dimension:"minecraft:overworld"},scores={tempRadiation=1}] radiation 1
scoreboard players remove @a[nbt={Dimension:"minecraft:overworld"},scores={tempRadiation=1}] tempRadiation 1

scoreboard players remove @a[nbt={Dimension:"minecraft:overworld"},scores={tempRadiation=2}] radiation 2
scoreboard players remove @a[nbt={Dimension:"minecraft:overworld"},scores={tempRadiation=2}] tempRadiation 2

scoreboard players remove @a[nbt={Dimension:"minecraft:overworld"},scores={tempRadiation=3}] radiation 3
scoreboard players remove @a[nbt={Dimension:"minecraft:overworld"},scores={tempRadiation=3}] tempRadiation 3

scoreboard players remove @a[nbt={Dimension:"minecraft:overworld"},scores={tempRadiation=4}] radiation 4
scoreboard players remove @a[nbt={Dimension:"minecraft:overworld"},scores={tempRadiation=4}] tempRadiation 4

scoreboard players remove @a[nbt={Dimension:"minecraft:overworld"},scores={tempRadiation=5..}] radiation 5
playsound entity.player.breath player @a[nbt={Dimension:"minecraft:overworld"},scores={tempRadiation=5..}] ~ ~ ~ 1000000000000000000000000000 1
scoreboard players remove @a[nbt={Dimension:"minecraft:overworld"},scores={tempRadiation=5..}] tempRadiation 5