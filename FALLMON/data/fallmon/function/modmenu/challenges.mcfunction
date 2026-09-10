tellraw @s {text:"==========================",color:"green"}

tellraw @s ["",{text:"[Unchipped]",bold:true,color:"dark_green",hover_event:{action:"show_text",value:[{text:"Hides radiation amount and thirst level. Also mutes radiation sounds. Can be made visible by holding a recovery compass"}]}},{text:"-",bold:true,color:"white"},{text:"[ENABLE]",bold:true,color:"green",click_event:{action:"run_command",command:"execute as @s[team=] run function fallmon:challenges/unchippedenable"}},{text:"[DISABLE]",bold:true,color:"red",click_event:{action:"run_command",command:"execute as @s[team=] run function fallmon:challenges/unchippeddisable"}}]

tellraw @s {text:"==========================",color:"green"}