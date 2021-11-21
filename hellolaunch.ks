//hellolaunch

//Clear terminal screen
clearscreen.

//countdown loop
print "Counting Down:".
from {local countdown is 10.} unti countdown = 0 step {set countdown to countdown - 1.} do {
    print "..." + countdown.
    wait 1. //pauses script 
} 