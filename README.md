SystemProxy
===========
<img src="https://raw.github.com/xeoron/SystemProxy/master/3_simple_questions.png"/>

Three simple questions, with fault tolerance so your system does not get screwed up, to turn on a system-wide SOCKS-proxy, and one question to turn off.

Requirements:
=====
Runs on Mac OS X Leapard or higher

To turn on a system wide SOCKS proxy you will need a "service" already running in the background to bind SOCKS too. Here is SSH tunnel example bound to localhost directing traffic through port 8080
    
    ssh -2 -C foobar@tunnel.com -p 22 -N -D localhost:8080 2>/dev/null

Once the service is running, use the tunnel address and port number in SystemProxy. 
Usig the above example, the information you would use is this:

    Proxy Address: localhost or 127.0.0.1
    Port Number: 8080

Once set, see your traffic in Safari being sent through the proxy. Since this test case is using a tunnel to a online service

    Google: what is my ip

to see what IP Address is seen by online servers. Therefore, if you turn SOCKS off, you should than see a different result.










