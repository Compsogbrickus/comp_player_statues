scoreboard players set $lives lives.verify 1

execute unless data storage lives:data temp_display.id run tellraw @p {"translate": "lives.new_display.no_id", "fallback": "You must specify a id for a display to use.", "color": "red", "bold": false, "italic": false, "underlined": false, "strikethrough": false, "obfuscated": false}
execute unless data storage lives:data temp_display.id run scoreboard players set $lives lives.verify 0

$execute if data storage lives:data displays[{id:"$(id)"}] run tellraw @p {"translate": "lives.new_display.no_unique_id", "fallback": "You must specify a unique id for a display to use.", "color": "red", "bold": false, "italic": false, "underlined": false, "strikethrough": false, "obfuscated": false}
$execute if data storage lives:data displays[{id:"$(id)"}] run scoreboard players set $lives lives.verify 0

execute unless data storage lives:data temp_display.elements run tellraw @p {"translate": "lives.new_display.no_elements", "fallback": "You must specify elements for a display to have.", "color": "red", "bold": false, "italic": false, "underlined": false, "strikethrough": false, "obfuscated": false}
execute unless data storage lives:data temp_display.elements run scoreboard players set $lives lives.verify 0