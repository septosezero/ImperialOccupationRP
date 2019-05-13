
TEAM_ADMINONDUTY = DarkRP.createJob("Admin On Duty", {
    color = Color(161, 134, 134, 255),
    model = {"models/lt_c/sci_fi/humans/male_bill.mdl"},
    description = [[These are the Admins currently on duty in the server]],
    weapons = {},
    command = "AdminONduty",
    max = 10,
    salary = 99999,
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
]]
TEAM_GALCIT = DarkRP.createJob("Galactic Citizen", {
    color = Color(1, 79, 196, 255),
    model = {
    	"models/sirgibs/ragdolls/bms_citizens/male_citizen_player.mdl",
	"models/sirgibs/ragdolls/bms_citizens/male_rebel_player.mdl",
	"models/sirgibs/ragdolls/bms_citizens/male_refugee_player.mdl",
	"models/sirgibs/ragdolls/bms_citizens/female_citizen_player.mdl",
	"models/sirgibs/ragdolls/bms_citizens/female_rebel_player.mdl",
	"models/sirgibs/ragdolls/bms_citizens/female_refugee_player.mdl",
	"models/hcn/starwars/bf/abednedo/abednedo.mdl",
	"models/hcn/starwars/bf/abednedo/abednedo_2.mdl",
	"models/hcn/starwars/bf/abednedo/abednedo_3.mdl",
	"models/hcn/starwars/bf/abednedo/abednedo_4.mdl",
	"models/hcn/starwars/bf/abednedo/abednedo_5.mdl",
	"models/hcn/starwars/bf/aqualish/aqualish.mdl",
	"models/hcn/starwars/bf/aqualish/aqualish_2.mdl",
	"models/hcn/starwars/bf/aqualish/aqualish_3.mdl",
	"models/hcn/starwars/bf/aqualish/aqualish_4.mdl",
	"models/hcn/starwars/bf/aqualish/aqualish_5.mdl",
	"models/hcn/starwars/bf/ishitib/ishitib.mdl",
	"models/hcn/starwars/bf/ishitib/ishitib_2.mdl",
	"models/hcn/starwars/bf/ishitib/ishitib_3.mdl",
	"models/hcn/starwars/bf/ishitib/ishitib_4.mdl",
	"models/hcn/starwars/bf/ishitib/ishitib_5.mdl",
	"models/hcn/starwars/bf/quarren/quarren.mdl",
	"models/hcn/starwars/bf/quarren/quarren_2.mdl",
	"models/hcn/starwars/bf/quarren/quarren_3.mdl",
	"models/hcn/starwars/bf/quarren/quarren_4.mdl",
	"models/hcn/starwars/bf/quarren/quarren_5.mdl",
	"models/hcn/starwars/bf/rodian/rodian.mdl",
	"models/hcn/starwars/bf/rodian/rodian_2.mdl",
	"models/hcn/starwars/bf/rodian/rodian_3.mdl",
	"models/hcn/starwars/bf/rodian/rodian_4.mdl",
	"models/hcn/starwars/bf/rodian/rodian_5.mdl",
	"models/hcn/starwars/bf/sullustan/sullustan.mdl",
	"models/hcn/starwars/bf/sullustan/sullustan_2.mdl",
	"models/hcn/starwars/bf/sullustan/sullustan_3.mdl",
	"models/hcn/starwars/bf/sullustan/sullustan_4.mdl",
	"models/hcn/starwars/bf/sullustan/sullustan_5.mdl",
	"models/hcn/starwars/bf/zabrak/zabrak.mdl",
	"models/hcn/starwars/bf/zabrak/zabrak_2.mdl",
	"models/hcn/starwars/bf/zabrak/zabrak_3.mdl",
	"models/hcn/starwars/bf/zabrak/zabrak_4.mdl",
	"models/hcn/starwars/bf/zabrak/zabrak_5.mdl"
	},
    description = [[This is a Citizen of the Galaxy. Earn credits legally, or illegally, you decide!]],
    weapons = {},
    command = "GALCIT",
    max = 5,
    salary = 100,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Galactic Citizens",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(200)
        ply:SetHealth(200)
        ply:SetArmor(25)
    end
})

TEAM_DOCTOR = DarkRP.createJob("Doctor", {
    color = Color(1, 79, 196, 255),
    model = {
		"models/sirgibs/ragdolls/bms_citizens/male_medic_player.mdl",
	"models/sirgibs/ragdolls/bms_citizens/female_medic_player.mdl"
    },
    description = [[This is a Doctor, assigned with aiding the injured of the Galaxy.]],
    weapons = {},
    command = "DOCTOR",
    max = 20,
    salary = 100,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Galactic Citizens",
    medic = true,
    NeedToChangeFrom = TEAM_GALCIT,
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(200)
        ply:SetHealth(200)
        ply:SetArmor(25)
    end
})

