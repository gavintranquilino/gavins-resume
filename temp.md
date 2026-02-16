"- I have a non-linear log of my progress both physically in a notebook, as well as my more formal ""Gavin Tranquilino Winter 2026 Co-op Digital Notes"" canvas on Slack 

PREVIOUS WEEK
- Finished the safety training
- Gained access to lab
- Finished 1st iteration of the reactor wells
- Introduced to the peristaltic pumps 

12/1/2026
- Finished v2 of the reactor wells to fix the larger o-ring fit
- Found a USB to CAN device that would work for driving the persistaltic pumps. CAN preferred de to familiarity, as well as robustness in better error checking with 120ohm impedance on the lines
- Modelled a large o-ring tester to test the fit since the larger orings seem to protrude more than the smaller o-rings. This should be printed tomorrow
- Created a BambuStudio account since previous user settings were deleted.  
- Runze introduced a pain point that can be resolved, that there may be a better way to standardize cutting the substrate material just to easily print something with magnets embedded"	"- The V2 Reactor that was printed worked well with holding water with the orings
- Found longer screws for the reactor and sent to Yang
- Compiled a list of things to order for OTFlex
- Started working on CAD model of Runze's scissors guillotine attachment/mod to consistently cut the substrate"	"- Re-organized all the hardware storage in the lab
- Now it should be easier to find things and things are at least better organized than before
- Started a leakage test with the new reactor model
- Wired together Alan's MQTT tower of ESPs 
- Wired together the network switch as well
- Debugging some problems with the thermistor with Runze. The thermistor was swapped with a different thermistor on the newer tower of ESPs
    - The current thermistor is calibrated using nominal values, I suspect that the calibration of the thermistors must be conducted for a specific one so values can be changed on the ESP
    - It is an inverse relationship between temperature and resistance
- Assembled the prototype reactor with longer M4x0.7mm screws so that the reactor well can be fastened to the substrate better
"		"- started working on fixing the substrate plate holders for the substrate
- Found that machining a plate to hold the substrate pieces would be easier if the substrate circles were of a larger diameter. 5/8inch ~ 15.875mm should be better to increase the tolerances in the substrate plates
    - Enough to sandwich the plates in place

- Discussed upcoming tasks with Yang, talking about what needs to be ordered, etc
    - Started logging my tasks in this spreadsheet

- Started another leakage test with the V2 of the reactor wells. 
    - The overhangs of the print seem to cause the leakage since the overhangs have very large gaps

- Creating a V3 of the reactor wells
    - Trying varying angles of the wells instead of the cylidrical regions

- Started logging memory usage of the Win11 Desktop in the Lab
    - Trying to diagnose what causes large memory growth of the desktop over time
    - Setup Resource Manager and Task Manager to run over the weekend

"	"- Fixed the Memory issue on Win11 Desktop in Lab
    - Removed the 'Fast Startup' option on Windows 11
        - Suspected tht this caused the memory creep
    - Installed RAMMap (Empty Standby Lists and Empty Working Sets)
        - Emptying these memory values seems to free up memory at the start of the day

- Performed a leakage test on the new reactor well
    - New reactor well has no support material
    - This proved to be better as the inner support material in the well previously would create gaps on the overhanging layer
    - The overhanging layer is what causes the gaps and water leaking through the filament itself rather than the orings
    - After ~2 hours, the water level was constant and no visible leakages

- Started designing a new set of reactor wells with varied funnel angles
    - It would be funnelled portions up to a certain maximum diameter
    - This would allow for no interference between any two reactor wells
    - 18mm works great

- Started configuring the NETGEAR network switch
    - Connecting the ethernet ports to the correct locations
    - Attempting to create a connection between the switch and the ESP32s
"	"- Memory leak issue solved ?
    - Runze mentioned that he had been using the desktop computer in the Lab for hours last night and no issue with the desktop environment crashing
    - I have been monitoring the computer, and it seems to be stable even after 5 days of uptime with no restarts or shutdowns
    - I will have to see the results for when the desktop has refreshed again
    - However, it seems as of right now, the issue has been temporarily? resolved

