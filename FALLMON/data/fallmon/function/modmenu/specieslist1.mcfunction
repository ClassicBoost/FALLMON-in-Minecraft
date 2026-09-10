tellraw @s {text:"==========================",color:"green"}

tellraw @s {text:"Nothing",underlined:true,color:"gray",click_event:{action:"run_command",command:"execute as @s[team=] run team join nothing"},hover_event:{action:"show_text",value:[{text:"Nothing, base stats and everything. (Used for origins/etc)"}]}}

tellraw @s {text:"==========================",color:"green"}