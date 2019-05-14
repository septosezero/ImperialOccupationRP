--[[
                                                                                                                                                                                   
      _____          ____  _____   ______        _____    ____  _________________             _____           ____        ______  _______    ____  _____   ______         _____    
 ___|\     \    ____|\   \|\    \ |\     \   ___|\    \  |    |/                 \        ___|\    \     ____|\   \      |      \/       \  |    ||\    \ |\     \    ___|\    \   
|    |\     \  /    /\    \\\    \| \     \ |    |\    \ |    |\______     ______/       /    /\    \   /    /\    \    /          /\     \ |    | \\    \| \     \  /    /\    \  
|    | |     ||    |  |    |\|    \  \     ||    | |    ||    |   \( /    /  )/         |    |  |____| |    |  |    |  /     /\   / /\     ||    |  \|    \  \     ||    |  |____| 
|    | /_ _ / |    |__|    | |     \  |    ||    | |    ||    |    ' |   |   '          |    |    ____ |    |__|    | /     /\ \_/ / /    /||    |   |     \  |    ||    |    ____ 
|    |\    \  |    .--.    | |      \ |    ||    | |    ||    |      |   |              |    |   |    ||    .--.    ||     |  \|_|/ /    / ||    |   |      \ |    ||    |   |    |
|    | |    | |    |  |    | |    |\ \|    ||    | |    ||    |     /   //              |    |   |_,  ||    |  |    ||     |       |    |  ||    |   |    |\ \|    ||    |   |_,  |
|____|/____/| |____|  |____| |____||\_____/||____|/____/||____|    /___//               |\ ___\___/  /||____|  |____||\____\       |____|  /|____|   |____||\_____/||\ ___\___/  /|
|    /     || |    |  |    | |    |/ \|   |||    /    | ||    |   |`   |                | |   /____ / ||    |  |    || |    |      |    | / |    |   |    |/ \|   ||| |   /____ / |
|____|_____|/ |____|  |____| |____|   |___|/|____|____|/ |____|   |____|                 \|___|    | / |____|  |____| \|____|      |____|/  |____|   |____|   |___|/ \|___|    | / 
  \(    )/      \(      )/     \(       )/    \(    )/     \(       \(                     \( |____|/    \(      )/      \(          )/       \(       \(       )/     \( |____|/  
   '    '        '      '       '       '      '    '       '        '                      '   )/        '      '        '          '         '        '       '       '   )/     
                                                                                                '                                                                           '      
Talent Tree--]
-- detailed explanation can be found here
-- https://docs.google.com/document/d/1dqLyZUZ7HouEbp7okLxJaGqeHVtdl__f6j2S0pt2aPg/edit#heading=h.99dczrexpgrd

-- any values you don't need in createJobSkills or createTalent you should comment out or delete,
-- leaving them as 'health = '0'' or 'health = nil' makes your file longer and could use up extra ram needlessly

-- also, don't, forgot, the, dashes, after, each, variable, or, table.
-- You will, because I forgot them all the time!
-- Also check the console to see if you made typos or illegal values!
-- DarkRPG prints out invalid talent values and tells you how to fix them in the console!

-- adds these values to the player at Level 1 automatically.
DarkRPG.createJobSkills({
	team = {TEAM_EXAMPLE1, TEAM_EXAMPLE2},
	--team = TEAM_EXAMPLE

	-- player stats
	stats = {
		health = '1',
		movement = '1%',
		jump = '1%',

		armor = '1',
		evasion = '1%',
		reflect = '1%',

		salary = '1%',
		merchant = '1%',
		prison = '1%',

		-- damage resists
		resists = '1%', -- all incoming sources of damage 
		burn = '1%', -- burn, ignite, shock, dissolve
		endurance = '1%', -- poison, nerve, drowning, radiation, acid
		crush = '1%', -- crush, vehicle crush, falling damage, physgun
		explode = '1%', -- explosives, plasma, sonicboom

		-- applies to all weapons
		damage = '1%',
		critical = '1%',
		firerate = '1%',
		magazine = '1%',
		ammo = '1%',
	},

	-- applies to a specific set of weapons
	weaponcategory = {
		name = "Handguns", -- must match name you set in 'weapons.lua' EXACTLY
		stats = {
			damage = '1%',
			critical = '1%',
			firerate = '1%',
			magazine = '1%',
			ammo = '1%',
		},
	},
})

-- adds a talent button
DarkRPG.createTalent({
	name = "My_Example_Talent",
	team = {TEAM_EXAMPLE1, TEAM_EXAMPLE2},
	pos = {1,1}, -- x and y on the talent tree
	thumb = "myexample.png", -- must be in '/materials/darkrpg2/myexample.png'
	ranks = 9, -- ranks 1 through 9
	desc = "This is my example talent, delete the 'desc' line if you want the tooltip text generated automatically! ",

	-- player stats
	stats = {
		health = '1',
		movement = '1%',
		jump = '1%',

		armor = '1',
		evasion = '1%',
		reflect = '1%',

		salary = '1%',
		merchant = '1%',
		prison = '1%',

		-- damage resists
		resists = '1%', -- all incoming sources of damage 
		burn = '1%', -- burn, ignite, shock, dissolve
		endurance = '1%', -- poison, nerve, drowning, radiation, acid
		crush = '1%', -- crush, vehicle crush, falling damage, physgun
		explode = '1%', -- explosives, plasma, sonicboom

		-- applies to all weapons
		damage = '1%',
		critical = '1%',
		firerate = '1%',
		magazine = '1%',
		ammo = '1%',
	},

	-- applies to a specific set of weapons
	weaponcategory = {
		name = "MK9 Shotguns", -- must match name you set in 'weapons.lua' EXACTLY
		stats = {
			damage = '1%',
			critical = '1%',
			firerate = '1%',
			magazine = '1%',
			ammo = '1%',
		},
	},
})
-- [[
                                                                                                                                                       
  ,ad8888ba,               88                                   88                   ,ad8888ba,   88           88                                      
 d8"'    `"8b              88                            ,d     ""                  d8"'    `"8b  ""    ,d     ""                                      
d8'                        88                            88                        d8'                  88                                             
88             ,adPPYYba,  88  ,adPPYYba,   ,adPPYba,  MM88MMM  88   ,adPPYba,     88             88  MM88MMM  88  888888888   ,adPPYba,  8b,dPPYba,   
88      88888  ""     `Y8  88  ""     `Y8  a8"     ""    88     88  a8"     ""     88             88    88     88       a8P"  a8P_____88  88P'   `"8a  
Y8,        88  ,adPPPPP88  88  ,adPPPPP88  8b            88     88  8b             Y8,            88    88     88    ,d8P'    8PP"""""""  88       88  
 Y8a.    .a88  88,    ,88  88  88,    ,88  "8a,   ,aa    88,    88  "8a,   ,aa      Y8a.    .a8P  88    88,    88  ,d8"       "8b,   ,aa  88       88  
  `"Y88888P"   `"8bbdP"Y8  88  `"8bbdP"Y8   `"Ybbd8"'    "Y888  88   `"Ybbd8"'       `"Y8888Y"'   88    "Y888  88  888888888   `"Ybbd8"'  88       88  
                                                                                                                                                       
                                                                                                                                                       
]]--
DarkRPG.createJobSkills({
	team = {TEAM_GALCIT},
	stats = {
		health = '50',
		movement = '1%',
		jump = '1%',
		armor = '1',
		evasion = '1%',
		reflect = '1%',
		salary = '1%',
		merchant = '5%',
		prison = '1%',
		resists = '1%', -- all incoming sources of damage 
		burn = '1%', -- burn, ignite, shock, dissolve
		endurance = '1%', -- poison, nerve, drowning, radiation, acid
		crush = '1%', -- crush, vehicle crush, falling damage, physgun
		explode = '1%', -- explosives, plasma, sonicboom
		damage = '1%',
		critical = '1%',
		firerate = '1%',
		magazine = '1%',
		ammo = '1%',
	},
})

