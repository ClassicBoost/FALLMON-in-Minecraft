kill @e[type=experience_orb]
kill @e[type=bat]

damage @r[scores={hp=2..,oxygen=..-19}] 1 generic
effect give @a[scores={hp=..1,oxygen=..0}] blindness 2 0 true

xp set @a[scores={hp=..0}] 0 points
xp set @a[scores={hp=..0}] 0 levels

execute if score survivalistMode updates matches 0 run enchant @a unbreaking 1
execute if score survivalistMode updates matches 0 run enchant @a mending 1
execute if score survivalistMode updates matches 0 run enchant @a piercing 4

xp set @a 1 levels

# but diamonds are op
clear @a netherite_ingot
clear @a netherite_scrap
clear @a netherite_block

effect give @a[scores={hp=..7}] slowness 1 0 true
effect give @a[scores={hp=..5}] slowness 1 1 true
effect give @a[scores={hp=..5}] weakness 1 1 true
effect give @a[scores={hp=..3}] slowness 1 2 true
effect give @a[scores={hp=..3}] weakness 1 2 true
effect give @a[scores={hp=..3}] mining_fatigue 1 1 true

execute as @a at @s if block ~ ~ ~ water run effect give @s[scores={type=1,hp=5..}] wither 2 0 true

execute as @a at @s run title @s[scores={unchippedMode=0}] actionbar ["",{"text":"THIRST - ","color":"blue"},{"color":"white","score":{"name":"@s","objective":"thirst"}},{"text":"% // ","color":"white"},{"text":"RAD - ","color":"red"},{"color":"white","score":{"name":"@s","objective":"radiation"}},{"text":"/1000","color":"white"}]
effect give @a[scores={thirst=..15}] slowness 1 0 true
effect give @a[scores={thirst=..0}] slowness 1 1 true

# because I really think it's funny that you move slower when walking.
execute if score survivalistMode updates matches 1 as @a[scores={run=0}] run attribute @s minecraft:movement_speed modifier add 69 -0.02 add_value
execute as @a[scores={run=1..}] run attribute @s minecraft:movement_speed modifier remove 69
scoreboard players set @a run 0

#execute as @a[scores={slept=1..}] run scoreboard players remove @s radiation 75
scoreboard players set @a slept 0