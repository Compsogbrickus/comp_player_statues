data modify storage lives:data temp_display set value {}
data modify storage lives:data temp_display set from entity @s Item.components."minecraft:custom_data".lives

data modify storage lives:data macro set value {}
function lives:zzz/display/position

kill @s

data modify storage lives:data temp_display.elements append value {end:1b}
execute unless data storage lives:data temp_display.elements[0].end run function lives:zzz/display/elements/expand_loop
data remove storage lives:data temp_display.elements[{end:1b}]

function lives:zzz/verify with storage lives:data temp_display
execute if score $lives lives.verify matches 0 run return fail

data modify storage lives:data displays prepend from storage lives:data temp_display

data modify storage lives:data displays[0].elements append value {end:1b}
execute unless data storage lives:data displays[0].elements[0].end run function lives:zzz/display/elements/summon_loop
data remove storage lives:data displays[0].elements[{end:1b}]

function lives:zzz/display/elements/stack with storage lives:data temp_display