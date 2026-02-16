**Projects Summary**

This document condenses the major projects, accomplishments, and tools you've used based on your lab log. Use these bullets to craft resume points and expand during interviews.

**Reactor Design & Fabrication:**
- **Scope:** Iterative design (V1→V3, overhaul v1), parametric Fusion360 models, oring seating features, pockets for washers/nuts, locator feature for A1, volume analysis for reagent fill levels.
- **Tools:** Fusion360, BambuStudio (slicer/printing), 3D printers (FDM/SLA), McMasterCarr spec references.

**Leakage & Mechanical Testing:**
- **Scope:** Leakage tests on printed wells, overhang/support optimization, thermal strain tests on alumina, measuring and re-machining substrate plate holders.
- **Tools:** 3D printing, calipers/measurement tools, bench testing, basic mechanical fixtures.

**Substrate Tooling & Hole Punching:**
- **Scope:** Designed substrate plate holders and hole punches; adjusted substrate circle diameter (5/8" ≈ 15.875 mm) to improve fit and machining tolerances.
- **Tools:** Fusion360, 2D drawings for CNC/machining, alumina machining coordination.

**MQTT Tower, Firmware & Device Networking:**
- **Scope:** Built and debugged an MQTT tower of ESP32 devices (heater, pumps, ADC/thermistor perfboard). Configured Mosquitto broker, static IP assignment, ETH.config in firmware, addressed relay addressing and EEPROM issues, documented wiring and firmware.
- **Tools/Software:** ESP32 (Arduino framework), Arduino IDE/Arduino-cli, PlatformIO, Mosquitto (mosquitto_pub/sub, mosquitto_passwd), GitHub, draw.io (diagrams), serial monitor.

**Peristaltic Pumps & CAN/Serial Interfaces:**
- **Scope:** Selected USB-to-CAN device, preferred CAN for robustness, configured stepper drivers and relay addressing, soldered/jumpered relay ADR pads, replaced faulty relays.
- **Tools:** CAN transceivers, soldering iron, multimeter, pump hardware.

**OT-Flex / Opentrons Integration:**
- **Scope:** Defined labware from Fusion360, calibrated labware .json, ensured pipette clearance vs screws, integrated reactor into OT-Flex workflow and measured well volumes for consistent electrode coverage.
- **Tools:** Fusion360, OpenTrons (OT2/OT-Flex), JSON labware editing.

**Networking & Infrastructure:**
- **Scope:** Configured NETGEAR managed switch, set static IPs for devices, learned Layer-2 networking concepts and CCNA fundamentals, troubleshot discovery and connectivity issues.
- **Tools:** NETGEAR switch management tools, Linux networking, IP/static addressing, Wireshark-style troubleshooting principles.

**Raspberry Pi Camera & System Setup:**
- **Scope:** Headless Raspberry Pi setup, static IP assignment, SSH access, troubleshooting package/camera installation and Wi‑Fi certificate issues.
- **Tools:** Raspberry Pi OS, editing NetworkManager/system_connection files, SSH.

**Ultrasonic & Heater Modules:**
- **Scope:** Epoxied ultrasonic transducer for electrode cleaning, documented heater module wiring and ADC/thermistor perfboard, integrated qwiic SparkFun modules.
- **Tools:** Draw.io, SparkFun Qwiic modules, relays, perfboard wiring.

**Documentation, Repo Organization & Onboarding:**
- **Scope:** Reorganized GitHub repo, standardized README files, moved Arduino sketches to correct folders, created drawing templates, documented troubleshooting steps and wiring diagrams for future co-ops.
- **Tools:** GitHub, Markdown, draw.io, Fusion360 drawing templates, Slack notes.

**Materials & Machining Coordination:**
- **Scope:** Measured and tested alumina thermal strain (<1% strain), created 2D machining drawings, evaluated dovetail vs flange vs threaded groove for oring retention, cost/quote tradeoffs.
- **Tools:** Fusion360 (2D drawings), machining vendors, measurement tools.

**Electrical Troubleshooting & Instrumentation:**
- **Scope:** Repaired electrode wiring (crimping, ferrules, solder), debugged thermistor calibration on ESPs, solved Win11 memory/logging issue (RAMMap, Fast Startup), validated Biologic-electrode electrical connections.
- **Tools:** Soldering tools, ferrules, RAMMap, Task Manager/Resource Monitor, multimeter.

**Skills & Techniques (quick list):**
- **CAD & Design:** Fusion360 parametric modelling, drawing templates, volume/properties analysis.
- **Firmware & Embedded:** ESP32 firmware (Arduino), static IP/ETH.config, serial debugging.
- **Networking:** Mosquitto MQTT setup, switch config, static IPs, CAN bus selection.
- **Fabrication:** 3D printing (iterative prototyping), CNC/2D drawings for alumina, thermal strain measurement.
- **Electronics:** Relay addressing, soldering/crimping, perfboard wiring, ADC/thermistor calibration.
- **Documentation:** README, wiring diagrams (draw.io), GitHub repo cleanup, experimental logs.

**Tools & Software (consolidated):**
- **CAD / Design:** Fusion360, SolidWorks references, BambuStudio.
- **Firmware / Embedded:** Arduino IDE, Arduino-cli, PlatformIO, ESP32 toolchain.
- **Networking / Messaging:** Mosquitto MQTT, mosquitto_pub/sub, mosquitto_passwd.
- **Diagrams & Docs:** draw.io, Markdown, GitHub, Slack.
- **OS / Debugging:** Windows 11 (Task Manager, Resource Monitor, RAMMap), Linux networking, Raspberry Pi OS.
- **Hardware / Misc:** Qwiic SparkFun ecosystem, USB-to-CAN adapters, NETGEAR managed switch, peristaltic pumps, ultrasonic transducer, Biologic electrodes.

---

If you want, I can now turn each project bullet into 2–3 resume-ready lines with metrics/impact and action verbs. See the file: [PROJECTS.md](PROJECTS.md)
