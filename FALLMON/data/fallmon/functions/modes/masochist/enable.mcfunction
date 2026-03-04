scoreboard players set survivalMode stuffIguess 1
playsound entity.wither.spawn master @a ~ ~ ~ 10000000000 0
title @a title {"text": "Masochist Mode On!", "color": "#FF2D2D"}
title @a subtitle {"text": "Hell Unleashed", "color": "#FF2D2D", "bold": true}
execute if score isolationMode stuffIguess matches 2.. run title @a title {"text": "FALLMONIAN On", "color": "#FF2D2D"}
execute if score isolationMode stuffIguess matches 2.. run title @a subtitle {"text": "Good Luck!", "bold": true, "color": "#FF2D2D"}
execute if score isolationMode stuffIguess matches 2.. run playsound entity.ghast.scream master @a ~ ~ ~ 10000000000 0

gamerule doWeatherCycle false
weather thunder