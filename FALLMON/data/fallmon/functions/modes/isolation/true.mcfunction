scoreboard players set isolationMode stuffIguess 2
playsound entity.villager.no master @a ~ ~ ~ 10000000000 0
title @a title {"text": "Isolation Mode On"}
title @a subtitle {"text": "Where is everyone?", "bold": true}
execute if score survivalMode stuffIguess matches 1.. run title @a title {"text": "FALLMONIAN On", "color": "#FF2D2D"}
execute if score survivalMode stuffIguess matches 1.. run title @a subtitle {"text": "Good Luck!", "bold": true, "color": "#FF2D2D"}
execute if score survivalMode stuffIguess matches 1.. run playsound entity.ghast.scream master @a ~ ~ ~ 10000000000 0