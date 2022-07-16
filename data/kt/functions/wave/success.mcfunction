title @a subtitle {"text":""}
title @a title {"text":"Wave complete!","color":"green","bold":true}

scoreboard players set InWave State 0
execute if score WaveNo State matches ..14 run scoreboard players add WaveNo State 1

function kt:wave/end
