title @a subtitle {"text":""}
title @a title {"text":"Wave failed!","color":"red","bold":true}

kill @e[tag=torlaxse]

execute at @a run playsound block.beacon.deactivate master @p ~ ~ ~ 1 1 1
function kt:wave/end
