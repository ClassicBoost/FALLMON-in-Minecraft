execute as @a[nbt={HurtTime:9s},team=snivy,scores={oxygen=1..}] at @s run playsound hurt.snivy player @a ~ ~ ~ 1 1
execute as @a[nbt={HurtTime:9s},team=riolu,scores={oxygen=1..}] at @s run playsound hurt.riolu player @a ~ ~ ~ 1 1
execute as @a[nbt={HurtTime:9s},team=pikachu,scores={oxygen=1..}] at @s run playsound hurt.pikachu player @a ~ ~ ~ 1 1
execute as @a[nbt={HurtTime:9s},team=tepig,scores={oxygen=1..}] at @s run playsound hurt.tepig player @a ~ ~ ~ 1 1
execute as @a[nbt={HurtTime:9s},team=oshawott,scores={oxygen=1..}] at @s run playsound hurt.oshawott player @a ~ ~ ~ 1 1
execute as @a[nbt={HurtTime:9s},team=joey,scores={oxygen=1..}] at @s run playsound entity.bat.ambient player @a ~ ~ ~ 1 1

execute as @a[nbt={HurtTime:9s},scores={health=..0}] at @s run playsound player.death player @a ~ ~ ~ 100000000 1

playsound hurt.drown player @a[scores={oxygen=..-19}] ~ ~ ~ 100000000 1

# tellraw @a ["",{"text":"-$300","color":"red"},{"text":": Penalty for killing a friendly.\n"},{"text":"WARNING: You will be banned from this server if you kill 2 more teammates!","color":"red"}]