playsound entity.experience_orb.pickup master @a ~ ~ ~ 1000000000000000000 1
function fallmon:species/reload

# add the score boards
scoreboard objectives add radiation dummy "Radiation Level"
scoreboard players add @a radiation 0
#scoreboard objectives setdisplay list radiation

scoreboard objectives add stuffIguess dummy "Debug Info"
scoreboard objectives add playerSpecies dummy
scoreboard objectives add tempRadiation dummy
scoreboard objectives add oxygen air
scoreboard objectives add hunger food "World Hunger"
scoreboard objectives add health health "HP"
scoreboard objectives setdisplay belowName health
scoreboard objectives add oxygenAlt dummy
scoreboard objectives add inspace dummy
scoreboard objectives add armorlmao armor
scoreboard objectives add sprint minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add secrets dummy
scoreboard objectives add thirst dummy
scoreboard objectives add unchippedMode dummy
scoreboard players add @a unchippedMode 0
scoreboard players add @a thirst 0
scoreboard players add @a radiation 0
scoreboard players add @a tempRad 0
scoreboard objectives add type dummy

scoreboard players set startfr secrets 1

# set up delays
scoreboard players set heal stuffIguess 200
scoreboard players set waterRad stuffIguess 20
scoreboard players set ambienceTimer stuffIguess 500

# radiation display
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

# update game rules
gamerule doDaylightCycle false
gamerule naturalRegeneration false
gamerule commandBlockOutput false
gamerule mobGriefing false
gamerule drowningDamage false
gamerule doTraderSpawning false
gamerule doInsomnia false
gamerule maxEntityCramming 0
gamerule showDeathMessages false