DarkRPG.createTalent({
	name = "Blaster Pistol Training",
	team = {TEAM_GALCIT},
	pos = {1,1}, -- x and y on the talent tree
	thumb = "BlasterPistols.png", -- must be in '/materials/darkrpg2/myexample.png'
	ranks = 9, -- ranks 1 through 9
	weaponcategory = {
			name = "Blaster Pistols",
			stats = {
				damage = '5%',
				firerate = '2%',
			},
	},
})
--[[								First Row
]]--
DarkRPG.createTalent({
	name = "Blaster Rifle Training",
	team = {TEAM_GALCIT},
	pos = {2,1},
	thumb = "BlasterRifles.png",
	ranks = 9,
	weaponcategory = {
		name = "Blaster Rifles",
		stats = {
			damage = '2%',
			firerate = '2%',
		},
	},
})

DarkRPG.createTalent({
	name = "Sniper Rifle Training",
	team = {TEAM_GALCIT},
	pos = {3,1},
	thumb = "SniperTraining.png",
	ranks = 9,
	weaponcategory = {
		name = "Sniper Rifles",
		stats = {
			damage = '2%',
			ammo = '1%',
			magazine = '2%',
		},
	},
})

DarkRPG.createTalent({
	name = "Heavy Weapons Training",
	team = {TEAM_GALCIT},
	pos = {4,1},
	thumb = "HeavyWeapons.png",
	ranks = 9,
	weaponcategory = {
		name = "Heavy Weapons",
		stats = {
			firerate = '2%',
			damage = '2%',
		},
	},
	weaponcategory = {
		name = "Sniper Rifles",
		stats = {
			damage = '-2%',
			ammo = '-1%',
		},
	},
})
--[[
                                                             
88888888ba                                       ad888888b,  
88      "8b                                     d8"     "88  
88      ,8P                                             a8P  
88aaaaaa8P'  ,adPPYba,   8b      db      d8          ,d8P"   
88""""88'   a8"     "8a  `8b    d88b    d8'        a8P"      
88    `8b   8b       d8   `8b  d8'`8b  d8'       a8P'        
88     `8b  "8a,   ,a8"    `8bd8'  `8bd8'       d8"          
88      `8b  `"YbbdP"'       YP      YP         88888888888  
--]]                                                             
                                                             
							     
							  
DarkRPG.createTalent({
	name = "Conditioning",
	team = {TEAM_GALCIT},
	pos = {1,2},
	thumb = "Conditioning.png",
	ranks = 5,
	stats = {
		movement = '3%',
		armor = '-2%',
	},
})

DarkRPG.createTalent({
	name = "Evasion",
	team = {TEAM_GALCIT},
	pos = {2,2},
	thumb = "escapeartist.png",
	ranks = 5,
	stats = {
		evasion = '3%',
		movement = '-1%',
		ammo = '-1%',
	},
})

DarkRPG.createTalent({
	name = "Steady Aim",
	team = {TEAM_GALCIT},
	pos = {3,2},
	thumb = "marksman.png",
	ranks = 5,
	stats = {
		critical = '5%',
		damage = '-2%',
		ammo = '2%',
	},
})

DarkRPG.createTalent({
	name = "Power Shot",
	team = {TEAM_GALCIT},
	pos = {4,2},
	thumb = "PowerShot.png",
	ranks = 5,
	stats = {
		damage = '5%',
		critical = '-2%',
		ammo = '-1%',
	},
})
--[[

                                                             
88888888ba                                       ad888888b,  
88      "8b                                     d8"     "88  
88      ,8P                                             a8P  
88aaaaaa8P'  ,adPPYba,   8b      db      d8          aad8"   
88""""88'   a8"     "8a  `8b    d88b    d8'          ""Y8,   
88    `8b   8b       d8   `8b  d8'`8b  d8'              "8b  
88     `8b  "8a,   ,a8"    `8bd8'  `8bd8'       Y8,     a88  
88      `8b  `"YbbdP"'       YP      YP          "Y888888P'  
                                                             
                                                             
--]]

