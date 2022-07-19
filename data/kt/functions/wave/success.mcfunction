title @a subtitle {"text":""}
title @a title {"text":"Wave complete!","color":"green","bold":true}

scoreboard players set InWave State 0

execute if score WaveNo State matches 1 run scoreboard players add Balance State 100
execute if score WaveNo State matches 2 run scoreboard players add Balance State 200
execute if score WaveNo State matches 3 run scoreboard players add Balance State 300
execute if score WaveNo State matches 4 run scoreboard players add Balance State 400
execute if score WaveNo State matches 5 run scoreboard players add Balance State 500
execute if score WaveNo State matches 6 run scoreboard players add Balance State 600
execute if score WaveNo State matches 7 run scoreboard players add Balance State 700
execute if score WaveNo State matches 8 run scoreboard players add Balance State 800
execute if score WaveNo State matches 9 run scoreboard players add Balance State 900
execute if score WaveNo State matches 10 run scoreboard players add Balance State 1000
execute if score WaveNo State matches 11 run scoreboard players add Balance State 1100
execute if score WaveNo State matches 12 run scoreboard players add Balance State 1200
execute if score WaveNo State matches 13 run scoreboard players add Balance State 1300
execute if score WaveNo State matches 14 run scoreboard players add Balance State 1400
execute if score WaveNo State matches 15 run scoreboard players add Balance State 1500
execute if score WaveNo State matches 16 run scoreboard players add Balance State 1600
execute if score WaveNo State matches 17 run scoreboard players add Balance State 1700
execute if score WaveNo State matches 18 run scoreboard players add Balance State 1800
execute if score WaveNo State matches 19 run scoreboard players add Balance State 1900
execute if score WaveNo State matches 20 run scoreboard players add Balance State 2000
execute if score WaveNo State matches 21 run scoreboard players add Balance State 2100
execute if score WaveNo State matches 22 run scoreboard players add Balance State 2200
execute if score WaveNo State matches 23 run scoreboard players add Balance State 2300
execute if score WaveNo State matches 24 run scoreboard players add Balance State 2400
execute if score WaveNo State matches 25 run scoreboard players add Balance State 2500

execute if score WaveNo State matches ..24 run scoreboard players add WaveNo State 1

function kt:wave/end
