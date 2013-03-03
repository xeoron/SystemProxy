SystemProxy
===========
<img src="https://raw.github.com/xeoron/SystemProxy/master/3_simple_questions.png"/>


With a press of a button, make switching the system-wide SOCKS-proxy settings On or Off quick and easy.


Requirements:
=====
Mac OS X Leapard or higher and a AppleScript Editor

To turn on a system wide SOCKS proxy you will need a "service" already running in the background to bind SOCKS too. Here is SSH tunnel bound to localhost directing traffic through port 8080
    
    ssh -2 -C foobar@tunnel.com -p 22 -N -D localhost:8080 2>/dev/null

Once the service is running, use the tunnel address and port number in SystemProxy. 
Usig the above example, the information you would use is this:

    Proxy Address: localhost or 127.0.0.1
    Port Number: 8080

Once set, see if your traffic is being sent through the proxy. Since this test case is using a tunnel to a online service

    Google: what is my ip

to see what IP Address is seen by online servers. Therefore, if you turn SOCKS off, you should then see a different result.




