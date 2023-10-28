execute if score fallmonian stuffIguess matches ..0 run playsound fallmon.rad neutral @a[nbt={Dimension:"minecraft:the_nether"}] ~ ~ ~ 1 1 1
execute if score fallmonian stuffIguess matches 1.. run playsound fallmon.radbad neutral @a[nbt={Dimension:"minecraft:the_nether"}] ~ ~ ~ 1 1 1
execute if score fallmonian stuffIguess matches 1.. run execute as @a at @s if block ~ ~ ~ water run playsound fallmon.radbad neutral @s ~ ~ ~ 1 1 1
execute if score fallmonian stuffIguess matches ..0 run playsound fallmon.rad neutral @a[nbt={Dimension:"minecraft:the_nether"}] ~ ~ ~ 1 1 1

scoreboard players set shortestDelay stuffIguess 3