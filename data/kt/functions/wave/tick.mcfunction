execute unless entity @e[tag=torlaxse] run function kt:wave/success
execute unless entity @a[scores={Dead=0}] run function kt:wave/fail
execute if score InWave State matches 1 run schedule function kt:wave/tick 1s