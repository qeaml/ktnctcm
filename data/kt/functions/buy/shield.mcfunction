execute if score HasShield State matches 0 if score Balance State matches 1000.. run function kt:buy/confirm/shield
execute if score HasShield State matches 0 unless score Balance State matches 1000.. run title @a actionbar {"text":"You can't afford to purchase the Shields.","color":"red"}
execute if score HasShield State matches 0 run title @a actionbar {"text":"You have purchased the Shields already.","color":"yellow"}
