execute if score fallmonian stuffIguess matches ..0 run playsound fallmon.rad neutral @a[scores={unchippedMode=0},nbt={Dimension:"minecraft:the_nether"}] ~ ~ ~ 1 1 1
execute if score fallmonian stuffIguess matches 1.. run playsound fallmon.radbad neutral @a[scores={unchippedMode=0},nbt={Dimension:"minecraft:the_nether"}] ~ ~ ~ 1 1 1
execute if score fallmonian stuffIguess matches 1.. run execute as @a at @s if block ~ ~ ~ water run playsound fallmon.radbad neutral @s[scores={unchippedMode=0}] ~ ~ ~ 1 1 1
execute if score fallmonian stuffIguess matches ..0 run execute as @a at @s if block ~ ~ ~ water run playsound fallmon.rad neutral @s[scores={unchippedMode=0}] ~ ~ ~ 1 1

execute as @a[scores={type=1..,thirst=101..}] run scoreboard players set @s[scores={type=1..,thirst=101..}] thirst 100
execute as @a at @s if block ~ ~ ~ water run scoreboard players add @s[scores={type=1..,thirst=..99}] thirst 1
execute as @a at @s if block ~ ~ ~ water run scoreboard players add @s[scores={type=0,thirst=..149}] thirst 1
execute as @a at @s if block ~ ~ ~ lava run scoreboard players remove @s[scores={type=0..,thirst=21..}] thirst 1

scoreboard players set shortestDelay stuffIguess 4