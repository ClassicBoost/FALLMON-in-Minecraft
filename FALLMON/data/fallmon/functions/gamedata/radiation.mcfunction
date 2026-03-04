bossbar set 1 players none
bossbar set 2 players none
bossbar set 3 players none
bossbar set 4 players none
bossbar set 5 players none
bossbar set 6 players none
bossbar set 7 players none

# Perfectly fin
execute if entity @a[scores={radiation=..49}] run bossbar set 1 players @a[scores={radiation=..49}]

# Fine
execute if entity @a[scores={radiation=50..149}] run bossbar set 2 players @a[scores={radiation=50..149}]

# Slightly Ill
execute if entity @a[scores={radiation=150..299}] run bossbar set 3 players @a[scores={radiation=150..299}]
effect give @a[gamemode=!creative,gamemode=!spectator,scores={radiation=150..}] weakness 1 0 true

# Ill
execute if entity @a[scores={radiation=300..449}] run bossbar set 4 players @a[scores={radiation=300..449}]
effect give @a[gamemode=!creative,gamemode=!spectator,scores={radiation=300..}] weakness 1 1 true

# Extremely Ill
execute if entity @a[scores={radiation=450..599}] run bossbar set 5 players @a[scores={radiation=450..599}]
effect give @a[gamemode=!creative,gamemode=!spectator,scores={radiation=450..}] weakness 1 2 true
effect give @a[gamemode=!creative,gamemode=!spectator,scores={radiation=450..}] slowness 1 1 true
effect give @a[gamemode=!creative,gamemode=!spectator,scores={radiation=450..}] hunger 1 0 true

# Skin Decaying
execute if entity @a[scores={radiation=600..999}] run bossbar set 6 players @a[scores={radiation=600..999}]
effect give @a[gamemode=!creative,gamemode=!spectator,scores={radiation=600..}] weakness 1 3 true
effect give @a[gamemode=!creative,gamemode=!spectator,scores={radiation=600..}] slowness 1 2 true
effect give @a[gamemode=!creative,gamemode=!spectator,scores={radiation=600..}] mining_fatigue 1 0 true
effect give @a[gamemode=!creative,gamemode=!spectator,scores={radiation=600..}] hunger 1 1 true

# Decaying
execute if entity @a[scores={radiation=1000..}] run bossbar set 7 players @a[scores={radiation=1000..}]
effect give @a[gamemode=!creative,gamemode=!spectator,scores={radiation=1000..}] nausea 5 0 true
effect give @a[gamemode=!creative,gamemode=!spectator,scores={radiation=1000..}] hunger 1 5 true

# Fix radiation level
effect give @a[gamemode=!creative,gamemode=!spectator,scores={radiation=1000..}] wither 2 0 true
scoreboard players set @a[scores={radiation=1001..}] radiation 1000
scoreboard players set @a[scores={radiation=..-1}] radiation 0

scoreboard players set @a[scores={health=..0,radiation=999..}] radiation 750
# see heallmao for fatal radiation sickness