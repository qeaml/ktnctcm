title @a actionbar {"text":"Purchased the Shields.","color":"green"}
scoreboard players remove Balance State 1000
scoreboard players set HasShield State 1
item replace entity @a[gamemode=adventure] weapon.offhand with shield{display:{Lore:['{"text":"Uncommon","color":"green"}']},Unbreakable:true}
