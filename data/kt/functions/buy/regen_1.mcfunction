execute if score HasRegen1 State matches 0 if score Balance State matches 2400.. run function kt:buy/confirm/regen_1
execute if score HasRegen1 State matches 0 unless score Balance State matches 2400.. run title @p[gamemode=adventure] actionbar {"text":"You can't afford Level 1 Regeneration.","color":"red"}
execute if score HasRegen1 State matches 1 run title @p[gamemode=adventure] actionbar {"text":"You already have Level 1 Regeneration .","color":"yellow"}
