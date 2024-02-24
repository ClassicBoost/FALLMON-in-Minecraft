function fallmon:gamedata/speciestick
function fallmon:gamedata/radiation/radiation
function fallmon:gamedata/general
function fallmon:gamedata/damage

scoreboard players remove hpHeal updates 1
scoreboard players remove survivalTime updates 1
scoreboard players remove second updates 1
scoreboard players remove fourtick updates 1
scoreboard players add timeInWorld updates 1

execute if score timeInWorld updates matches ..3 run scoreboard players set survivalistMode updates 0

execute if score hpHeal updates matches ..0 run function fallmon:updates/heal
execute if score second updates matches ..0 run function fallmon:updates/second
execute if score fourtick updates matches ..0 run function fallmon:updates/fourtick
execute if score survivalTime updates matches ..0 run function fallmon:updates/survival

function fallmon:updates/consistent