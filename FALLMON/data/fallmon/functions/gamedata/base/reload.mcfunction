playsound entity.experience_orb.pickup master @a ~ ~ ~ 1000000000000000000 1
function fallmon:species/reload

# add the score boards
scoreboard objectives add radiation dummy "Radiation Level"
scoreboard players add @a radiation 0
scoreboard objectives setdisplay list radiation

scoreboard objectives add stuffIguess dummy
scoreboard objectives add playerSpecies dummy
scoreboard objectives add tempRadiation dummy
scoreboard objectives add oxygen air
scoreboard objectives add hunger food
scoreboard objectives add health health
scoreboard objectives modify hunger displayname "World Hunger"
scoreboard objectives setdisplay below_name health
scoreboard objectives modify health displayname "HP"
scoreboard objectives add oxygenAlt dummy
scoreboard objectives add inspace dummy
scoreboard objectives add armorlmao armor
scoreboard objectives add sprint minecraft.custom:minecraft.sprint_one_cm

# set up delays
scoreboard players set heal stuffIguess 200
scoreboard players set waterRad stuffIguess 20
scoreboard players set ambienceTimer stuffIguess 500

scoreboard objectives modify stuffIguess displayname "Debug Info"

bossbar add 1 "You are perfectly fine!"
bossbar set 1 color white

bossbar add 2 "You are fine"
bossbar set 2 max 100
bossbar set 2 value 5
bossbar set 2 color white

bossbar add 3 "You are slightly fatigued"
bossbar set 3 max 100
bossbar set 3 value 15
bossbar set 3 color yellow
bossbar set 3 name {"text": "You are slightly fatigued", "color": "#FFFF91", "bold": true}

bossbar add 4 "You are ill"
bossbar set 4 max 10
bossbar set 4 value 3
bossbar set 4 color yellow
bossbar set 4 name {"text": "You are ill", "color": "#FFFF2D", "bold": true}

bossbar add 5 "You are very ill"
bossbar set 5 max 100
bossbar set 5 value 45
bossbar set 5 color red
bossbar set 5 name {"text": "You are very ill", "color": "#FF954F", "bold": true}

bossbar add 6 "Your skin is decaying"
bossbar set 6 max 10
bossbar set 6 value 6
bossbar set 6 color red
bossbar set 6 name {"text": "Your skin is decaying", "color": "#FF291E", "bold": true}

bossbar add 7 "You are decaying"
bossbar set 7 max 1
bossbar set 7 value 1
bossbar set 7 color red
bossbar set 7 name {"text": "You are decaying", "color": "#871517", "bold": true}

scoreboard objectives add damage custom:damage_taken

gamerule doDaylightCycle false
gamerule naturalRegeneration false
gamerule commandBlockOutput false
gamerule mobGriefing false
gamerule drowningDamage false
gamerule doTraderSpawning false
gamerule doInsomnia false
gamerule maxEntityCramming 0