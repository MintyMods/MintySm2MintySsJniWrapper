# MSM2MSS - Minty Sensor Monitor <-2-> Minty Sensor Server [JNI Wrapper]

[MintySm2MintySsJniWrapper](https://github.com/MintyMods/MintySm2MintySsJniWrapper) is a simple C++ wrapper to allow Strings to be passed between JAVA and C# - This allows Minty Sensor Server (written in JAVA) to comunicate with Minty Sensor Monitor (written in C#) via JNI (Java Native Interface).
The communication between the three languages is achieved by passing a MSMRequest object formatted as JSON and returning a MSMResponse object formatted as JSON.



## For more information see the following projects:-

	* Minty Sensor Server : [MSS](https://github.com/MintyMods/MintySensorServer)
	* Minty Sensor Monitor : [MSM](https://github.com/MintyMods/MintySensorMonitor)
	* Minty Sensor Monitor 2 Minty Sensor Server JNI Wrapper : [MSM2MSS](https://github.com/MintyMods/MSM2MSS)

## GOAL : Integrate JAVA with C# via C++ and JNI to comunicate via JSON formatted strings

SENSORS <-?-> HWiNFO <-SHM-> MSM[C#] <-JSON-> MSM2MSS[C++] <-JSON-> MSS[JNI] <-JSON-> API[JAVA:REST/JSON/HTML]

## Acknowledgments

  * HWiNFO - Martin Malik for his help with the sensor integration [HWiNFO](http://hwinfo.com)

### License
MSM2MSS is licensed under The [GNU General Public License version 3](https://www.gnu.org/licenses/gpl-3.0.en.html)