DarkRPG.createTalent({
	name = "Blaster Pistol Expert",
	team = {TEAM_GALCIT},
	pos = {1,3},
	thumb = "BlasterPistols2.png",
	ranks = 9,
	weaponcategory = {
		name = "Blaster Pistols",
		stats = {
			damage = '2%',
			critical = '1%',
		},
	},
	weaponcategory = {
		name = "Blaster Rifles",
		stats = {
			damage = '-1%',
			critical = '-1%',
		},
	},
})

DarkRPG.createTalent({
	name = "Blaster Rifle Expert",
	team = {TEAM_GALCIT},
	pos = {2,3},
	thumb = "BlasterRifles2.png",
	ranks = 9,
	weaponcategory = {
		name = "Blaster Rifles",
		stats = {
			damage = '2%',
			critical = '1%',
		},
	},
	weaponcategory = {
		name = "Blaster Pistols",
		stats = {
			damage = '-1%',
			critical = '-1%',
		},
	},
})

DarkRPG.createTalent({
	name = "Sniper Rifles Expert",
	team = {TEAM_GALCIT},
	pos = {3,3},
	thumb = "assassin.png",
	ranks = 9,
	weaponcategory = {
		name = "Sniper Rifles",
		stats = {
			damage = '2%',
			magazine = '2%',
		},
	},
	weaponcategory = {
		name = "Heavy Weapons",
		stats = {
			damage = '-1%',
			firerate = '-2%',
		},
	},
})

DarkRPG.createTalent({
	name = "Heavy Weapons Expert",
	team = {TEAM_GALCIT},
	pos = {4,3},
	thumb = "HeavyWeapons2.png",
	ranks = 9,
	weaponcategory = {
		name = "Heavy Weapons",
		stats = {
			damage = '2%',
			firerate = '1%',
		},
	},
	weaponcategory = {
		name = "Sniper Rifles",
		stats = {
			damage = '-1%',
			magazine = '-2%',
		},
	},
})

--[[
                                                               
88888888ba                                              ,d8    
88      "8b                                           ,d888    
88      ,8P                                         ,d8" 88    
88aaaaaa8P'  ,adPPYba,   8b      db      d8       ,d8"   88    
88""""88'   a8"     "8a  `8b    d88b    d8'     ,d8"     88    
88    `8b   8b       d8   `8b  d8'`8b  d8'      8888888888888  
88     `8b  "8a,   ,a8"    `8bd8'  `8bd8'                88    
88      `8b  `"YbbdP"'       YP      YP                  88    
                                                               
                                                               
--]]

	
	
	
	
	
