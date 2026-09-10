damage @r[scores={hp=2..,oxygen=..-19}] 1 generic
effect give @a[scores={hp=..1,oxygen=..0}] blindness 2 0 true

execute if score survivalistMode updates matches 0 run enchant @a unbreaking 1
execute if score survivalistMode updates matches 0 run enchant @a mending 1
execute if score survivalistMode updates matches 0 run enchant @a piercing 4

bossbar set minecraft:1 players @a
bossbar set minecraft:2 players @a[scores={stamina=..990}]

effect give @a[scores={hp=..7}] slowness 1 0 true
effect give @a[scores={hp=..5}] slowness 1 1 true
effect give @a[scores={hp=..5}] weakness 1 1 true
effect give @a[scores={hp=..3}] slowness 1 2 true
effect give @a[scores={hp=..3}] weakness 1 2 true
effect give @a[scores={hp=..3}] mining_fatigue 1 1 true

execute store result score curDay updates run time query minecraft:day

execute store result score $curDay updates run time query time
scoreboard players operation $curDay updates /= #dayLength updates

execute as @a[scores={stamina=..999}] run scoreboard players add @a stamina 1

#execute as @a at @s run scoreboard players operation @s daysSurvived /= @s timeLastDeath

execute as @a at @s if block ~ ~ ~ water run effect give @s[scores={type=2,hp=5..}] wither 2 0 true

#execute if score allowThirst updates matches 1.. as @a at @s run title @s[scores={unchippedMode=0}] actionbar ["",{"text":"THIRST - ","color":"blue"},{"color":"white","score":{"name":"@s","objective":"thirst"}},{"text":"% // ","color":"white"},{"text":"RAD - ","color":"red"},{"color":"white","score":{"name":"@s","objective":"radiation"}},{"text":"/1000","color":"white"},{"text":" // DAY - ","color":"white"},{"color":"white","score":{"name":"$curDay","objective":"updates"}}]
#execute if score allowThirst updates matches 0 as @a at @s run title @s[scores={unchippedMode=0}] actionbar ["",{"text":"RAD - ","color":"red"},{"color":"white","score":{"name":"@s","objective":"radiation"}},{"text":"/1000","color":"white"}]
execute if score allowThirst updates matches 1.. run effect give @a[scores={thirst=..15}] slowness 1 0 true
execute if score allowThirst updates matches 1.. run effect give @a[scores={thirst=..0}] slowness 1 1 true

execute if score allowThirst updates matches 1.. as @a at @s run bossbar set minecraft:1 name ["",{"text":"THIRST - ","color":"blue"},{"color":"white","score":{"name":"@s","objective":"thirst"}},{"text":"% // ","color":"white"},{"text":"RAD - ","color":"red"},{"color":"white","score":{"name":"@s","objective":"radiation"}},{"text":"/1000","color":"white"},{"text":" // DAY - ","color":"white"},{"color":"white","score":{"name":"$curDay","objective":"updates"}}]
execute if score allowThirst updates matches 0 as @a at @s run bossbar set minecraft:1 name ["",{"text":"RAD - ","color":"red"},{"color":"white","score":{"name":"@s","objective":"radiation"}},{"text":"/1000","color":"white"},{"text":" // DAY - ","color":"white"},{"color":"white","score":{"name":"$curDay","objective":"updates"}}]
execute as @a at @s[scores={unchippedMode=1}] run bossbar set minecraft:1 name ["",{"text":"DAY - ","color":"white"},{"color":"white","score":{"name":"$curDay","objective":"updates"}}]

#execute as @a[nbt={SelectedItem:{id:"minecraft:recovery_compass"}}] if score allowThirst updates matches 1.. run title @s actionbar ["",{"text":"THIRST - ","color":"blue"},{"color":"white","score":{"name":"@s","objective":"thirst"}},{"text":"% // ","color":"white"},{"text":"RAD - ","color":"red"},{"color":"white","score":{"name":"@s","objective":"radiation"}},{"text":"/1000","color":"white"}]
#execute as @a[nbt={SelectedItem:{id:"minecraft:recovery_compass"}}] if score allowThirst updates matches 0 run title @s actionbar ["",{"text":"RAD - ","color":"red"},{"color":"white","score":{"name":"@s","objective":"radiation"}},{"text":"/1000","color":"white"}]

execute as @a[nbt={SelectedItem:{id:"minecraft:recovery_compass"}}] if score allowThirst updates matches 1.. at @s run bossbar set minecraft:1 name ["",{"text":"THIRST - ","color":"blue"},{"color":"white","score":{"name":"@s","objective":"thirst"}},{"text":"% // ","color":"white"},{"text":"RAD - ","color":"red"},{"color":"white","score":{"name":"@s","objective":"radiation"}},{"text":"/1000","color":"white"},{"text":" // DAY - ","color":"white"},{"color":"white","score":{"name":"$curDay","objective":"updates"}}]
execute as @a[nbt={SelectedItem:{id:"minecraft:recovery_compass"}}] if score allowThirst updates matches 0 at @s run bossbar set minecraft:1 name ["",{"text":"RAD - ","color":"red"},{"color":"white","score":{"name":"@s","objective":"radiation"}},{"text":"/1000","color":"white"},{"text":" // DAY - ","color":"white"},{"color":"white","score":{"name":"$curDay","objective":"updates"}}]

# because I really think it's funny that you move slower when walking.
execute if score survivalistMode updates matches 1 as @a[scores={run=0}] run attribute @s minecraft:movement_speed modifier add 69 -0.02 add_value
execute as @a[scores={run=1..}] run attribute @s minecraft:movement_speed modifier remove 69
execute as @a[scores={run=1..,stamina=1..},gamemode=!creative,gamemode=!spectator] run scoreboard players remove @a stamina 3
scoreboard players set @a run 0

execute as @a[scores={stamina=..5}] run effect give @s minecraft:slowness 5 2 true

execute as @a[scores={jump=1..,stamina=1..},gamemode=!creative,gamemode=!spectator] run scoreboard players remove @s stamina 30
scoreboard players set @a jump 0

#execute as @a[scores={slept=1..}] run scoreboard players remove @s radiation 75
scoreboard players set @a slept 0

bossbar set 1 players @a