- Helping Runze define the labware for the new reactor 
    - Take measurements from the Fusion360 assembly to define where each well is located
    - Discussed how to avoid the protruding screws that the pipette can collide with
        - Runze solved this by ensuring that the pipette tip travels above the screws at all times
    - Calibrated the LabWare .json to ensure that the pipette is in the center of the reactor
    - I determined the volume of each well for an upper bound as to how much solution can be poured into the wells
        - I found that I can split the holes into separate bodies to view the geometric properties of each hole 'body'
            - This was done by creating a rectangular box around the whole reactor, then this new body will be the target body
                - The reactor well is used as a tool onto the target box body and it is cut using the combine tool, effectively taking the inverse/negative of the part
    - To ensure that the height of the solution remains constant (to maintain the same surface area on the electrode), a height of 77% of the current height was chosen
        - The hole 'bodies' were cut to the specified height, then the volume was calculated using the properties
            - This volume is how much volume of solution to mix to maintain constant fill height

- Started taking measurements of the new hole punch
    - Gives a 1mm clearance for the substrate plate
    - It is not that noticable visibly, but should be an easier part to 3D print
    - Measurements were taken of the substrate itself, and the hole that was created on the nickel plate (negative)
        - This was compared with the same measurements taken by both hole punches on paper vs nickel

- Started overhauling the reactor design
    - With everything that I have learned about the reactor, what parts fit together, and context of the purpose of what we are trying to accomplish
        - I have started to make the following changes to the entire reactor well assembly for better future-proofing and fit with the new substrate cutter
    - Changes (that have been made) [I am hoping to print the overhauled reactor well tomorrow with a compilation of the best features that I can think of] 
        - realized previously, the orings fit depended on the angle of the wells, but now they are two separate features so that changing one variable is independent of the other
        - We can switch back to the shorter screws as I have created a pocket to hold the washer and nut that hold the entire reactor down in place
        - Parametrized values
            - There are a lot of values that are not parametrized that are now rather than being hardcoded. In the Fusion360 parameters, it has descriptions of what each measurement controls and purpose
            - Instead of measuring the outer angle of the reactor well funnel feature, instead it is more descriptive to use the angle of the inner angle of the funnel, as if it were the interior angle of an isoceles triangle
        - a locator pip feature was added to indicate which corner of the reactor corresponded to well ""A1"". I found that it would be useful to visibly show where A1 is located on the reactor
"	"- The 3 electrode system for OT2 broke
    - The wires for the system broke off
    - Runze mentioned that this happens often, so I tried securing the wires from the Biologic with heat shrink tubing and ferrules that were crimped
    - I noticed that the banana plugs that connect from the electrode tool had cut off at the wires themselves
        - This was probably due to repeated bending of the wires 
        - On top of crimping the ring terminal to the banana plug wire, I tied the wire and soldered it to the ring terminal to ensure it does not come undone
    - I soldered everything together with the solder and the flux I carry with me
    - I tested the connections between Biologic and the electrode and they are electrically connected

- Finished the reactor well design
    - Runze is currently testing a reactor
    - We also have another reactor ready to use, but 3 of the parts are ineffective
    - So I created another reactor with improvements on all fronts including using a new hole punch for the substrate
    - I updated the fit of the substrate plate to hold the larger substrate circles
        - This should also allow the reactor 'studs' with the o-rings to fit entirely through the substrate plates
    - The features that hold the o-ring are independent from the well features now
        - Previous iteration caused the o-rings to not be held snug The 5 bolts that hold the entire reactor assembly now do not interfere with openings of the wells and the nuts and washers rest flush against the top of the reactor 
    - I edited the substrate plate with another ""handle"" section with 2 more holes to fasten the other side of the two plates  
        - It would still fit in the substrate plate holder/tower for OTflex 
    - There's also a feature to note which well is ""A1"" so it is easier to orient the reactor"	"- Helping Runze setup multi-type-reactor
    - Using Fusion360 to obtain volume data of each well
    - Using the combine trick to take the negative of the 3D part
    - [height - (height*0.9)] is used to measure how much of the hole bodies to cut, which would leave 90% of the height
    - Using the new height, the properties were again analyzed to see how much volume of precursor was needed to fill the well up to 90%

