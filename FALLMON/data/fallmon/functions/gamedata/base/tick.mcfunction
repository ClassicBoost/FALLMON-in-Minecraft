# effect give @a saturation infinite 0 true
xp set @a 0 levels
xp set @a 0 points

scoreboard players remove heal stuffIguess 1
scoreboard players remove waterRad stuffIguess 1
scoreboard players remove radiationTimer stuffIguess 1
scoreboard players remove midDelay stuffIguess 1
scoreboard players remove betaDelay stuffIguess 1
scoreboard players add endTemp stuffIguess 1

execute if score endTemp stuffIguess matches 9.. run scoreboard players set endTemp stuffIguess 0
execute if score isolationMode stuffIguess matches 1.. run scoreboard players remove ambienceTimer stuffIguess 1

execute if score heal stuffIguess matches ..0 run function fallmon:gamedata/callevent/heallmao
execute if score waterRad stuffIguess matches ..0 run function fallmon:gamedata/callevent/shortdelay
execute if score radiationTimer stuffIguess matches ..0 run function fallmon:gamedata/callevent/radiationreduce
execute if score ambienceTimer stuffIguess matches ..0 run function fallmon:gamedata/callevent/ambiencetimer
execute if score shortestDelay stuffIguess matches ..0 run function fallmon:gamedata/callevent/veryshortfuckingdelay

execute if score survivalMode stuffIguess matches 1.. if score isolationMode stuffIguess matches 2.. run scoreboard players set fallmonian stuffIguess 1
execute if score survivalMode stuffIguess matches ..0 if score isolationMode stuffIguess matches ..1 run scoreboard players set fallmonian stuffIguess 0

execute if score waterRad stuffIguess matches 5 run playsound fallmon.neardeath block @a[gamemode=!creative,gamemode=!spectator,scores={health=..4}] ~ ~ ~ 100000000000000000000000000000 0
execute if score midDelay stuffIguess matches 5 run playsound fallmon.neardeath block @a[gamemode=!creative,gamemode=!spectator,scores={health=5..7}] ~ ~ ~ 100000000000000000000000000000 0
execute if score midDelay stuffIguess matches ..0 run scoreboard players set midDelay stuffIguess 40

scoreboard players remove @a[nbt={Dimension:"minecraft:the_end"}] oxygenAlt 1
execute if score @r[nbt={Dimension:"minecraft:overworld"}] oxygenAlt matches ..20 run scoreboard players add @a[nbt={Dimension:"minecraft:overworld"}] oxygenAlt 1
execute if score @r[nbt={Dimension:"minecraft:the_end"}] oxygenAlt matches ..-20 run scoreboard players set @a[nbt={Dimension:"minecraft:the_end"}] oxygenAlt 20
execute unless entity @a[nbt={Inventory:[{Slot:103b,id:"minecraft:diamond_helmet"}]}] run damage @r[nbt={Dimension:"minecraft:the_end"},scores={oxygenAlt=..-19,health=2..}] 1 out_of_world
playsound entity.player.breath player @a[scores={oxygenAlt=..-19}] ~ ~ ~ 1 0.7 1
execute unless entity @a[nbt={Inventory:[{Slot:103b,id:"minecraft:diamond_helmet"}]}] run effect give @a[nbt={Dimension:"minecraft:the_end"},scores={oxygenAlt=..-19,health=2..}] blindness 1 0 true
# effect give @a[nbt={Dimension:"minecraft:the_end",Inventory:[{Slot:103b,id:"minecraft:diamond_helmet"}]}] regeneration 2 0 true

title @a[scores={health=..0}] actionbar {"text": "OH MY GOD YOU SUCK! AUTO-UNINSTALLING!", "bold": true}
execute if score fallmonian stuffIguess matches 1.. run gamemode spectator @a[scores={health=..0}]

scoreboard players set @a[y=128 , dy=20] inspace 1
scoreboard players set @a[y=-64 , dy=191] inspace 0
scoreboard players set @a[y=235 , dy=20] inspace 1
scoreboard players set @a[y=256 , dy=100] inspace 2

effect give @a[scores={health=..7}] slowness 1 0 true
effect give @a[scores={health=..5}] slowness 1 1 true
effect give @a[scores={health=..5}] weakness 1 1 true
effect give @a[scores={health=..3}] slowness 1 2 true
effect give @a[scores={health=..3}] weakness 1 2 true
effect give @a[scores={health=..3}] mining_fatigue 1 1 true

scoreboard players add timeSinceWorld stuffIguess 1
execute if score timeSinceWorld stuffIguess matches ..10 run scoreboard players set survivalMode stuffIguess 0
execute if score timeSinceWorld stuffIguess matches ..10 run scoreboard players set isolationMode stuffIguess 0

execute if score betaDelay stuffIguess matches ..0 run tellraw @a {"text": "Version: Beta 1.2", "color" : "#47FF47", "italic": true}
execute if score betaDelay stuffIguess matches ..0 run scoreboard players set betaDelay stuffIguess 30000

function fallmon:gamedata/hurt

scoreboard players remove shortestDelay stuffIguess 1

function fallmon:gamedata/radiation
function fallmon:species/tick

