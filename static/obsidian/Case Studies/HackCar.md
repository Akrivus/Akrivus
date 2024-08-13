HackCar is a script that allows a Raspberry Pi to control an RC car via WASD over UDP. To control the car, I directly generate ASK (amplitude shift keying, aka binary over AM) signals and transmit them over GPIO pins using a quirk in physics exploited by a library called RPiTx. 
##### Stack
Ruby, UDP, Bash
##### Objective
- Build an RC car that I can control from my computer.
##### Implementation
- Installed a physical antenna onto a Raspberry Pi 0W with RPiTx installed.
- Developed a UDP server to translate packets into radio signals.
- Created a client library in Ruby for sending datagrams to the server.
##### Impact & Conclusion
- The project was a success, albeit without sensors, the RC car doesn't know where it is.
- Unfortunately, in an attempt to add a rechargeable lithium ion battery, I set the car on fire while I was performing testing, and the spare RC car was a dud.