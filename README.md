# MATLAB-light-sensor
A student project for ENGR114 at Portland Community College. Uses MATLAB to read a light sensor connected to an Arudino over serial.

## Problem Statement
Our group will collect measurements from our developed light sensor to output and
display a Light vs Time plot.

## Hardware Setup

### Bill of Materials
|component|vendor|
|---|---|
|Arduino|[SparkFun RedBoard - Programmed with Arduino](https://www.sparkfun.com/products/13975)|
|Photo Sensor|[Mini Photocell](https://www.sparkfun.com/products/9088)|
|330 Ω resistor|[Resistor 330 Ohm 1/6th Watt PTH](https://www.sparkfun.com/products/8377)|
|10 kΩ resistor|[Resistor 10k Ohm 1/6th Watt PTH](https://www.sparkfun.com/products/8374)|
|Red LED|[LED - Basic Red 5mm](https://www.sparkfun.com/products/9590)|
|Breadboard|[Breadboard - Self-Adhesive (White)](https://www.sparkfun.com/products/12002)|
|Jumper wires|[Jumper Wires Premium 6" M/M Pack of 10](https://www.sparkfun.com/products/8431 )|
|Mini-B USB cable|[SparkFun USB Mini-B Cable - 6 Foot](https://www.sparkfun.com/products/11301)|
### Fritzing Diagram
![Alt Name](/doc/fritzing_light_senso.png)
### Connected Hardware
![Alt Name](/doc/light_sensor_hardware.png)

## Arduino Code
The [light_sensor.ino](light_sensor.ino) sketch was uploaded on the Arduino using the Arduino IDE

## MATLAB Code
The [light_sensor.m](light_sensor.m) script was run in MATLAB.

## Results
![Alt Name](/doc/light_sensor_results.png)

## Future Work
Other groups can add more LED lights to enhance the accuracy of data
observation and collection.

## License
GNU GENERAL PUBLIC LICENSE.
