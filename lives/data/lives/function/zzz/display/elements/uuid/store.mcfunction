data modify storage lives:data macro.UUID set value [I;0,1,2,3]
data modify storage lives:data macro.UUID set from entity @s UUID
function gu:convert with storage lives:data macro
data modify storage lives:data displays[0].elements[0].UUID set from storage gu:main out
