execute if score survivalMode stuffIguess matches 0 run scoreboard players remove @a radiation 25
scoreboard players set radiationTimer stuffIguess 6000

execute if score survivalMode stuffIguess matches 0 run title @a actionbar {"text": "Your radiation is reduced by 25", "color": "#47FF47"}
execute if score survivalMode stuffIguess matches 0 run playsound minecraft:entity.wandering_trader.drink_potion neutral @a ~ ~ ~ 100000000000 1 1