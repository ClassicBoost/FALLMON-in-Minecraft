bossbar set 1 players none
bossbar set 2 players none
bossbar set 3 players none
bossbar set 4 players none
bossbar set 5 players none
bossbar set 6 players none
bossbar set 7 players none

execute if entity @a[scores={radiation=..49}] run bossbar set 1 players @a[scores={radiation=..49}]

execute if entity @a[scores={radiation=50..149}] run bossbar set 2 players @a[scores={radiation=50..149}]

execute if entity @a[scores={radiation=150..299}] run bossbar set 3 players @a[scores={radiation=150..299}]
execute if entity @a[gamemode=!creative,gamemode=!spectator,scores={radiation=150..}] run effect give @a[gamemode=!creative,gamemode=!spectator,scores={radiation=150..}] weakness 1 0 true

execute if entity @a[scores={radiation=300..449}] run bossbar set 4 players @a[scores={radiation=300..449}]
execute if entity @a[gamemode=!creative,gamemode=!spectator,scores={radiation=300..}] run effect give @a[gamemode=!creative,gamemode=!spectator,scores={radiation=300..}] weakness 1 1 true

execute if entity @a[scores={radiation=450..599}] run bossbar set 5 players @a[scores={radiation=450..599}]
execute if entity @a[gamemode=!creative,gamemode=!spectator,scores={radiation=450..}] run effect give @a[gamemode=!creative,gamemode=!spectator,scores={radiation=450..}] weakness 1 2 true
execute if entity @a[gamemode=!creative,gamemode=!spectator,scores={radiation=450..}] run effect give @a[gamemode=!creative,gamemode=!spectator,scores={radiation=450..}] slowness 1 1 true
execute if entity @a[gamemode=!creative,gamemode=!spectator,scores={radiation=450..}] run effect give @a[gamemode=!creative,gamemode=!spectator,scores={radiation=450..}] hunger 1 0 true

execute if entity @a[scores={radiation=600..999}] run bossbar set 6 players @a[scores={radiation=600..999}]
execute if entity @a[gamemode=!creative,gamemode=!spectator,scores={radiation=600..}] run effect give @a[gamemode=!creative,gamemode=!spectator,scores={radiation=600..}] weakness 1 3 true
execute if entity @a[gamemode=!creative,gamemode=!spectator,scores={radiation=600..}] run effect give @a[gamemode=!creative,gamemode=!spectator,scores={radiation=600..}] slowness 1 2 true
execute if entity @a[gamemode=!creative,gamemode=!spectator,scores={radiation=600..}] run effect give @a[gamemode=!creative,gamemode=!spectator,scores={radiation=600..}] mining_fatigue 1 0 true
execute if entity @a[gamemode=!creative,gamemode=!spectator,scores={radiation=600..}] run effect give @a[gamemode=!creative,gamemode=!spectator,scores={radiation=600..}] hunger 1 1 true


execute if entity @a[scores={radiation=1000..}] run bossbar set 7 players @a[scores={radiation=1000..}]
execute if entity @a[gamemode=!creative,gamemode=!spectator,scores={radiation=1000..}] run effect give @a[gamemode=!creative,gamemode=!spectator,scores={radiation=1000..}] nausea 5 0 true
execute if entity @a[gamemode=!creative,gamemode=!spectator,scores={radiation=1000..}] run effect give @a[gamemode=!creative,gamemode=!spectator,scores={radiation=1000..}] hunger 1 5 true

execute if entity @a[scores={radiation=1001..}] run effect give @a[gamemode=!creative,gamemode=!spectator,scores={radiation=1000..}] wither 2 0 true
execute if entity @a[scores={radiation=1001..}] run scoreboard players set @a[scores={radiation=1001..}] radiation 1000
execute if entity @a[scores={radiation=..-1}] run scoreboard players set @a[scores={radiation=..-1}] radiation 0

execute if entity @a[scores={health=..0,radiation=999..}] run scoreboard players set @a[scores={health=..0,radiation=999..}] radiation 750
# see heallmao for fatal radiation sickness