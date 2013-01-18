SystemProxy
===========

With a press of a button, quickly access Mac OS X's SOCKS Proxy settings for turning on or shutting off. 

If already have a SSH tunnel or any other tunnel that is bound to a port, and you want to to direct all traffic 
through it or turn off quickly turn off the SOCKS proxy, this program makes it easy to do.

Requirements:
=====
Mac OS X Leapard or higher

To turn on a system wide SOCKS proxy you will need a "service" already running in the background to bind SOCKS too.

    Here is SSH tunnel example bound to port 8080
    ssh -2 -C foobar@tunnel.com -p 22 -N -D localhost:8080 2>/dev/null



