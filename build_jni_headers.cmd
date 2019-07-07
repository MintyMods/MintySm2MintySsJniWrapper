ECHO OFF
CLS
ECHO ************************************************************************************
ECHO Building JNI Headers for Minty Sensor Monitor 2 Minty Sensor Server Integration
ECHO ************************************************************************************
ECHO -
SET BASE_DIR=E:\Development
SET MSM_HOME=%BASE_DIR%\MintySM
SET MSS_HOME=%BASE_DIR%\MintySensorServerGradle
SET MSM2MSS_HOME=%BASE_DIR%\MintySm2MintySsJniWrapper
ECHO MSM_HOME : %MSM_HOME%
ECHO MSS_HOME : %MSS_HOME%
ECHO MSM2MSS_HOME : %MSM2MSS_HOME%
ECHO -
%JDK_HOME%\bin\javah.exe -classpath "%MSS_HOME%\bin\main" -d "%MSM2MSS_HOME%\jni" info.mintymods.jni.MsmJniWrapper
ECHO -
ECHO Headers created from %MSS_HOME%\bin\main :-
DIR info_mintymods*.h
ECHO -
ECHO -
ECHO -
ECHO -
ECHO The C# assembly must be built to the same folder as java.exe 
ECHO The C++ assembly must be in the library path
ECHO      System.getProperty("java.library.path")
ECHO %java.library.path%
ECHO The architecture of both assemblies must match the architecture of the java.exe
ECHO - e.g. all built as 32bit or all built as 64bit
ECHO -



