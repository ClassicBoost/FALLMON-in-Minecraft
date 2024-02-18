scoreboard players set second updates 20

execute as @a at @s if block ~ ~ ~ water run scoreboard players add @s[scores={type=1..},gamemode=!creative,gamemode=!spectator] radiation 1
execute as @a at @s if block ~ ~ ~ water run title @s[scores={type=1..},gamemode=!creative,gamemode=!spectator] actionbar {"text": "+1 RAD", "color": "#FF443A"}