scoreboard players set InWave State 0
scoreboard players set WaveNo State 1
scoreboard players set @a Dead 0

title @a actionbar {"text":"Data reset.","color":"gold","bold":true}

clear @a
give @a iron_sword{Unbreakable:true,display:{Name:'{"text":"Basic Sword","bold":true}'}}
