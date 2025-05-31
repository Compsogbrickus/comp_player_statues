$data modify storage player_statues:data update.id set value $(id)

execute unless data storage player_statues:data update.id run tellraw @s {"translate": "player_statues.remove.no_id", "fallback": "You must specify a statue id to remove.", "color": "red", "bold": false, "italic": false, "underlined": false, "strikethrough": false, "obfuscated": false}
execute unless data storage player_statues:data update.id run return fail

$data modify storage player_statues:data statues prepend from storage player_statues:data statues[{id:$(id)}]

data modify storage player_statues:data statues[0].elements append value {end:1b}
execute unless data storage player_statues:data statues[0].elements[0].end run function player_statues:internal/iterate_elements_kill
data remove storage player_statues:data statues[0].elements[{end:1b}]

$data remove storage player_statues:data statues[{id:$(id)}]