# Port_Scanner_CPP
Basically a simpler implamentation of Nmap without the fancy stuff such as advanced flags and NSE.
This is for my final project in ComS-327-Advanced_Programming.

### Usage:
---
1. allow user to do ./port_scanner --address <ipv4> --port <num> and it scans the specific port
2. allow user to do ./port_scanner --address <ipv4> and it scans first 1000 ports
3. allow user to do scan UDP as well with the --udp flag?
4. allow scanning of an ip range from 1-65535
5. this should be enough, if not add something such as simple OS guessing with --os based on common open ports for that os (bascially just test for windows and linux)


### Workload:
---
1. check if host is up. if so run as intended, else print "host down"
2. check for valid ipv4 and port numbers
3. handle crashes well and just print error messages not segfaults or stuff similar.
4. handle proper input and flags
5. make a --about flag that prints out my information - maybe...
