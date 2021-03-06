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

JOBS FILE]]--
TEAM_ADMINONDUTY = DarkRP.createJob("Admin On Duty", {
    color = Color(161, 134, 134, 255),
    model = {"models/lt_c/sci_fi/humans/male_bill.mdl"},
    description = [[These are the Admins currently on duty in the server]],
    weapons = {},
    command = "AdminONduty",
    max = 3,
    salary = 0,
    admin = 1,
    vote = false,
    hasLicense = true,
    candemote = false,
    category = "Staff",
	PlayerSpawn = function(ply)
		ply:SetMaxHealth(2000)
		ply:SetHealth(2000)
		ply:SetArmor(100)
	end
})

TEAM_ADMINONDUTY = DarkRP.createJob("SuperAdmin On Duty", {
    color = Color(161, 134, 134, 255),
    model = {"models/lt_c/sci_fi/humans/male_bill.mdl"},
    description = [[These are the SuperAdmins currently on duty in the server]],
    weapons = {},
    command = "SUPADMIN",
    max = 1,
    salary = 0,
    admin = 1,
    vote = false,
    hasLicense = true,
    candemote = false,
    category = "Staff",
	PlayerSpawn = function(ply)
		ply:SetMaxHealth(2000)
		ply:SetHealth(2000)
		ply:SetArmor(100)
	end
})
--[[
						Galactic Citizens
]]--
TEAM_GALCIT = DarkRP.createJob("Galactic Citizen", {
    color = Color(19, 31, 94, 255),
    model = {"models/hcn/starwars/bf/human/human_male.mdl", "models/hcn/starwars/bf/human/human_male_2.mdl", "models/hcn/starwars/bf/human/human_male_3.mdl", "models/hcn/starwars/bf/human/human_male_4.mdl", "models/hcn/starwars/bf/human/human_male_5.mdl", "models/hcn/starwars/bf/abednedo/abednedo.mdl", "models/hcn/starwars/bf/abednedo/abednedo_2.mdl", "models/hcn/starwars/bf/abednedo/abednedo_3.mdl", "models/hcn/starwars/bf/abednedo/abednedo_4.mdl", "models/hcn/starwars/bf/abednedo/abednedo_5.mdl", "models/hcn/starwars/bf/aqualish/aqualish.mdl", "models/hcn/starwars/bf/aqualish/aqualish_2.mdl", "models/hcn/starwars/bf/aqualish/aqualish_3.mdl", "models/hcn/starwars/bf/aqualish/aqualish_4.mdl", "models/hcn/starwars/bf/aqualish/aqualish_5.mdl", "models/hcn/starwars/bf/quarren/quarren.mdl", "models/hcn/starwars/bf/quarren/quarren_2.mdl", "models/hcn/starwars/bf/quarren/quarren_3.mdl", "models/hcn/starwars/bf/quarren/quarren_4.mdl", "models/hcn/starwars/bf/quarren/quarren_5.mdl"},
    description = [[This is a Citizen of the Galaxy. Earn credits legally, or illegally, you decide!]],
    weapons = {"climb_swep2", "keys", "pickaxe"},
    command = "GALCIT",
    max = 20,
    salary = 100,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Galactic Citizens",
})

TEAM_DOCTOR = DarkRP.createJob("Doctor", {
    color = Color(40, 158, 158, 255),
    model = {"models/hcn/starwars/bf/ishitib/ishitib.mdl", "models/hcn/starwars/bf/ishitib/ishitib_2.mdl", "models/hcn/starwars/bf/ishitib/ishitib_3.mdl", "models/hcn/starwars/bf/ishitib/ishitib_4.mdl", "models/hcn/starwars/bf/ishitib/ishitib_5.mdl", "models/hcn/starwars/bf/rodian/rodian.mdl", "models/hcn/starwars/bf/rodian/rodian_2.mdl", "models/hcn/starwars/bf/rodian/rodian_3.mdl", "models/hcn/starwars/bf/rodian/rodian_4.mdl", "models/hcn/starwars/bf/rodian/rodian_5.mdl"},
    description = [[This is a Doctor, assigned with aiding the injured of the Galaxy.]],
    weapons = {"weapon_defibrillator", "weapon_bactainjector", "weapon_bactanade"},
    command = "DOCTOR",
    max = 2,
    salary = 100,
    admin = 0,
    vote = true,
    hasLicense = false,
    candemote = true,
    category = "Galactic Citizens",
    medic = true,
    NeedToChangeFrom = TEAM_GALCIT,
})