- Took note of the Win11 Desktop memory issue
    - This was a separate issue caused during the middle of the program where there are constant logs over time, and after about 10 hours of runtime, the program is lagging behind in terms of log
          - The live terminal logging output displays a time a whole hour behind the actual realtime. 
          - Daniel came in to diagnose and he suspects that the reason was due to constant logs, and the terminal output is saved entirely, causing a delay with increased processing poewr
          - The next time we run, we should run not from a Jupyter notebook, but with python interpreter on its own without console logging

- Runze completed the experiment with the multi-type-reactor
    - We were going through the deposited material to analyze the results
    - There seemed to be a failure of the bottom plate which holds the bottom passive electrode
    - The plate under compression and exposure to leaking acids, has failed 
    - Runze labelled everything as interesting and noteworthy 
    - There was a problem as well with the electrode, but it has been resolved
    - I noted parts that failed and parts to redesign
         - All are updated in the 'overhaul v1' design milestone of the reactor in Fusion360
    - Leakages could also be due to the electrodeposition

- I started tinkering with the networking of the MQTT client tower
    - I noted what is physically connected (Layer 2) data link connection
        - The NETGEAR switch connects the router to the stack of ESP devices (each ESP32 device controls a part of the SDL)
        - The router connects the host (broker) computer, the OpenTrons, and the raspberry pi w camera to the same network
 
 "	  	"- Assemble new reactor
    - ""overhaul v1"" with the many new changes
    - had to reassemble the bottom plate with the electrodes as well since there was a new one
        - rewire all the scews together
        - attach the heat set inserts with the soldering iron to the 3D printed parts which were designed using McMasterCarr's specifications on Fusion360

- Conduct leakage test on assembled reactor
    - Ensured everything was dry beforehand
    - Screw everything in place with the correct washers and various machine screws and nuts
    - Ensure fastening in a star pattern as if it were a car tire to create a full seal underneat
    - Noticed some bending in the bottom plate in the same pattern as before
    - Added distilled water and waited 4 hours
        - Bubbles that were initially there, once removed, never grew and/or came back
              - There were large bubbles that might have accumulated from initial pour of water and trapped air underneath the o-ring

- Measure thermal strain of the machined alumina 
    - Sawed half of the alumina to test just one part
    - Measured before and after
        - Hole diameter
        - Width
        - Length
        - Thickness
    - Then calculated engineering strain based on these values and yielded <1% strain which makes it good to use in our part
    - Requested to order a 12x12inch square plate of the material
        - We can cut out 2 plates for the alumina. The real test would be once we add the nickel plates, would this sheet work?

- Helped Runze with the new reactor
    - Gave the necessary measurements from the Fusion360 CAD model to determine what volume of solution to use
        - I determined the volume of each well for an upper bound as to how much solution can be poured into the wells
        - I found that I can split the holes into separate bodies to view the geometric properties of each hole 'body'
            - This was done by creating a rectangular box around the whole reactor, then this new body will be the target body
                - The reactor well is used as a tool onto the target box body and it is cut using the combine tool, effectively taking the inverse/negative of the part
    - To ensure that the height of the solution remains constant (to maintain the same surface area on the electrode), a height of 77% of the current height was chosen
        - The hole 'bodies' were cut to the specified height, then the volume was calculated using the properties
            - This volume is how much volume of solution to mix to maintain constant fill height
"	"- Modelling reactor based off of DTU reactor
	    - Obtained the well geometry from their part in Fusion360
	    - Matched the following features:
		- 24.8 degree internal funnel angle
		- 25mm reactor height

