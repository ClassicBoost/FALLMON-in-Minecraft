effect give @a[scores={hp=..7}] slowness 1 0 true
effect give @a[scores={hp=..5}] slowness 1 1 true
effect give @a[scores={hp=..5}] weakness 1 1 true
effect give @a[scores={hp=..3}] slowness 1 2 true
effect give @a[scores={hp=..3}] weakness 1 2 true
effect give @a[scores={hp=..3}] mining_fatigue 1 1 true

execute as @a at @s if block ~ ~ ~ water run effect give @s[scores={type=1,hp=5..}] wither 2 0 true