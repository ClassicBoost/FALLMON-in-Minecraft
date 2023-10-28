execute if score survivalMode stuffIguess matches 0 run scoreboard players remove @a[nbt={Dimension:"minecraft:overworld"}] radiation 25
scoreboard players set radiationTimer stuffIguess 6000

execute if score survivalMode stuffIguess matches 0 run title @a[nbt={Dimension:"minecraft:overworld"}] actionbar {"text": "Your radiation is reduced by 25", "color": "#47FF47"}
execute if score survivalMode stuffIguess matches 0 run playsound minecraft:fallmon.radaway neutral @a[nbt={Dimension:"minecraft:overworld"}] ~ ~ ~ 100000000000 1 1