- 2D drawings for machining alumina
	    - In the process of making 2D drawings of the substrate plates to machine out of alumina
	    - Same workflow on Fusion360 as SolidWorks, just a bit tricky to get the title block correct
	    - Features had to be omitted from the design to make easier to machine out of the alumina, such as the fillets and lip features
	    - I found that lofts and fillets would probably be too difficult to machine as well
	    - The alumina is very brittle and I found that it can chip very easily, so these fillets might be difficult to machine as well as very small detail parts

- Dovetail feature price increase discussion
	- The dovetail feature of the wells is tricky to machine
	- The manufacturers in Hong Kong say they have to machine a tool just to create the dovetail feature we need
	- This would cost another 100USD just to create
	- There was disucssion between me, Kelvin, and Yang with regards to what other alternative methods of holding the o-ring in place there were
		- Dovetail 
			- Upfront cost of 100USD just to machine 
		- Straight flange
			- Inner groove
				- There was also dicussion on whether the inner groove would create bubbles
					- There was initial fear in seating the oring with an inner groove that has a larger diameter than the inner diameter of the O-ring. But it was theorized that that feature created bubbles 
	- I also had an idea of using threads along the groove to help keep the o-ring in place
		- Acting almost like teeth to hold it in place
	- We were not sure if the dovetail feature alone would keep it from falling out vertically as well
		- Kelvin mentioned how with the HDPE parts, it would still fall out occasionally
			- So we weren't sure that the dovetail would solve the issue on its own
			- High density polyethylene
	- I thought if we increase the interference with the inner diameter of the groove and the o-ring
		- the orings would have to stretch, therefore increasing normal force, increasing friction between oring and reactor

- Learning about how a network switch works
	- Now that I was able to set aside some time for the MQTT tower, I started learning the networking for this workflow
	- Subnet
		- group of IP addresses allowed to communicate directly without a router
	- Switch
		- move ethernet frames using MAC address
		- Layer 2
	- Started learning CCNA and what a network is
"	"- Kelvin and I had a dicussion in the morning
	- He dropped off the reactor based off of DTU's well reactor design
	- We were also discussing oring holder features
		- flange with an interfering diameter?
			- they previously caused bubbles
		- dovetail
			- 100USD upfront just to machine a tool to make the dovetail
			- not even 100% sure if it will work on HDPE
		- both
			- we were thinking if we set the inner groove height to be less than the height of the outer portion of the groove
				- then it can allow bubbles to escape more easily
	- We ended up deciding to make all 3 designs and compare the prices if we send them off for quotes both to machine and 3D print
		- We can print PTFE 
			- More slippery though 
		- Since we can resin print as well, there was discussion on if we need to machine it
			- However SLA printing is not great at making flat surfaces
		- We can also print PTFE

- Sent more o-rings to order
	- We are running low on small and large orings
	- We have been using them as consumables
	- I was operating under the assumption that we get to reuse them

- Started watching a CCNA networking course
	- What is a Network?
	- What is a Switch?
	- These are videos that help get me up to speed

- I continued creating the template for the 2D drawing
	- I needed to follow Kelvin's title block and revision block 
	- I figured out how to create Drawing Templates in Fusion360
	- Now I can standardize all the 2D drawings to me"	"- Kelvin and I had a dicussion in the morning
	- He dropped off the reactor based off of DTU's well reactor design
	- We were also discussing oring holder features
		- flange with an interfering diameter?
			- they previously caused bubbles
		- dovetail
			- 100USD upfront just to machine a tool to make the dovetail
			- not even 100% sure if it will work on HDPE
		- both
			- we were thinking if we set the inner groove height to be less than the height of the outer portion of the groove
				- then it can allow bubbles to escape more easily
	- We ended up deciding to make all 3 designs and compare the prices if we send them off for quotes both to machine and 3D print
		- We can print PTFE 
			- More slippery though 
		- Since we can resin print as well, there was discussion on if we need to machine it
			- However SLA printing is not great at making flat surfaces
		- We can also print PTFE

- Sent more o-rings to order
	- We are running low on small and large orings
	- We have been using them as consumables
	- I was operating under the assumption that we get to reuse them

- Started watching a CCNA networking course
	- What is a Network?
	- What is a Switch?
	- These are videos that help get me up to speed

