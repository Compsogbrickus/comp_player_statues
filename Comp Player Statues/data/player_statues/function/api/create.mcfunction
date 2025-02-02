$data modify storage player_statues:data temp_statue set value $(statue)

execute unless data storage player_statues:data temp_statue.texture run tellraw @s {"translate": "player_statues.new_statue.no_texture", "fallback": "You must specify a texture for a statue to use.", "color": "red", "bold": false, "italic": false, "underlined": false, "strikethrough": false, "obfuscated": false}
execute unless data storage player_statues:data temp_statue.texture run return fail

execute unless data storage player_statues:data temp_statue.id run function player_statues:internal/new_statue_id
execute unless data storage player_statues:data temp_statue.elements run data modify storage player_statues:data temp_statue.elements set value []

data modify storage player_statues:data statues append from storage player_statues:data temp_statue

scoreboard players set $player_statues player_statues.statue_index 0
data modify storage player_statues:data score.statue_index set value 0
execute store result score $player_statues player_statues.statue_index run data get storage player_statues:data statues
execute store result storage player_statues:data score.statue_index int 1 run scoreboard players remove $player_statues player_statues.statue_index 1

function player_statues:internal/update_statue_macro with storage player_statues:data score

function player_statues:internal/iterate_elements with storage player_statues:data score
