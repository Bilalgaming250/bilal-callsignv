Config = {}

Config.ExportName = 'qb-core' -- For Example if you qb-core is renamed to test-core then you can set it over here!
Config.Notify = 'qb-notify' -- Choose which notification you want [Currently Two Options - Default QBCore [qb-notify] or okokNotify]

-- Vehicle Mod Indexes at the End
Config.Num1ModIndex = 42 -- The Mod Index for the First callsign on top of your Vehicle
Config.Num2ModIndex = 44 -- The Mod Index for the Second callsign on top of your Vehicle
Config.Num3ModIndex = 45 -- The Mod Index for the Third callsign on top of your Vehicle

Config.UseMenu = true -- false = Uses command /callsignv [callsign], true = triggers a menu using qb-input when /callsignv command is executed

Config.CommandName = 'callsignv' -- The command's name that you want it ot be set as
Config.CommandDescription = 'Sets vehicle callsign /callsignv' -- The Commands description

Config.ProgressBar = true -- Do you want a progressbar when the callsign vehicle command is executed

Config.Jobs = {
    ['police'] = true,
	['ambulance'] = true,
}

Config.Text = {
    menuheader = 'Callsign Vehicle',
    menuSumbit = 'Set Callsign',
    menuInputPlaceHolder = 'Vehicle Callsign',
    wrongJob = 'You do not have the right job. Beep Boop..',
	invalidArg1 = 'Please Enter a Number',
	progressbar = 'Callsign is being Set',
	notInVeh = 'You are not in a Vehicle',
    CallsignUpdateTo = 'Your vehicle callsign has been updated to ', -- Make sure to keep a space at the end so the callsign number doesn't stick with the notification Text
}

--[[
## Vehicle Mod Indexes ##
Mod Index - Mod Description
0				Spoilers
1				Front Bumper
2				Rear Bumper
3				Side Skirt
4				Exhaust
5				Frame
6				Grille
7				Hood
8				Fender
9				Right Fender
10				Roof
11				Engine
12				Brakes
13				Transmission
14 				Horns
15				Suspension
16				Armor
18				Turbo
22				Xenon
23				Front Wheels
24 				(Only for Motorcycles)	Back Wheels
25				Plate holders
27				Trim Design
28				Ornaments
30				Dial Design
33				Steering Wheel
34				Shift Lever
35				Plaques
38				Hydraulics
40				Boost
55				Window Tint
48				Livery
53				Plate
66 				Colour 1
67 				Colour 2
]]
