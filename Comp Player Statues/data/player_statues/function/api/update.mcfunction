$data modify storage player_statues:data temp_statue set value $(statue)

execute unless data storage player_statues:data temp_statue.id run tellraw @s {"translate": "player_statues.update_statue.no_id", "fallback": "You must specify a statue id to update.", "color": "red", "bold": false, "italic": false, "underlined": false, "strikethrough": false, "obfuscated": false}
execute unless data storage player_statues:data temp_statue.id run return fail
data modify storage player_statues:data score.id set from storage player_statues:data temp_statue.id

scoreboard players set $player_statues player_statues.statue_index 0
data modify storage player_statues:data score.statue_index set value 0
execute store result score $player_statues player_statues.statue_indices run data get storage player_statues:data statues

execute if score $player_statues player_statues.statue_indices matches 1.. run function player_statues:internal/find_id with storage player_statues:data score
execute store result storage player_statues:data score.statue_index int 1 run scoreboard players remove $player_statues player_statues.statue_index 1

execute if score $player_statues player_statues.statue_id_found matches 1 run function player_statues:internal/update_statue_macro_resummon with storage player_statues:data score