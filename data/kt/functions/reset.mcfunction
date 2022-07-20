# clean up possible title
title @a title ""

# clean up holograms
kill @e[tag=hologram]
summon armor_stand 18 -38 19 {CustomName:'{"text":"Reset","color":"red","bold":true}',CustomNameVisible:true,Invisible:true,Tags:["hologram"],NoGravity:true}
summon armor_stand 18 -38.3 19 {CustomName:'{"text":"Stand here to reset","color":"red","bold":false}',CustomNameVisible:true,Invisible:true,Tags:["hologram"],NoGravity:true}

summon armor_stand 18 -38 23 {CustomName:'{"text":"Start","color":"green","bold":true}',CustomNameVisible:true,Invisible:true,Tags:["hologram"],NoGravity:true}
summon armor_stand 18 -38.3 23 {CustomName:'{"text":"Stand here to start","color":"green","bold":false}',CustomNameVisible:true,Invisible:true,Tags:["hologram"],NoGravity:true}
summon armor_stand 18 -38.6 23 {CustomName:'{"text":"All players must be","color":"green","bold":false}',CustomNameVisible:true,Invisible:true,Tags:["hologram"],NoGravity:true}
summon armor_stand 18 -38.85 23 {CustomName:'{"text":"here to start","color":"green","bold":false}',CustomNameVisible:true,Invisible:true,Tags:["hologram"],NoGravity:true}
summon armor_stand 18 -39.2 23 {CustomName:'{"text":"Wave 1","color":"yellow","bold":false}',CustomNameVisible:true,Invisible:true,Tags:["hologram","wave_no"],NoGravity:true}

summon armor_stand 18 -38 27 {CustomName:'{"text":"Spectate","color":"gray","bold":true}',CustomNameVisible:true,Invisible:true,Tags:["hologram"],NoGravity:true}
summon armor_stand 18 -38.3 27 {CustomName:'{"text":"Stand here to spectate","color":"gray","bold":false}',CustomNameVisible:true,Invisible:true,Tags:["hologram"],NoGravity:true}

# prepare players
gamemode adventure @a[gamemode=!spectator]
clear @a[gamemode=adventure]
give @a[gamemode=adventure] iron_sword{Unbreakable:true,display:{Name:'{"text":"Basic Sword","bold":true,"italic":false}',Lore:['{"text":"Common","color":"gray"}']}}

# prepare scoreboard objectives
scoreboard objectives remove State
scoreboard objectives remove Dead
scoreboard objectives remove Ready
scoreboard objectives remove Reset
scoreboard objectives add State dummy
scoreboard objectives add Dead deathCount
scoreboard objectives add Ready dummy
scoreboard objectives add Reset dummy
scoreboard players set InWave State 0
scoreboard players set Countdown State 0
scoreboard players set ResetCountdown State 0
scoreboard players set WaveNo State 1
scoreboard players set Balance State 100
scoreboard players set HasShield State 0
scoreboard players set HasRegen State 0
scoreboard players set @a[gamemode=adventure] Dead 0

# prepare teams
team remove Torlaxse
team add Torlaxse
team modify Torlaxse color red

# clean up after possibly mid-wave reset
tp @a[gamemode=adventure] 8 -39 23
kill @e[tag=torlaxse]

# notify players
title @a actionbar {"text":"Data reset.","color":"gold","bold":true}

# start ticking lobby
function kt:lobby/tick
