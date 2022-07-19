scoreboard players set InWave State 0
scoreboard players set @a[gamemode=adventure] Dead 0
effect clear @a[gamemode=adventure]
effect give @a[gamemode=adventure] saturation 999999 0 true
tp @a[gamemode=adventure] 8 -39 23
function kt:lobby/tick
