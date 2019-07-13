# MSM2MSS - Minty Sensor Monitor <-2-> Minty Sensor Server [JNI Wrapper]
[MSM2MSS](https://github.com/MintyMods/MintySm2MintySsJniWrapper) is a simple C++ wrapper to facilitate passing data via strings between JAVA and C# - This allows [Minty Sensor Server](https://github.com/MintyMods/MintySensorServer) (written in JAVA) to comunicate with [Minty Sensor Monitor](https://github.com/MintyMods/MintySensorMonitor) (written in C#) via the Java Native Interface (JNI).
The communication between the three different languages is achieved by passing MSMRequest object formatted as JSON and consuming MSMResponse object formatted as JSON.

## For more information see the following projects:-
* MSS : [Minty Sensor Server](https://github.com/MintyMods/MintySensorServer)
* MSM : [Minty Sensor Monitor](https://github.com/MintyMods/MintySensorMonitor)
* MSM2MSS : [Minty Sensor Monitor 2 Minty Sensor Server JNI Wrapper](https://github.com/MintyMods/MSM2MSS)

## Project Goal
Integrate JAVA with C# via C++ and JNI to comunicate via JSON formatted strings

## Full Project Stack
Raw Sensor Information 

<--?::?-->

Sensor Information Providers

<--*SHM::DLL*--> 

**MsmServiceInterface** 

<--*MSMRequest::MSMResponse*--> 

**MSM**[C#] 

<--*MSMRequest::MSMResponse*--> 

**MSM2MSS**[C++] 

<--*MSMRequest::MSMResponse*--> 

**MSS**[JNI] 

<--*MSMRequest::MSMResponse*--> 

**API**[JAVA:REST/JSON]

<--HTTP::HTML-->


```
public interface MsmServiceInterface {
	MsmMonitorResponse poll();
	void dispose();
}
```

## Acknowledgments
  * HWiNFO - Martin Malik for his help with the sensor integration [HWiNFO](http://hwinfo.com)

## License
MSM2MSS is licensed under The [GNU General Public License version 3](https://www.gnu.org/licenses/gpl-3.0.en.html)
