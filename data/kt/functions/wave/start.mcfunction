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
execute if score WaveNo State matches 5 run title @a actionbar {"text":"Data reset.","color":"gold","bold":true}

function kt:wave/defer

schedule function kt:wave/tick 1s
