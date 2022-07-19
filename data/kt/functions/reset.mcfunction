# prepare scoreboard objectives
scoreboard objectives remove State
scoreboard objectives remove Dead
scoreboard objectives remove Ready
scoreboard objectives add State dummy
scoreboard objectives add Dead deathCount
scoreboard objectives add Ready dummy
scoreboard players set InWave State 0
scoreboard players set Countdown State 0
scoreboard players set WaveNo State 1
scoreboard players set @a Dead 0

# clean up after possibly mid-wave reset
tp @a 0 -42 15
kill @e[tag=torlaxse]

# prepare players
gamemode adventure @a
clear @a
give @a iron_sword{Unbreakable:true,display:{Name:'{"text":"Basic Sword","bold":true,"italic":false}',Lore:['{"text":"Common","color":"gray"}']}}

# notify players
title @a actionbar {"text":"Data reset.","color":"gold","bold":true}

# start ticking lobby
function kt:lobby/tick
