scoreboard players set @a Ready 0
execute at @a if block ~ ~-1 ~ green_concrete run scoreboard players set @p Ready 1

execute unless entity @a[scores={Ready=0}] if score Countdown State matches 0 run scoreboard players set Countdown State 4
execute if entity @a[scores={Ready=0}] if score Countdown State matches 1.. run title @a title ""
execute if entity @a[scores={Ready=0}] run title @a[scores={Ready=1}] actionbar "The wave will begin when all players are ready."
execute if entity @a[scores={Ready=0}] run scoreboard players set Countdown State 0

execute if score Countdown State matches 4 run title @a title "3"
execute if score Countdown State matches 3 run title @a title "2"
execute if score Countdown State matches 2 run title @a title "1"
execute if score Countdown State matches 1 run function kt:wave/start
execute if score Countdown State matches 1..4 run scoreboard players remove Countdown State 1

execute unless score InWave State matches 1 run schedule function kt:lobby/tick 1s