--[[
						Imperial Army
]]
TEAM_IMPARMYRECRUIT = DarkRP.createJob("Imperial Stormtrooper Recruit", {
	color = Color(0, 0, 0, 255),
	model = {"models/vaspyr/playermodels/enlisted_male_st/enlisted_male_st.mdl", "models/vaspyr/playermodels/enlisted_female_st/enlisted_female_st.mdl"},
	description = [[A Recruit in the Imperial Army.]],
	weapons = {"bf2017_dl44", "arrest_stick", "door_ram", "unarrest_stick", "stunstick", "weaponchecker", "weapon_ticketbook"},
	command = "IMPARMYRECRUIT",
	max = 10,
	salary = 200,
	admin = 0,
	vote = true,
	hasLicense = true,
	candemote = true,
	category = "Imperial Army",
})

TEAM_IMPARMYSGT = DarkRP.createJob("Imperial Stormtrooper Sergeant", {
	color = Color(0, 0, 0, 255),
	model = {"models/vaspyr/playermodels/lieutenant_male_st/lieutenant_male_st.mdl", "models/vaspyr/playermodels/lieutenant_female_st/lieutenant_female_st.mdl"},
	description = [[A Sergeant in the Imperial Army.]],
	weapons = {"bf2017_dl44", "arrest_stick", "door_ram", "unarrest_stick", "stunstick", "weaponchecker", "weapon_ticketbook"},
	command = "IMPARMYSGT",
	max = 2,
	salary = 250,
	admin = 0,
	vote = true,
	hasLicense = true,
	candemote = true,
	category = "Imperial Army",
})

TEAM_IMPARMYOFF = DarkRP.createJob("Imperial Army Officer", {
	color = Color(0, 0, 0, 255),
	model = {"models/vaspyr/playermodels/officer_male_st/officer_male_st.mdl", "models/vaspyr/playermodels/officer_female_st/officer_female_st.mdl", "models/vaspyr/playermodels/major_male_st/major_male_st.mdl", "models/vaspyr/playermodels/major_female_st/major_female_st.mdl"},
	description = [[An Officer in the Imperial Army.]],
	weapons = {"bf2017_dl44", "arrest_stick", "door_ram", "unarrest_stick", "stunstick", "weaponchecker", "weapon_ticketbook"},
	command = "IMPARMYOFF",
	max = 2,
	salary = 300,
	admin = 0,
	vote = true,
	hasLicense = true,
	candemote = true,
	category = "Imperial Army",
})

--[[
					Rebel Alliance
]]

TEAM_REBELSOL = DarkRP.createJob("Rebel Soldier", {
	color = Color(255, 0, 0, 255),
	model = {"models/player/sgg/starwars/rebels/r_soldier_urban/male_01.mdl", "models/player/sgg/starwars/rebels/r_soldier_urban/male_02.mdl", "models/player/sgg/starwars/rebels/r_soldier_forest/male_01.mdl", "models/player/sgg/starwars/rebels/r_soldier_forest/male_02.mdl"},
	description = [[A Soldier in the Rebel Alliance.]],
	weapons = {"bf2017_defender", "lockpick", "weapon_ticketbook"},
	command = "REBELSOL",
	max = 5,
	salary = 200,
	admin = 0,
	vote = false,
	hasLicense = true,
	candemote = true,
	category = "Rebel Alliance",
})

TEAM_REBELSGT = DarkRP.createJob("Rebel Sergeant", {
	color = Color(255, 0, 0, 255),
	model = {"models/player/sgg/starwars/rebels/r_trooper_captain/male_01.mdl", "models/player/sgg/starwars/rebels/r_trooper_captain/male_02.mdl", "models/player/sgg/starwars/rebels/r_trooper_captain/male_03.mdl", "models/player/sgg/starwars/rebels/r_trooper_captain/male_04.mdl", "models/player/sgg/starwars/rebels/r_trooper_captain/male_05.mdl", "models/player/sgg/starwars/rebels/r_trooper_captain/male_06.mdl", "models/player/sgg/starwars/rebels/r_trooper_captain/male_07.mdl", "models/player/sgg/starwars/rebels/r_trooper_captain/male_08.mdl", "models/player/sgg/starwars/rebels/r_trooper_captain/male_09.mdl"},
	description = [[A Sergeant of the Rebel Alliance.]],
	weapons = {"bf2017_defender", "lockpick", "weapon_ticketbook"},
	command = "REBELSGT",
	max = 5,
	salary = 250,
	admin = 0,
	vote = false,
	hasLicense = true,
	candemote = true,
	category = "Rebel Alliance",
})