- I continued creating the template for the 2D drawing
	- I needed to follow Kelvin's title block and revision block 
	- I figured out how to create Drawing Templates in Fusion360
	- Now I can standardize all the 2D drawings to me"	"- Assembled the new reactor that compares my design vs Yang's design 
	- tapered well (funnel) vs straight cylinder and filetted design
	- compares the 60degree funnel against Yang's design with small and large o-ring types
	- fully assembled for Runze to use in an experiment later in the day
	- completed a volume analysis to determine how much solution to pour into each well for the top of the solution to cover the electrode the same amount

- Started working on the MQTT tower
	- Trying to flash the Arduino devices
		- Considering using Platform.io rather than Arduino IDE
		- Started documenting which libraries are in use
			- There is little documentation on what libraries are in use or the workflow required
	- Documentation is being conducted on the GitHub repository rather than a new document so everything is in 1 place

- Deciding on which o-ring holder to manufacture
	- Waiting on results of Runze's experiment to determine the best welll geometry
	- Explained pros and cons of each design to ultimately have Yang decide which type is most economical
	- Ended up creating two reactors, both using the large oring
		- When the experiment has concluded, models will be ready to be chosen for manufacturing
	- Ultimately the 60 degree design was used since it was easiest to clean and yield similar results to the filetted design "	"- Documenting the heater module
	- Taking pictures and comparing to the current OT2 tower
	- I searched all the Sparkfun components 
		- Listing all the components that are being used
	- I am using drawio files
		- Plaintext xml that contains the annotations on the images
		- Will be useful to expand, change, and document the current setup
			- Structural benefits of a wiring diagram, but also benefits of a high level picture that lists what is connected to what
	- The current setup is heavily utilizing the qwiic (quad wire i2c) by Sparkfun and their corresponding modules
		- The OT setup for this lab seems dependent on these products

- The Water pump for OT2 stopped working
	- Ethan had brought up an issue with OT2 setup where both the acid and the 'out' pumps both work, but the water does not
	- I carefully logged the current state of OT2 and disassembled the tower until I can reach the pump relays
	- I was shown a demonstration of when this issue arises
		- The MQTT broker correctly publishes to the pump topic to the correct pump
		- While messages are sent correctly, the relay does not indicate with the ""STAT"" LED that it has turned on
			- This indicated to me that the fault lies between the broker and the physical peristaltic pump
			- To double check this, I connected over serial (microusb) between laptop and ESP32 and watched serial monitor logs report that pump2 is not detected at address 0x19
				- The issue must lie in the indexing of the relays and microcontroller
	- The ESP32 indexes which relay is which based on a device address
		- By default, the address of a single relay is 0x18
			- However, to daisy-chain single relays, the address must be changed
			- There are two ways to change the address of a relay
				- With code, the EEPROM of the relay can be changed to reflect a different address
					- This would change its known address in persistent memory even after shutdown
				- Another method is to solder a jumper connection on the back of the board
					- Soldering the ""ADR"" pads together make the address 0x19.
		- I soldered the connection of the relay to stay as address 0x19
		- I suspect a fault overtime may have caused the EEPROM to reset on the relay causing the water pump to not be found on 0x19.
	- I tested the code again with the main desktop as the broker, and the water pump works
	- I reassembled the tower
	- Documented all the changes I made when this error occurred in the GitHub repo in the README for the heater device

"	"- Helping Ethan setup the DTU reactor labware
	- Conducted a volume analysis of the DTU reactors
	- How to assemble and disassemble the reactors
		- Which tools and nuts and bolts to use

- Documentation of the MQTT tower
	- Focusing on the heater block
		- Continue to use drawio for annotating images of the modules
	- Created wiring diagram of the ADC and thermistor perfboard
		- There is no PCB for them, just perforated board
			- No problem with it now that the wiring is documented
	- Deciding to use Arduino-cli rather than Arduino IDE
		- Easier to setup for any IDE environment
			- Still using the Arduino framework to keep previous code valid
				- Just much more generalized for instructions as well
		- Need to document how to use the CLI and download
	- Re-organizing the GitHub repository of the MQTT tower
	- There are no virtual environments to streamline requirements.txt and dependencies
		- I plan to make this repository more transferrable and usable by next co-op
