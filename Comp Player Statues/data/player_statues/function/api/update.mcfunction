$data modify storage player_statues:data update.id set value $(id)

execute unless data storage player_statues:data update.id run tellraw @s {"translate": "player_statues.update.no_id", "fallback": "You must specify a statue id to update.", "color": "red", "bold": false, "italic": false, "underlined": false, "strikethrough": false, "obfuscated": false}
execute unless data storage player_statues:data update.id run return fail

data modify storage player_statues:data statues[0].elements append value {end:1b}
execute unless data storage player_statues:data statues[0].elements[0].end run function player_statues:internal/iterate_elements_kill with storage player_statues:data temp_statue
data remove storage player_statues:data statues[0].elements[{end:1b}]

$data remove storage player_statues:data statues[{id:$(id)}]

$loot spawn ~ ~ ~ loot $(namespace):$(id)