# Minty Sensor Monitor 2 Minty Sensor Server JNI Wrapper

[MintySm2MintySsJniWrapper](https://github.com/MintyMods/MintySm2MintySsJniWrapper) is a simple C++ wrapper to allow Strings to be passed between JAVA and C# - This allows Minty Sensor Server written in JAVA to comunicate with Minty Sensor Monitor written in C# to comunicate with each other via JNI.
The communication is aceived by passing a request object formatted as JSON and returning a response object formatted as JSON.

## For more information see the following projects:-
   * Minty Sensor Server : [MSS](https://github.com/MintyMods/MintySS)
   * Minty Sensor Monitor : [MSM](https://github.com/MintyMods/MintySM)

## GOAL : Integrate JAVA with C# via C++

SENSORS <-?-> HWiNFO <-?-> MSM[C#:SHM] <--> MSS[JNI:JSON] <--> API[JAVA:REST/JSON/HTML]

This is done using the following stack:- 
	C# <-JSON-> JNI <--> JAVA <-HTTP(S)-> HTML5


## License
Minty Sensor Monitor is licensed under The MIT License (MIT). Which means that you can use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software. But you always need to state that MintyMods is the original author of this template.
