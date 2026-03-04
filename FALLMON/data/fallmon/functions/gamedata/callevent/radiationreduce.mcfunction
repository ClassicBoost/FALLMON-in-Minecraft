execute if score survivalMode stuffIguess matches 0 run scoreboard players remove @a[nbt={Dimension:"minecraft:overworld"}] radiation 15
scoreboard players set radiationTimer stuffIguess 6000

execute if score survivalMode stuffIguess matches 0 run title @a[nbt={Dimension:"minecraft:overworld"},scores={unchippedMode=0}] actionbar {"text": "Your radiation is reduced by 15", "color": "#47FF47"}
execute if score survivalMode stuffIguess matches 0 run playsound minecraft:fallmon.radaway neutral @a[nbt={Dimension:"minecraft:overworld"},scores={unchippedMode=0}] ~ ~ ~ 100000000000 1 1