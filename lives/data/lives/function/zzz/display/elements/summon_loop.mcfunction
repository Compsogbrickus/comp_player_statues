data modify storage lives:data macro.type set value "-"
data modify storage lives:data macro.type set from storage lives:data displays[0].elements[0].type

data modify storage lives:data macro.data set value {}
data modify storage lives:data macro.data set from storage lives:data displays[0].elements[0].data

data remove storage lives:data macro.item_display_id
execute if data storage lives:data macro{type: "item_display"} \
if data storage lives:data macro.data.item{type: "reference"} \
run function lives:zzz/display/elements/summon/item_display/get

function lives:zzz/display/elements/summon/type with storage lives:data macro

data modify storage lives:data displays[0].elements append from storage lives:data displays[0].elements[0]
data remove storage lives:data displays[0].elements[0]

execute unless data storage lives:data displays[0].elements[0].end run function lives:zzz/display/elements/summon_loop