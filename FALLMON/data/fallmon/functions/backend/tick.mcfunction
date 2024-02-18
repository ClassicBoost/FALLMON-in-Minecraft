function fallmon:gamedata/speciestick
function fallmon:gamedata/radiation
function fallmon:gamedata/general

title @a[gamemode=creative] actionbar {"text": "- In Creative Mode, Some functions are disabled -"}

# but diamonds are op
clear @a netherite_ingot
clear @a netherite_scrap
clear @a netherite_block

scoreboard players remove hpHeal updates 1
scoreboard players remove survivalTime updates 1
scoreboard players remove second updates 1

execute if score hpHeal updates matches ..0 run function fallmon:updates/heal
execute if score second updates matches ..0 run function fallmon:updates/second
execute if score survivalTime updates matches ..0 run function fallmon:updates/survival

kill @e[type=experience_orb]
kill @e[type=bat]

damage @r[scores={hp=2..,oxygen=..-19}] 1 generic
effect give @a[scores={hp=..1,oxygen=..0}] blindness 2 0 true

xp set @a[scores={hp=..0}] 0

time add 1