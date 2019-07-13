# Minty Sensor Monitor 2 Minty Sensor Server JNI Wrapper

[MintySm2MintySsJniWrapper](https://github.com/MintyMods/MintySm2MintySsJniWrapper) is a required C++ wrapper to allow Minty Sensor Server (JAVA) to comunicate with Minty Sensor Monitor (C#) 

## GOAL : Integrate JAVA with C# 

## For more information see the following projects:-
   * HWiNFO : [HWiNFO](https://www.hwinfo.com) 
   * Minty Sensor Server : [MSS](https://github.com/MintyMods/MintySS)
   * Minty Sensor Monitor : [MSM](https://github.com/MintyMods/MintySM)

SENSORS <-?-> HWiNFO <-?-> MSM[C#:SHM] <--> MSS[JNI:JSON] <--> API[JAVA:REST/JSOM/HTML]

This is done using C# <-JSON-> JNI <--> JAVA <--> HTTP(S) <--> HTML5

## License
Minty Sensor Monitor is licensed under The MIT License (MIT). Which means that you can use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software. But you always need to state that MintyMods is the original author of this template.
