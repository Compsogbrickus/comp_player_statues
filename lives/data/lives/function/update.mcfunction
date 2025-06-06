$data modify storage lives:data update.id set value $(id)

execute unless data storage lives:data update.id run tellraw @s {"translate": "lives.update.no_id", "fallback": "You must specify a display id to update.", "color": "red", "bold": false, "italic": false, "underlined": false, "strikethrough": false, "obfuscated": false}
execute unless data storage lives:data update.id run return fail

$data modify storage lives:data displays prepend from storage lives:data displays[{id:$(id)}]

data modify storage lives:data displays[0].elements append value {end:1b}
execute unless data storage lives:data displays[0].elements[0].end run function lives:zzz/display/elements/kill_loop
data remove storage lives:data displays[0].elements[{end:1b}]

$data remove storage lives:data displays[{id:$(id)}]

function lives:zzz/spawn_loot with storage lives:data update