execute if entity @a[gamemode=!creative,gamemode=!spectator,scores={radiation=..49}] run effect give @a[gamemode=!creative,gamemode=!spectator,scores={radiation=..49}] regeneration 2 1 true
execute if entity @a[gamemode=!creative,gamemode=!spectator,scores={radiation=1000..}] run effect give @a[gamemode=!creative,gamemode=!spectator,scores={radiation=1000..}] wither 2 0 true
execute if entity @a[gamemode=!creative,gamemode=!spectator,scores={radiation=1000..}] run effect give @a[gamemode=!creative,gamemode=!spectator,scores={radiation=1000..}] blindness 2 0 true
scoreboard players set heal stuffIguess 200
# realized that you can't set this to 0