# damage @r[nbt={Dimension:"minecraft:the_nether"}] 99 bad_respawn_point
# damage @r[nbt={Dimension:"minecraft:the_end"}] 99 bad_respawn_point

attribute @r generic.attack_speed base set 99

execute if score fallmonian stuffIguess matches 1.. run gamerule doMobLoot false
execute if score fallmonian stuffIguess matches ..0 run gamerule doMobLoot true

# IGNORE THIS WARNING!!!!!
execute if score fallmonian stuffIguess matches 1.. run gamerule pvp false

damage @r[scores={oxygen=..-19,health=2..}] 1 out_of_world
effect give @a[scores={oxygen=..0,health=..1}] blindness 2 0 true
playsound fallmon.breathe player @a[scores={oxygen=1..10}] ~ ~ ~ 1 1 1

playsound entity.villager.death master @a[nbt={SelectedItem:{id:"minecraft:milk_bucket"}}] ~ ~ ~ 1 1 1
tellraw @a[nbt={SelectedItem:{id:"minecraft:milk_bucket"}}] "NUH UH, NO MILK FOR YOU!!!!!!"
give @a[nbt={SelectedItem:{id:"minecraft:milk_bucket"}}] bucket
clear @a[nbt={SelectedItem:{id:"minecraft:milk_bucket"}}] milk_bucket

execute store result storage minecraft:fuckass coord.y int 1 run data get entity @s Pos[1]

effect give @a[nbt={Dimension:"minecraft:the_end"}] slow_falling 1 0 true
effect give @a[nbt={Dimension:"minecraft:the_end"}] jump_boost 1 2 true

playsound minecraft:fallmon.radaway neutral @a[nbt={SelectedItem:{id:"minecraft:diamond_hoe"}},scores={radiation=1..}] ~ ~ ~ 100000000000 1 1
execute if score survivalMode stuffIguess matches ..0 run title @a[nbt={SelectedItem:{id:"minecraft:diamond_hoe"}},scores={radiation=1..}] actionbar {"text": "Your radiation is reduced by 25", "color": "#47FF47"}
execute if score survivalMode stuffIguess matches ..0 run scoreboard players remove @a[nbt={SelectedItem:{id:"minecraft:diamond_hoe"}}] radiation 25
execute if score survivalMode stuffIguess matches 1.. run title @a[nbt={SelectedItem:{id:"minecraft:diamond_hoe"}},scores={radiation=1..}] actionbar {"text": "Your radiation is reduced by 50", "color": "#47FF47"}
execute if score survivalMode stuffIguess matches 1.. run scoreboard players remove @a[nbt={SelectedItem:{id:"minecraft:diamond_hoe"}}] radiation 50
damage @r[nbt={SelectedItem:{id:"minecraft:diamond_hoe"}},scores={health=5..,radiation=1..}] 4 out_of_world
effect give @a[nbt={SelectedItem:{id:"minecraft:diamond_hoe"}},scores={radiation=1..}] weakness 10 0 true
clear @a[nbt={SelectedItem:{id:"minecraft:diamond_hoe"}}] diamond_hoe 1

damage @r[scores={sprint=1..,health=2..},nbt={Dimension:"minecraft:the_nether"}] 1 out_of_world
scoreboard players set @a[scores={sprint=1..}] sprint 0

kill @e[type=bat]

# survival mode
execute if score survivalMode stuffIguess matches 0 run enchant @a unbreaking 3
execute if score survivalMode stuffIguess matches 1 run clear @a shield
execute if score survivalMode stuffIguess matches 1 run clear @a totem_of_undying
clear @a netherite_block
clear @a netherite_ingot
clear @a netherite_scrap
# but diamonds are op
execute if score survivalMode stuffIguess matches 1 run kill @e[type=villager]

# isolation mode
execute if score isolationMode stuffIguess matches 1.. run kill @e[type=villager]
execute if score isolationMode stuffIguess matches 1.. run tp @e[type=zombie] 0 500 0
execute if score isolationMode stuffIguess matches 1.. run tp @e[type=husk] 0 500 0
execute if score isolationMode stuffIguess matches 1.. run tp @e[type=skeleton] 0 500 0
execute if score isolationMode stuffIguess matches 1.. run tp @e[type=stray] 0 500 0
execute if score isolationMode stuffIguess matches 1.. run tp @e[type=pillager] 0 500 0
execute if score isolationMode stuffIguess matches 1.. run tp @e[type=vindicator] 0 500 0
execute if score isolationMode stuffIguess matches 1.. run tp @e[type=witch] 0 500 0
execute if score isolationMode stuffIguess matches 1.. run tp @e[type=evoker] 0 500 0
# isolation mode (true)
# a fucking mess but minecraft lacks a group type for all mobs
execute if score isolationMode stuffIguess matches 2 run tp @e[type=!player,type=!item_frame,type=!arrow,type=!armor_stand,type=!area_effect_cloud,type=!egg,type=!item,type=!item_display,type=!tnt,type=!tnt_minecart,type=!ender_pearl,type=!glow_item_frame,type=!experience_bottle,type=!eye_of_ender,type=!snowball,type=!minecart,type=!chest_minecart,type=!boat,type=!chest_boat,type=!fireball,type=!falling_block,type=!painting] 0 500 0