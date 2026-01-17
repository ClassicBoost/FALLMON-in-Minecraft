# Perfectly fine
execute if entity @a[scores={radiation=..49,unchippedMode=0}] run bossbar set 1 players @a[scores={radiation=..49,unchippedMode=0}]

# Fine
execute if entity @a[scores={radiation=50..149,unchippedMode=0}] run bossbar set 2 players @a[scores={radiation=50..149,unchippedMode=0}]

# Slightly Ill
execute if entity @a[scores={radiation=150..299,unchippedMode=0}] run bossbar set 3 players @a[scores={radiation=150..299,unchippedMode=0}]

# Ill
execute if entity @a[scores={radiation=300..449,unchippedMode=0}] run bossbar set 4 players @a[scores={radiation=300..449,unchippedMode=0}]

# Extremely Ill
execute if entity @a[scores={radiation=450..599,unchippedMode=0}] run bossbar set 5 players @a[scores={radiation=450..599,unchippedMode=0}]

# Skin Decaying
execute if entity @a[scores={radiation=600..999,unchippedMode=0}] run bossbar set 6 players @a[scores={radiation=600..999,unchippedMode=0}]

# Decaying
execute if entity @a[scores={radiation=1000..,unchippedMode=0}] run bossbar set 7 players @a[scores={radiation=1000..,unchippedMode=0}]