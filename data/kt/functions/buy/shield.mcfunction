execute if score HasShield State matches 1 run title @p[gamemode=adventure] actionbar {"text":"You already have Shields.","color":"yellow"}
execute if score HasShield State matches 0 if score Balance State matches 1000.. run function kt:buy/confirm/shield
execute if score HasShield State matches 0 unless score Balance State matches 1000.. run title @p[gamemode=adventure] actionbar {"text":"You can't afford Shields.","color":"red"}
