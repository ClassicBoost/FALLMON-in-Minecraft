kill @e[type=experience_orb]
kill @e[type=bat]

damage @r[scores={hp=2..,oxygen=..-19}] 1 generic
effect give @a[scores={hp=..1,oxygen=..0}] blindness 2 0 true

xp set @a[scores={hp=..0}] 0 points
xp set @a[scores={hp=..0}] 0 levels

time add 1

execute if score survivalistMode updates matches 0 run enchant @a unbreaking 1
execute if score survivalistMode updates matches 0 run enchant @a piercing 4

# but diamonds are op
clear @a netherite_ingot
clear @a netherite_scrap
clear @a netherite_block

execute if score survivalistMode updates matches 0 as @a at @s run title @s[scores={radiation=1..}] actionbar ["",{"text":"RAD: ","color":"red"},{"color":"white","score":{"name":"@s","objective":"radiation"}},{"text":"/1000","color":"white"}]