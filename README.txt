A addon to ForgeGradle to auto-increment the version number when building.

IMPORTANT NOTE: This addon works only on Windows. Feel free to add support for other operating systems.
The verisoning system used is Semantic Versioning 2.0.0 (http://www.semver.org)

How to use
==========

------------
Installation
------------

1. Download this repo
2. Copy the files 
    - build.bat
    - build.gradle
    - config.xml
into your ForgeGradle directory. If you have changed your build.gradle, don't forget to backup it.

-------------   
Configuration
-------------

The only file you may edit is conifg.xml.

config.xml
----------------------------------------
<?xml version="1.0" encoding="utf-8"?>
<config>
	<modid>The name of my mod</modid>    The name of your mod. Will be the file name.   
    <mcversion>1.7.2</mcversion>         The version of Minecraft you are modding.
	<group>com.example.test</group>      Your main package.   
	<version>0.1.0</version>             Do not edit, unless your mod is in a further developement state.
	<isDev>false</isDev>                 Do not edit.
</config>
----------------------------------------


-----
Usage
-----

1. Open a command promt (Tip: Shift-Right-Click in your ForgeGradle directory and select "open command promt here")
2. build.bat can be run with various args
   - build dev
     This will build a dev-version. (1.0.0 -> 1.0.0-dev.1)
     If the previous build is a dev-version, the dev-version-number will be increased (1.0.0-dev.1 -> 1.0.0-dev.2)
     Use: Offer a unstable release for testing
   - build patch
     This will build a patch-version. (1.0.0 -> 1.0.1)
     Use: BugFixes/HotFixes
   - build minor
     This will build a minor-version. (1.0.0 -> 1.1.0)
     Use: increase when backwards-compatible changes have been made
   - build major
     This will build a major-version (1.0.0 -> 2.0.0)
     Use: increase when not backwards-compatibe changes have been made 
   
     
