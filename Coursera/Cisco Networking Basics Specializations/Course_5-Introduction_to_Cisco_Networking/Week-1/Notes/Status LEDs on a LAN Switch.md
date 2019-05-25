### Status LEDs

#### SYST LED:
- Green: The system is working properly.
- Amber: The system is receiving power but is not working properly.


#### RPS LED: The redundant power system (RPS) LED shows the RPS status.
- Green: The RPS is connected and ready to provide back-up power, if required.
- Blinking green: The RPS is connected but is unavailable because it is providing power to another device.
- Amber: The RPS is in standby mode or in a fault condition.
- Blinking amber: The internal power supply in a switch has failed, the RPS is providing power to the switch.


#### Mode Button:
- The mode button is used to select one of the port modes: status mode, duplex mode or speed mode. To select or change a mode, press the Mode button until the desired mode is highlighted. The purpose of the LED is dependent upon the port mode setting.

#### Port Status, or STAT, the Default Port Mode:
- Off: No link, or port was administratively shut down.
- Green: Link present.
- Blinking green: Port is transmitting or receiving data.
- Alternating green-amber: Link fault. Error frames can affect connectivity, and errors such as excessive collisions, CRC errors, and alignment and jabber errors are monitored for a link-fault indication.
- Amber: Port is blocked by Spanning Tree Protocol (STP) and is not forwarding data.
- Blinking amber: Port is blocked by STP but continues to transmit and receive inter-switch information messages.


#### Duplex LED: Port duplex mode, or DUPLX, is either full duplex or half duplex.
- Off: Port is operating in half duplex.
- Green: Port is operating in full duplex.


#### Speed LED: SPEED mode: The 10/100 ports, 10/100/1000 ports and SPF module ports operating speeds.
##### For 10/100 ports:
- Off: Port is operating at 10 Mbps
- Green: Port is operating at 100 Mbps.

##### For 10/100/1000 ports:
- Off: Port is operating at 10 Mbps
- Green: Port is operating at 100 Mbps.
- Blinking green: Port is operating at 1000 Mbps.

##### For SFP module ports:
- Off: Port is operating at 10 Mbps.
- Green: Port is operating at 100 Mbps.
- Blinking green: Port is operating at 1000 Mbps.