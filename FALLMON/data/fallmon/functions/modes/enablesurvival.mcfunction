scoreboard players set survivalMode stuffIguess 1
playsound entity.wither.spawn master @a ~ ~ ~ 10000000000 0
title @a title {"text": "Survival Mode Activated!", "color": "#FF2D2D"}
title @a subtitle {"text": "Radiation is permanent!", "color": "#FF2D2D", "bold": true}

gamerule doWeatherCycle false
weather thunder