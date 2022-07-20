scoreboard players set @a[gamemode=adventure] Dead 0
scoreboard players set InWave State 1
effect clear @a[gamemode=adventure] saturation
execute if score HasRegen State matches 1 run effect give @a[gamemode=adventure] regeneration 999999 0
execute if score HasRegen State matches 2 run effect give @a[gamemode=adventure] regeneration 999999 1
tp @a[gamemode=adventure] 8 -46.9 23

title @a subtitle {"text":"Begin!","color":"yellow"}

execute if score WaveNo State matches 1 run function kt:wave/1
execute if score WaveNo State matches 2 run function kt:wave/2
execute if score WaveNo State matches 3 run function kt:wave/3
execute if score WaveNo State matches 4 run function kt:wave/4
execute if score WaveNo State matches 5 run function kt:wave/5
execute if score WaveNo State matches 6 run function kt:wave/6
execute if score WaveNo State matches 7 run function kt:wave/7
execute if score WaveNo State matches 8 run function kt:wave/8
execute if score WaveNo State matches 9 run function kt:wave/9
execute if score WaveNo State matches 10 run function kt:wave/10
execute if score WaveNo State matches 11 run function kt:wave/11
execute if score WaveNo State matches 12 run function kt:wave/12
execute if score WaveNo State matches 13 run function kt:wave/13
execute if score WaveNo State matches 14 run function kt:wave/14
execute if score WaveNo State matches 15 run function kt:wave/15
execute if score WaveNo State matches 16 run function kt:wave/16
execute if score WaveNo State matches 17 run function kt:wave/17
execute if score WaveNo State matches 18 run function kt:wave/18
execute if score WaveNo State matches 19 run function kt:wave/19
execute if score WaveNo State matches 20 run function kt:wave/20
execute if score WaveNo State matches 21 run function kt:wave/21
execute if score WaveNo State matches 22 run function kt:wave/22
execute if score WaveNo State matches 23 run function kt:wave/23
execute if score WaveNo State matches 24 run function kt:wave/24
execute if score WaveNo State matches 25 run function kt:wave/25
execute if score WaveNo State matches 25 run title @a actionbar {"text":"Waves above 25 are not currently supported.","color":"gold","bold":true}

team join Torlaxse @e[tag=torlaxse]
effect give @e[tag=torlaxse] glowing 5 0 true

schedule function kt:wave/tick 1s
