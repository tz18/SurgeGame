//Handles special characters used in configuring controls
//Takes an ASCII value and returns the character, or a description of it if appropriate.

if (argument0 == 40)
    return "Down arrow key"
else if (argument0 == 39)
    return "Right arrow key"
else if (argument0 == 38)
    return "Up arrow key"
else if (argument0 == 37)
    return "Left arrow key"
else
    return(chr(argument0))
