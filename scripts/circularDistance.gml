//returns the shortest signed distance from point a to point b on a circle of circumference L
//like one dimension of our wrapped map
a=argument0
b=argument1
L=argument2

left = moduloButBetter((a-b),L)
right = moduloButBetter((b-a),L)
if left < right
    result = -left
else
    result = right
return result
