effect give @a[gamemode=!creative,gamemode=!spectator,scores={radiation=..49,survivalMode=0}] regeneration 2 1 true
effect give @a[gamemode=!creative,gamemode=!spectator,scores={radiation=..599,survivalMode=1}] regeneration 2 1 true
# delaying health regen to 600 instead of 50 in survival mode to not make this early UHC.
effect give @a[gamemode=!creative,gamemode=!spectator,scores={radiation=1000..,survivalMode=0}] poison 2 0 true
effect give @a[gamemode=!creative,gamemode=!spectator,scores={radiation=1000..,survivalMode=1}] wither 2 0 true
# fuck your life
effect give @a[gamemode=!creative,gamemode=!spectator,scores={radiation=1000..}] blindness 2 0 true
scoreboard players set heal stuffIguess 200
# realized that you can't set this to 0