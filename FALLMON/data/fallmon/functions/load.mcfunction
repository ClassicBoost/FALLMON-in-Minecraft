function fallmon:species/actuallyreload
tellraw @a {"text": "FALLMON Datapack Loaded", "color" : "#47FF47", "bold": true}
tellraw @a {"text": "Version: Beta 1", "color" : "#47FF47", "italic": true}
tellraw @a {"text": "Welcome to the wasteland, you are... REDACTED years after the warhead. Please ensure all safety equipment is with you at all times.", "color" : "#47FF47"}
playsound block.note_block.banjo master @a ~ ~ ~ 1000000000000000000 1

scoreboard objectives add radiation dummy "Radiation Level"
scoreboard players add @a radiation 0

scoreboard objectives add stuffIguess dummy
scoreboard objectives add playerSpecies dummy
scoreboard objectives add health health
scoreboard objectives setdisplay below_name health
scoreboard objectives modify health displayname "HP"
scoreboard objectives setdisplay list radiation

scoreboard players set heal stuffIguess 1
scoreboard players set waterRad stuffIguess 1

bossbar add 1 "You are perfectly fine!"
bossbar set 1 color white

bossbar add 2 "You are fine"
bossbar set 2 color white

bossbar add 3 "You are slightly fatigued"
bossbar set 3 color yellow
bossbar set 3 name {"text": "You are slightly fatigued", "color": "#FFFF91", "bold": true}

bossbar add 4 "You are ill"
bossbar set 4 color yellow
bossbar set 4 name {"text": "You are ill", "color": "#FFFF2D", "bold": true}

bossbar add 5 "You are very ill"
bossbar set 5 color red
bossbar set 5 name {"text": "You are very ill", "color": "#FF954F", "bold": true}

bossbar add 6 "Your skin is decaying"
bossbar set 6 color red
bossbar set 6 name {"text": "Your skin is decaying", "color": "#FF291E", "bold": true}

bossbar add 7 "You are decaying"
bossbar set 7 color red
bossbar set 7 name {"text": "You are decaying", "color": "#871517", "bold": true}

scoreboard objectives add damage custom:damage_taken

gamerule naturalRegeneration false
gamerule commandBlockOutput false
gamerule mobGriefing false