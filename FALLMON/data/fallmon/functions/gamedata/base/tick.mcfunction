# effect give @a saturation infinite 0 true
xp set @a 0 levels
xp set @a 0 points

scoreboard players remove heal stuffIguess 1
scoreboard players remove waterRad stuffIguess 1
scoreboard players remove radiationTimer stuffIguess 1
execute if score isolationMode stuffIguess matches 1.. run scoreboard players remove ambienceTimer stuffIguess 1

execute if score heal stuffIguess matches ..0 run function fallmon:gamedata/callevent/heallmao
execute if score waterRad stuffIguess matches ..0 run function fallmon:gamedata/callevent/shortdelay
execute if score radiationTimer stuffIguess matches ..0 run function fallmon:gamedata/callevent/radiationreduce
execute if score ambienceTimer stuffIguess matches ..0 run function fallmon:gamedata/callevent/ambiencetimer
execute if score shortestDelay stuffIguess matches ..0 run function fallmon:gamedata/callevent/veryshortfuckingdelay

execute if score waterRad stuffIguess matches 5 run playsound block.note_block.bit block @a[gamemode=!creative,gamemode=!spectator,scores={health=..4}] ~ ~ ~ 100000000000000000000000000000 1

title @a[scores={health=..0}] actionbar {"text": "YOU FUCKING SUCK!!! AUTO UNINSTALLING!", "bold": true}

effect give @a[scores={health=..7}] slowness 1 0 true
effect give @a[scores={health=..5}] slowness 1 1 true
effect give @a[scores={health=..3}] slowness 1 2 true

scoreboard players add timeSinceWorld stuffIguess 1
execute if score timeSinceWorld stuffIguess matches ..10 run scoreboard players set survivalMode stuffIguess 0
execute if score timeSinceWorld stuffIguess matches ..10 run scoreboard players set isolationMode stuffIguess 0

scoreboard players remove shortestDelay stuffIguess 1

function fallmon:gamedata/radiation
function fallmon:species/updatespecies

# damage @r[nbt={Dimension:"minecraft:the_nether"}] 99 bad_respawn_point
damage @r[nbt={Dimension:"minecraft:the_end"}] 99 bad_respawn_point

attribute @r generic.attack_speed base set 99

damage @r[scores={oxygen=..-19,health=2..}] 1 generic

kill @e[type=bat]

# survival mode
execute if score survivalMode stuffIguess matches 0 run enchant @a unbreaking 3
execute if score survivalMode stuffIguess matches 1 run clear @a shield
execute if score survivalMode stuffIguess matches 1 run clear @a totem_of_undying
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