-*- mode: org -*-

* This is another domotics project
    - it is based on Beaglebone Black
    - Its able to control up to 64 Inputs or Outputs in blocks of 4
    - I've developed a main board were is possible to plug up to 16
      4-inputs or 4-outputs boards (4 GPIOs). All of them are
      optocoupled.
      - I've already developed a 4-relays board and 4-transistors
        board wich can control lights intensity by PWM and also
        4-imputs board
    - The power board can be connected to a battery and detect a mains
      failure
    - It's already able to comunicate with Openhab, an android ios
      application
    - It's in production now since April 8th 2016 in my home
    - There is also 2 more slots with 3 and 4 analogs inputs, I'm
      planing to sense the battery level and natural light level.
    - Into one of the 16 slots I'm planing to connect some DS18B20 (up
      to 10 can be connected to one gpio) to sense the rooms
      temperatures.


* Project files
  - [[file:docs/files-strucure.org][structure]]

* License
  GNU GPLv3
# domotics