TEAM_HANSOLO = DarkRP.createJob("Han Solo", {
	color = Color(255, 0, 0, 255),
	model = {"models/player/han_solo.mdl"},
	description = [[A scruffy looking nerf-herder.]],
	weapons = {"bf2017_defender", "lockpick", "weapon_ticketbook"},
	command = "HANSOLO",
	max = 1,
	salary = 300,
	admin = 0,
	vote = true,
	candemote = true,
	category = "Rebel Alliance",
})
	--[[---------------------------------------------------------------------------
Define which team joining players spawn into and what team you change to if demoted
---------------------------------------------------------------------------]]
GAMEMODE.DefaultTeam = TEAM_GALCIT
--[[---------------------------------------------------------------------------
Define which teams belong to civil protection
Civil protection can set warrants, make people wanted and do some other police related things
---------------------------------------------------------------------------]]
GAMEMODE.CivilProtection = {
		[TEAM_IMPARMYRECRUIT] = true,
		[TEAM_IMPARMYSGT] = true,
		[TEAM_IMPARMYOFF] = true,
}
--[[---------------------------------------------------------------------------
Jobs that are hitmen (enables the hitman menu)
---------------------------------------------------------------------------]]
--DarkRP.addHitmanTeam()

--[[ CITIZEN MODELS BROKEDOWN
model = {"models/hcn/starwars/bf/human/human_male.mdl", "models/hcn/starwars/bf/human/human_male_2.mdl", "models/hcn/starwars/bf/human/human_male_3.mdl",
"models/hcn/starwars/bf/human/human_male_4.mdl", "models/hcn/starwars/bf/human/human_male_5.mdl",

"models/hcn/starwars/bf/abednedo/abednedo.mdl", "models/hcn/starwars/bf/abednedo/abednedo_2.mdl", "models/hcn/starwars/bf/abednedo/abednedo_3.mdl",
"models/hcn/starwars/bf/abednedo/abednedo_4.mdl", "models/hcn/starwars/bf/abednedo/abednedo_5.mdl",

"models/hcn/starwars/bf/aqualish/aqualish.mdl", "models/hcn/starwars/bf/aqualish/aqualish_2.mdl", "models/hcn/starwars/bf/aqualish/aqualish_3.mdl",
"models/hcn/starwars/bf/aqualish/aqualish_4.mdl", "models/hcn/starwars/bf/aqualish/aqualish_5.mdl",


"models/hcn/starwars/bf/ishitib/ishitib.mdl", "models/hcn/starwars/bf/ishitib/ishitib_2.mdl", "models/hcn/starwars/bf/ishitib/ishitib_3.mdl",
"models/hcn/starwars/bf/ishitib/ishitib_4.mdl", "models/hcn/starwars/bf/ishitib/ishitib_5.mdl",

"models/hcn/starwars/bf/quarren/quarren.mdl", "models/hcn/starwars/bf/quarren/quarren_2.mdl", "models/hcn/starwars/bf/quarren/quarren_3.mdl",
"models/hcn/starwars/bf/quarren/quarren_4.mdl", "models/hcn/starwars/bf/quarren/quarren_5.mdl",

"models/hcn/starwars/bf/rodian/rodian.mdl", "models/hcn/starwars/bf/rodian/rodian_2.mdl", "models/hcn/starwars/bf/rodian/rodian_3.mdl",
"models/hcn/starwars/bf/rodian/rodian_4.mdl", "models/hcn/starwars/bf/rodian/rodian_5.mdl",

"models/hcn/starwars/bf/sullustan/sullustan.mdl", "models/hcn/starwars/bf/sullustan/sullustan_2.mdl", "models/hcn/starwars/bf/sullustan/sullustan_3.mdl",
 "models/hcn/starwars/bf/sullustan/sullustan_4.mdl", "models/hcn/starwars/bf/sullustan/sullustan_5.mdl",

"models/hcn/starwars/bf/zabrak/zabrak.mdl", "models/hcn/starwars/bf/zabrak/zabrak_2.mdl", "models/hcn/starwars/bf/zabrak/zabrak_3.mdl", "models/hcn/starwars/bf/zabrak/zabrak_4.mdl", "models/hcn/starwars/bf/zabrak/zabrak_5.mdl"},
    d
--]]

