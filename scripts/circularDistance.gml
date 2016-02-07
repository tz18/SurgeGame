//returns the shortest signed distance from point a to point b on a circle of circumference L
//like one dimension of our wrapped map
var a=argument0
var b=argument1
var L=argument2

var left = moduloButBetter((a-b),L)
var right = moduloButBetter((b-a),L)
if left < right
    result = -left
else
    result = right
return result
