//Tutorial launch script
clearscreen.

//set throttle to full
lock throttle to 1.0. 

//countdown loop
print "Counting Down:".
from {local countdown is 10.} until countdown = 0 step {set countdown to countdown - 1.} DO {
    print "..." + countdown.
    wait 1. //pause for one second. simulates countdown timer.
}

set mysteer to heading(90,90).
lock steering to mysteer.
until ship:apoapsis > 1000000 {
    if ship:velocity:surface:mag < 100 {
        set mysteer to heading(90,90).
    } else if ship:velocity:surface:mag >= 100 {
        set mysteer to heading(90,80).
        print "Pitching to 80 degrees..." at(0,15).
        print round(ship:apoapsis,0) at (0,16).
    }.
}.

when maxthrust = 0 then{
    print "Staging...".
    wait 1.
    stage.
    preserve.
}.

wait until altitude > 70000.