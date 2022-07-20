execute if score HasRegen State matches 2.. run title @p[gamemode=adventure] actionbar {"text":"You already have Level 2 Regeneration.","color":"yellow"}
execute if score HasRegen State matches ..1 if score Balance State matches 5000.. run function kt:buy/confirm/regen_2
execute if score HasRegen State matches ..1 unless score Balance State matches 5000.. run title @p[gamemode=adventure] actionbar {"text":"You can't afford Level 2 Regeneration.","color":"red"}
