# bilal-callsignv
Script for QBCore that lets you change the callsign on top of the vehicle.!

NOTE: For this to work your vehicles should have mods that changes the callsign of the vehicle

## Preview

[With qb-input](https://streamable.com/ulcikh)

[Without qb-input](https://streamable.com/y51g6a)


## Dependencies

 - [qb-core](https://github.com/qbcore-framework/qb-core)
 - [qb-input](https://github.com/qbcore-framework/qb-input)
 - Any Progressbar of your choice [Default](https://github.com/qbcore-framework/progressbar)
 
## Features

 - You can change the Mod Index of your callsign through the Config
 - Two methods for setting callsign throught the menu/input or through the command (You can change in the config.lua)
 - You can disable or enable a progressbar that runs after you run the command or click set callsign in the menu
 - Multiple Jobs that can use the command
 - Configurable command and command description

## Installation
### Manual
 - Download the script and put it in `[standalone]` directory or any directory of your wish in the resources folder
 - Add the following code to your server.cfg
 ```
 ensure bilal-callsignv
 ```
