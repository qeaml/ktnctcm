scoreboard players set @a Dead 0
scoreboard players set InWave State 1
effect clear @a saturation
tp @a 0 -48 15

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
execute if score WaveNo State matches 15 run title @a actionbar {"text":"Waves above 15 are not currently supported.","color":"gold","bold":true}

team join Torlaxse @e[tag=torlaxse]
effect give @e[tag=torlaxse] glowing 5 0 true

schedule function kt:wave/tick 1s