TEAM_NEWSCASTER = DarkRP.createJob("Newscaster", {
	color = Color(1, 79, 196, 255),
	model = {"models/hcn/starwars/bf/human/human_male.mdl", "models/hcn/starwars/bf/human/human_male_2.mdl", "models/hcn/starwars/bf/human/human_male_3.mdl", "models/hcn/starwars/bf/human/human_male_4.mdl", "models/hcn/starwars/bf/human/human_male_5.mdl"}
	description = [[Spread propaganda, or the truth! You decide!]],
	weapons = {"keys", "pocket"},
	command = "NEWSCASTER",
	max = 1,
	salary = 250,
	admin = 0
	vote = true,
	hasLicense = false,
	candemote = true
	category = "Galactic Citizens",
	NeedToChangeFrom = TEAM_NEWSCASTER,
	PlayerSpawn = function(ply)
	    ply:SetMaxHealth(250)
	    ply:SetHealth(250)
		ply:SetArmor(25)
	end
})
--[[
						Imperial Army
]]
	TEAM_IMPARMYRECRUIT = DarkRP.createJob("Imperial Stormtrooper Recruit", {
	color = Color(1, 79, 196, 255),
	model = {"models/vaspyr/playermodels/enlisted_male_st/enlisted_male_st.mdl", "models/vaspyr/playermodels/enlisted_female_st/enlisted_female_st.mdl"},
	description = [[A Recruit in the Imperial Army.]],
	weapons = {"tfa_swch_dc17"},
	command = "IMPARMYRECRUIT",
	max = 10,
	salary = 200,
	admin = 0,
	vote = true,
	hasLicense = true,
	candemote = true,
	category = "Imperial Army",
	PlayerSpawn = function(ply)
		ply:SetMaxHealth(300)
		ply:SetHealth(300)
		ply:SetArmor(50)
	end
})

TEAM_IMPARMYSGT = DarkRP.createJob("Imperial Stormtrooper Sergeant", {
	color = Color(1, 80, 200, 255),
	model = {"models/vaspyr/playermodels/lieutenant_male_st/lieutenant_male_st.mdl", "models/vaspyr/playermodels/lieutenant_female_st/lieutenant_female_st.mdl"}
	description = [[A Sergeant in the Imperial Army.]],
	weapons = {}
	command = "IMPARMYSGT",
	max = 2,
	salary = 250,
	admin = 0,
	vote = true,
	hasLicense = true,
	candemote = true,
	category = "Imperial Army",
	PlayerSpawn = function(ply)
		ply:SetMaxHealth(325)
		ply:SetHealth(325)
		ply:SetArmor(50)
	end
})

TEAM_IMPARMYOFF = DarkRP.createJob("Imperial Army Officer", {
	color = Color(1, 80, 200, 255),
	model = {"models/vaspyr/playermodels/officer_male_st/officer_male_st.mdl", "models/vaspyr/playermodels/officer_female_st/officer_female_st.mdl", "models/vaspyr/playermodels/major_male_st/major_male_st.mdl", "models/vaspyr/playermodels/major_female_st/major_female_st.mdl"}
	description = [[An Officer in the Imperial Army.]],
	weapons = {}
	command = "IMPARMYOFF",
	max = 2,
	salary = 300,
	admin = 0,
	vote = true,
	hasLicense = true,
	candemote = true,
	category = "Imperial Army",
	PlayerSpawn = function(ply)
		ply:SetMaxHealth(350)
		ply:SetHealth(350)
		ply:SetArmor(25)
	end
})

TEAM_GALEMPEROR = DarkRP.createJob("Galactic Emperor", {
	color = Color(1, 80, 200, 255),
	model = {},
	description = [[The Leader of the Galaxy!]],
	weapons = {},
	command = "GALEMPEROR",
	max = 1,
	salary = 350,
	admin = 0,
	vote = true,
	hasLicense = true,
	candemote = true,
	category = "Imperial Army",
	PlayerSpawn = function(ply)
		ply:SetMaxHealth(350)
		ply:SetHealth(350)
		ply:SetArmor(25)
	end
})
--[[
					Rebel Alliance
]]

TEAM_REBELSOL = DarkRP.createJob("Rebel Soldier", {
	color = Color(1, 80, 200, 255),
	model = {"models/player/sgg/starwars/rebels/r_soldier_urban/male_01.mdl", "models/player/sgg/starwars/rebels/r_soldier_urban/male_02.mdl", "models/player/sgg/starwars/rebels/r_soldier_forest/male_01.mdl", "models/player/sgg/starwars/rebels/r_soldier_forest/male_02.mdl"},
	description = [[A Soldier in the Rebel Alliance.]],
	weapons = {},
	command = "REBELSOL",
	max = 5,
	salary = 200,
	admin = 0,
	vote = false,
	hasLicense = true,
	candemote = true,
	category = "Rebel Alliance",
	PlayerSpawn = function(ply)
		ply:SetMaxHealth(200)
		ply:SetHealth(200)
		ply:SetArmor(25)
	end
})

TEAM_REBELSGT = DarkRP.createJob("Rebel Sergeant", {
	color = Color(1, 80, 200, 255),
	model = {},
	description = [[A Sergeant of the Rebel Alliance.]],
	weapons = {},
	command = "REBELSGT",
	max = 5,
	salary = 250,
	admin = 0,
	vote = false,
	hasLicense = true,
	candemote = true,
	category = "Rebel Alliance",
	PlayerSpawn = function(ply)
		ply:SetMaxHealth(250)
		ply:SetHealth(250)
		ply:SetArmor(25)
	end
})

TEAM_REBELLEADER = DarkRP.createJob("Rebel Leader", {
	color = Color(1, 80, 200, 255),
	model = {},
	description = [[The Leader of the Rebel Alliance.]],
	weapons = {},
	command = "REBELLEADER",
	max = 1,
	salary = 300,
	admin = 0,
	vote = true,
	candemote = true,
	category = "Rebel Alliance",
	PlayerSpawn = function(ply)
		ply:SetMaxHealth(300)
		ply:SetHealth(300)
		ply:SetArmor(50)
	end
})


		
