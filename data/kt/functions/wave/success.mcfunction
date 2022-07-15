effect give @a saturation 999999 0 true
tp @a 0 -42 15

title @a subtitle {"text":""}
title @a title {"text":"Wave complete!","color":"green","bold":true}

scoreboard players set InWave State 0
execute if score WaveNo State matches ..4 run scoreboard players add WaveNo State 1