scoreboard players set $player_statues player_statues.verify 1

execute unless data storage player_statues:data temp_statue.id run tellraw @p {"translate": "player_statues.new_statue.no_id", "fallback": "You must specify a id for a statue to use.", "color": "red", "bold": false, "italic": false, "underlined": false, "strikethrough": false, "obfuscated": false}
execute unless data storage player_statues:data temp_statue.id run scoreboard players set $player_statues player_statues.verify 0

$execute if data storage player_statues:data statues[{id:"$(id)"}] run tellraw @p {"translate": "player_statues.new_statue.no_unique_id", "fallback": "You must specify a unique id for a statue to use.", "color": "red", "bold": false, "italic": false, "underlined": false, "strikethrough": false, "obfuscated": false}
$execute if data storage player_statues:data statues[{id:"$(id)"}] run scoreboard players set $player_statues player_statues.verify 0

execute unless data storage player_statues:data temp_statue.elements run tellraw @p {"translate": "player_statues.new_statue.no_elements", "fallback": "You must specify elements for a statue to have.", "color": "red", "bold": false, "italic": false, "underlined": false, "strikethrough": false, "obfuscated": false}
execute unless data storage player_statues:data temp_statue.elements run scoreboard players set $player_statues player_statues.verify 0
