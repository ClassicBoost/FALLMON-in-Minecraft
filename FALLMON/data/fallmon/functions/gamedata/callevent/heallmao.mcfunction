execute if score survivalMode stuffIguess matches 0 run effect give @a[scores={radiation=..49,inspace=0}] regeneration 2 1 true
execute if score survivalMode stuffIguess matches 1 run effect give @a[scores={radiation=..599,inspace=0}] regeneration 2 1 true
execute if score fallmonian stuffIguess matches 1 run effect give @a regeneration 2 1 true
# delaying health regen to 600 instead of 50 in survival mode to not make this early UHC.
effect give @a[gamemode=!creative,gamemode=!spectator,scores={radiation=1000..,survivalMode=0}] poison 2 0 true
effect give @a[gamemode=!creative,gamemode=!spectator,scores={radiation=1000..,survivalMode=1}] wither 2 0 true
kill @a[gamemode=!creative,gamemode=!spectator,scores={radiation=1000..,fallmonian=1}]
# fuck your life
effect give @a[gamemode=!creative,gamemode=!spectator,scores={radiation=1000..}] blindness 2 0 true
scoreboard players set heal stuffIguess 200
# realized that you can't set this to 0
effect give @a[scores={inspace=1}] poison 2 0 true
title @a[scores={inspace=1}] actionbar "You are too high up, oxygen is low"

# effect give @a[nbt={Dimension:"minecraft:the_end"}] poison 4 0 true