"	"- Documentation cleanup
	- Moving all Arduino sketches to their respective sketch folder
		- Required for Arduino framework
	- Creating README.md for all folders
		- Will be better documentation for the next co-op students

- Learning Mosquitto/MQTT
	- Mosquitto broker
		- Open source MQTT broker
		- Uses publisher/subscriber model
			- The pubsub model matches that of ROS (robot operating system)
				- The topic definitions match that of ROS messages
		- Need to be installed on the host computer
	- MQTT
		- most common IoT messaging protocol
		- MQ Telemetry Transport

	- Setting up Mosquitto for Linux
		- reading through
			- mosquitto.conf
				- broker configuration for the host
			- aclfile.txt
				- topic-level perms
	
"	"- Mosquitto MQTT Broker config
	- The config folder in the repository 
		- Meant to be copied to system's
		- This can become a friction point since it must be configured different for each system
	- Mosquitto password
		- separate binary to create login credentials 
			- used by Mosquitto for each client
				- username
				- password
			- required for basic authentication between topics
				- protect topics and permissions for publishing to them
		- using the `mosquitto_passwd` to set passwords
	- Testing broker setup (2 terminals)
		- mosquitto_sub
		- mosquitto_pub
		- was able to see the pyctl/heartbeat topic to see if alive
	- Using ""controller"" as the password
	- Found which device interface is being used for ethernet
		- Set IPv4 address to static 192.168.0.100/24
	- Fixed bug where user and password on the firmware are mismatched

- Updating code to give heater module microcontroller and IP address
	- added ETH.config function to the firmware to set an IP address for themselves
	- alternative to needing a DHCP server to set it 
		- network service
	- found that while devices are on same subnet
		- host computer cannot ping microcontroller over the switch
		- but direct connection over ethernet, computer can connect to ESP32"	"- Fixing the netgear switch not being found by the computer
- Netgear GS308EP network switch is still not found
	- by the NETGEAR discovery tool
	- it is a **managed** network switch 
		- this could be causing this

- Continued documentation of the ultrasonic modules
	- Had to fix wiring between the shielded box and relays
		- too short
	- Using drawio to create annotated images
		- describe the connections and components for the module
	- One of the relays were discovered, but no ""click"" sound with the electromagnet
		- swapped out with a different single relay
		- so far the single qwiic relays seem to be the most common points of failure
			- electromagnet problem
			- EEPROM addressing problem
			- wrong IDs"	"- Finished debugging the MQTT tower
	- All components work
	- All connect over Ethernet
	- All interface with the network switch
	- 80% assembled
		- Components missing
			- thermistor
			- heater
			- pipes for pumps
			- ultrasonic module 
	- All microcontrollers connect to the MQTT broker 
		- All have been set with IP address on same subnet
		- All discover the host system IP
	- Power systems work
	- Safety functions work if no acknowledgement or timeout

- Replaced relay
	- One relay's electromagnet stopped working
		- no ""click"" sound on pump 3
			- replaced with another relay

- Documentation
	- Fixed and cleaned up documentation on the repo
	- Pictured and annotated all images with drawio
	- created a system architecture diagram 
		- all components used and connections for OTFLex
			- Started working on OTflex workflow
"	"- Teardown of previous ""puzzle"" style design of electronics
	- Pegboard with individual puzzle-piece style 3D-printed plates
		- Dovetail features
		- Cons:
			- Fixed to the pegboard using hot glue
			- Wires undocumented
			- Bad wiring routing
				- Wires travel from both sides of the peg board
			- Challenging to modify since it was permanently fixed
		- Pros:
			- Small footprint
				- Leaves a lot of space for the UFactory robot arm
			-  Easy to cover
				- Good for videos to hide away the electronics
				- Good to avoid collisions and tangling with the robot arm
			- Using Sparkfun modules
				- Easy to use
				- Use the Qwiic (quad-wire i2c) to connect everything
					- Standardized by the Sparkfun modules
			- Using various wiring joining techniques that are easy to replace
				- Wagos
				- Screw port terminals
				- Wire ferrules
					- Ones that are crimped
	- Took pictures of routing
		- Documentation for later
			- If for some reason someone would want to view again
		- Showing progression
		- Saved and stored components and consumables that can be reused as spare parts for later
			- DC Runze peristaltic pumps
			- Relays
			- Wagos
			- Qwiic wires
	
