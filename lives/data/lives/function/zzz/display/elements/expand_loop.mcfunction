data modify storage lives:data macro.element set value {}
data modify storage lives:data macro.new_elements set value []

data modify storage lives:data macro.element set from storage lives:data temp_display.elements[0]

execute if data storage lives:data macro.element{type: "reference"} run function lives:zzz/spawn_loot with storage lives:data macro.element

data modify storage lives:data macro.new_elements set from entity @n[distance=..0.01,type=item] Item.components."minecraft:custom_data"."lives.elements"
kill @n[distance=..0.01,type=item]

data modify storage lives:data macro.new_elements append value {end:1b}
execute unless data storage lives:data macro.new_elements[0].end run function lives:zzz/display/elements/append_loop

execute unless data storage lives:data macro.element{type: "reference"} run data modify storage lives:data temp_display.elements append from storage lives:data temp_display.elements[0]
data remove storage lives:data temp_display.elements[0]

execute unless data storage lives:data temp_display.elements[0].end run function lives:zzz/display/elements/expand_loop