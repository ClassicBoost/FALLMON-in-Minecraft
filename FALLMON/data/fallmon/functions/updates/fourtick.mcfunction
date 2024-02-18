scoreboard players set fourtick updates 4

playsound fallmon.rad neutral @a[nbt={Dimension:"minecraft:the_nether"}] ~ ~ ~ 1 1 1

scoreboard players remove @a[nbt={Dimension:"minecraft:overworld"},scores={tempRad=1..}] radiation 1
scoreboard players remove @a[nbt={Dimension:"minecraft:overworld"},scores={tempRad=1..}] tempRad 1

scoreboard players set @a[nbt={Dimension:"minecraft:overworld"},scores={tempRad=..-1}] radiation 0
scoreboard players set @a[nbt={Dimension:"minecraft:overworld"},scores={tempRad=..-1}] tempRad 0