- Initial MQTT tower setup
	- Moved entire MQTT tower assembly into the space behind the UFactory Robot arm
	- Labelled most of the power lines
	- Labelled all ethernet cables into the switch
	- Basic cable management
	- Ensuring all functions work as intended
	- Connecting ultrasonic transducer to the relays"	"- Epoxy ultrasonic transducer
	- The ultrasonic transducer is used to clean the electrode
		- acid bath
		- water bath
	- It's a food container full of water
		- In the water bath, two beakers of acid and water
		- Food container used to vibrate the water bath
	- Using Gorilla glue epoxy
	- Marked ultrasonic transducer to the center of the container

- Removing raspberry pi from OTflex
	- separate raspberry pi for top-down view
	- raspberry pi 5 8gb
		- 128gb sd card

- setting up CAN transceiver devices for peristaltic pumps
	- the stepper motor driver for the pumps use
		- RS485
		- RS282
		- CAN bus
	- opting to use CAN bus for differential signalling and noise removal

- reviewing Opentrons instruction manual
	- how to setup the gantry
	- how to operate manually
	- how to safely setup a procedure"	"- Opentrons Flex cable management
	- labelling all wires into and out of power or communication ports
		- heater-shaker module
		- all ethernet connections
		- power cables into surge protected power bar
		- serial connections for the furnace
		- linear actuator wires
	- Using tape to label all wires with tags

- Discussing with Damir regarding Alumina 
	- Easy to machine
	- Hard to fasten to a table
	- the features are very brittle
		- cannot be forced into things with tight tolerances
	- bottom plate fits perfectly
	- top plate too tight tolerance onto the PEEK reactor
	- will be assembled soon
"	"- Camera Raspberry Pi setup
	- No easy WiFi access point connection
	- No internet over Ethernet either
	- Raspberry pi must initially be configured over SSH over local ethernet
	- need to flash the raspberry pi with headless OS 
		- can be SSH'ed into 
			- secure shell to access the camera device and exec commands
	- hostname 192.168.0.101
		- IPv4 static address to connect to over same subnet
		- so my laptop on 192.168.0.100 (over the ethernet device)
			- can ping the other device
		- was configured using the /etc/hostname first
			- did not work
			- this only changes the name of the pi
		- `rootfs/etc/NetworkManager/system_connection/eth0.nmconnection` 
			- this file was edited
			- to configure addresses 192.168.0.101/24 and to ignore ipv6 
			- this worked and it was persistent on that IP
			- I had to `sudo chmod 600 and chown root:root`
		- was able to ping over a direct connection over layer 1 ethernet
	- after able to SSH, raspi cannot download packages to enable the camera
		- `raspi-config` removed the camera setup
			- using Debian 13 (trixie)
		- raspi cannot download necessary python and camera packages
	
	- attempt to connect to WiFi
		- UofT
			- requires CA certificates to be downloaded
			- would be tricky
			- download onto host system, then ftp to the raspberry pi
				- SD card moves back and forth
			- downloaded CA certificates 
				- Edited /etc/wpa_supplicant/wpa_supplicant.conf
				- added my personal UofT credentials
					- still no connection
		- eduroam
	- learned difference between router and modem
		- the ISP (internet service provider) connects to a modem and provides it internet access
		- a router can relay WiFi from a mode
	
- Labelled all missing/next steps to get all individual parts of the OT-Flex workflow working on their own 
	- Isolated unit testing of hardware, electronics, firmware, and autonomous software"