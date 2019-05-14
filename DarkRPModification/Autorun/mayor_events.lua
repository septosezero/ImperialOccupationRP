--[[─────────────────────────────────────────────────────────────────────────────────────────────────
─██████████████───██████████████─██████──────────██████─████████████───██████████─██████████████─
─██░░░░░░░░░░██───██░░░░░░░░░░██─██░░██████████──██░░██─██░░░░░░░░████─██░░░░░░██─██░░░░░░░░░░██─
─██░░██████░░██───██░░██████░░██─██░░░░░░░░░░██──██░░██─██░░████░░░░██─████░░████─██████░░██████─
─██░░██──██░░██───██░░██──██░░██─██░░██████░░██──██░░██─██░░██──██░░██───██░░██───────██░░██─────
─██░░██████░░████─██░░██████░░██─██░░██──██░░██──██░░██─██░░██──██░░██───██░░██───────██░░██─────
─██░░░░░░░░░░░░██─██░░░░░░░░░░██─██░░██──██░░██──██░░██─██░░██──██░░██───██░░██───────██░░██─────
─██░░████████░░██─██░░██████░░██─██░░██──██░░██──██░░██─██░░██──██░░██───██░░██───────██░░██─────
─██░░██────██░░██─██░░██──██░░██─██░░██──██░░██████░░██─██░░██──██░░██───██░░██───────██░░██─────
─██░░████████░░██─██░░██──██░░██─██░░██──██░░░░░░░░░░██─██░░████░░░░██─████░░████─────██░░██─────
─██░░░░░░░░░░░░██─██░░██──██░░██─██░░██──██████████░░██─██░░░░░░░░████─██░░░░░░██─────██░░██─────
─████████████████─██████──██████─██████──────────██████─████████████───██████████─────██████─────
─────────────────────────────────────────────────────────────────────────────────────────────────
───────────────────────────────────────────────────────────────────────────────────────────────────────
─██████████████─██████████████─██████──────────██████─██████████─██████──────────██████─██████████████─
─██░░░░░░░░░░██─██░░░░░░░░░░██─██░░██████████████░░██─██░░░░░░██─██░░██████████──██░░██─██░░░░░░░░░░██─
─██░░██████████─██░░██████░░██─██░░░░░░░░░░░░░░░░░░██─████░░████─██░░░░░░░░░░██──██░░██─██░░██████████─
─██░░██─────────██░░██──██░░██─██░░██████░░██████░░██───██░░██───██░░██████░░██──██░░██─██░░██─────────
─██░░██─────────██░░██████░░██─██░░██──██░░██──██░░██───██░░██───██░░██──██░░██──██░░██─██░░██─────────
─██░░██──██████─██░░░░░░░░░░██─██░░██──██░░██──██░░██───██░░██───██░░██──██░░██──██░░██─██░░██──██████─
─██░░██──██░░██─██░░██████░░██─██░░██──██████──██░░██───██░░██───██░░██──██░░██──██░░██─██░░██──██░░██─
─██░░██──██░░██─██░░██──██░░██─██░░██──────────██░░██───██░░██───██░░██──██░░██████░░██─██░░██──██░░██─
─██░░██████░░██─██░░██──██░░██─██░░██──────────██░░██─████░░████─██░░██──██░░░░░░░░░░██─██░░██████░░██─
─██░░░░░░░░░░██─██░░██──██░░██─██░░██──────────██░░██─██░░░░░░██─██░░██──██████████░░██─██░░░░░░░░░░██─
─██████████████─██████──██████─██████──────────██████─██████████─██████──────────██████─██████████████─
───────────────────────────────────────────────────────────────────────────────────────────────────────
Mayor Event Config File]]--
MAYOR_Events = {} 

MAYOR_Events["event_war"] = {
	Name = "Rebellion on Geonosis",
	Desc = "The Geonosians grow tired of the Oppression caused by the Imperial Forces. They have begun to flock to the abandoned Droid Factories, threatening to reactivate their prized warriors and throw the Galaxy into chaos once more if their demands are not met.",
	Choices = {
		{
			Name = "Refuse to bend to the will of the Geonosians.",
			Reward = false,
			EcoLose = 6,
			FailText = "The Geonosians are outraged by your refusal to compromise, and you must send some troops to quell the threat, costing the Galaxy a bit of funds.",
		},
		{
			Name = "Spread Propoganda",
			Reward = true,
			EcoReward = 0,
			Price = 300,
			RewardText = "The Geonosians discover that the leader of their supposed Rebellion was none other than a common thief, looking to profit from the chaos that could have ensued.",
		},
	},
}

MAYOR_Events["event_failure"] = {
	Name = "Mechanical Failure",
	Desc = "The power station on Tatooine is growing too old to continue working. It may or may not have an extra 5 years on it. We think the main reactor has some cooling problems and it needs new pipes. The backup reactor is too rusty to turn on.",
	Choices = {
		{
			Name = "Find replacement parts for the power station.",
			Reward = true, 
			Price = 500,
			RewardText = "The power station is running at a normal and safe rate. Looks like you have avoided problems.",
			EcoReward = 5,
		},
		{
			Name = "Leave it and hope for the best.",
			Reward = false,
			FailText = "The power station has been shut down for the safety of the planet. There is no power to Mos Eisely and the city's economy is falling because businesses can no longer run properly.",
			EcoLose = 10,
		},
	},
}

MAYOR_Events["event_investment"] = {
	Name = "Investment",
	Desc = "Sorosuub Tranportation has released a press conference, discussing how they are looking for investors in their latest project, the XJ-9 Landspeeder.",
	Choices = {
		{ 
			Name = "Deny the offer.",
			Reward = false,
			EcoLose = 4,
			FailText = "Sorosuub's latest invention takes off like a rocket! Missing out on the investment opportunity hurts your own economy, as some of your other investments take a hit.",
		},
		{
			Name = "Accept the offer.",
			Reward = true,
			XPReward = 750,
			MoneyReward = 2500,
			EcoReward = 7,
			Price = 550,
			RewardText = "Investing 550 credits yields a result of 2500 credits in profit! Lucky you caught them at the right time!",
			EventFunction =
				function()
					for k, v in pairs(player.GetAll()) do
						if v:IsValid() then
							v:addMoney( 2500 )
							DarkRP.notify( v, 1, 5, "[Emperor Event] The recent actions taken by the Emperor's wise investment planning has resulted in a bonus in your favor." )
						end
					end		
				end,
		},
	},
}

MAYOR_Events["event_atm"] = {
	Name = "Counterfeit Credits",
	Desc = "Some of your investigators have reported that a number of credits that have circulated throughout the Galaxy have been traced back to a counterfeiting operation they have recently busted. The Citizens are outraged, as many of them were paid by the Empire in these exact credits.",
	Choices = {
		{
			Name = "Give the citizens some compensation and hold a conference.",
			Reward = true,
			XPReward = 750,
			Price = 400,
			EcoReward = 6,
			RewardText = "The Economic Incentive your roll out seems extremely successful, and your Citizens rejoice due to your inspirational speech.",
			EventFunction = 
				function()
					for k, v in pairs(player.GetAll()) do
						if v:IsValid() then
							v:addMoney( 500 )
							DarkRP.notify( v, 1, 5, "[Emperor Event] Due to the recent actions taken by the Emperor, you all have received a bonus!" )
						end
					end	
				end,
		},
		{
			Reward = false,
			Name = "Do nothing and hope for the best.",
			EcoLose = 6,
			FailText = "The citizens are truly pissed off, and trade seems to halt to a standstill for some time. Even smugglers couldnt find work in this economy.",
		},
	},
}

MAYOR_Events["event_powersupply"] = {
	Name = "The Powerstation on Planet Ryloth has failed.",
	Desc = "The power on Ryloth is completely out due to a recent storm knocking out a transformer. The planet will have to pay $350 for repairs, or you can run on the backup generator for a while.",
	Choices = {
		{ 
			Name = "Run on the backup generator.",
			Reward = false,
			EcoLose = 7,
			FailText = "The Backup generator is so decrepit, that it almost explodes when the citizens attempt to fire it up. With much effort, and some rushed deliveries made by sources we can't name, the Planet makes it through the blackout.",
		},
		{
			Name = "Pay for the repairs.",
			Reward = true,
			EcoReward = 7,
			Price = 350,
			RewardText = "For just $350 you got the situation sorted, the entire planet is back and running with full power. Good Job!",
		},
	},
}

MAYOR_Events["event_recycle"] = {
	Name = "Recycling Campaign",
	Desc = "The Citizens of Nal Hutta are filthy! Waste has been improperly disposed of for so long that Junk is piling up in the streets and the smell is unbearable.",
	Choices = {
		{
			Name = "Create a Recycling Campaign.",
			Reward = false,
			Price = 600,
			EcoLose = 6,
			FailText = "This does not work as the citizens are beyond caring. Some even seem to purposefully disregard the campaign, and increase their trash output.",
		},
		{
			Name = "Hire Bith contractors to clean the streets.",
			Reward = true,
			MoneyReward = 1500,
			EcoReward = 4,
			RewardText = "The contractors you sent to clean the streets of Nal Hutta do such a fine job, that the Planet itself decides to send a gift of their appreciation, and hopefull keep their streets clean as ever.",
		},
	},
}

MAYOR_Events["event_mayorparade"] = {
	Name = "Parade Prediciment",
	Desc = "Boredom is the Galaxy's worst enemy. Your publicity advisors suggest that you carry out a parade of your choosing, in order to help stimulate the economy and the populace.",
	Choices = {
		{
			Name = "Do an extravagant Parade.",
			Price = 1000,
			EcoReward = 15,
			RewardText = "The parade was a huge success, tons of people arrived excited. Citizens are buying merchandise from the after parade shops, your economy is gonna be booming!",
			Reward = true,
		},
		{
			Name = "Hold a show of force.",
			Reward = false,
			EcoLose = 4,
			FailText = "No parade, no reward. It's that simple. Even worse, citizens are starting to discuss how much oppression they are willing to withstand from the Empire.",
		},
	},
}

MAYOR_Events["event_speech"] = {
	Name = "Public Speech",
	Desc = "The Citizens of Byss have been growing restless, due to their Emperor's long stay away from the planet. Your advisors strongly suggest that you organize a speech, to bring out the citizens more zealous side, and appese them in the process.",
	Choices = {
		{
			Name = "Organize a speech.",
			Reward = true,
			Price = 100,
			EcoReward = 8,
			RewardText = "Your actions have renewed the fervor of Byss, and a number flock to recruiting stations.",
		},
		{	Name = "Do not give a speech.",
			EcoLose = 5,
			Reward = false,
			FailText = "You refused to give a speech to your beloved citizens. The citizens have grown angry, and you'd better watch your next steps with them carefully.",

		},
	},
}
--------------------------------------------------------------- IN WORK -------------------------------------------------------
MAYOR_Events["event_citylights"] = {
	Name = "Planetary Power Consumption",
	Desc = "The planet of Korriban has increased it's power consumption exponentially. You will need to find an alternative, and quickly. Otherwise, the entire planet could send the Empire's coffers into the black.",
	Choices = {
		{
			Name = "Convert the powerplants of Korriban over to new hypermatter based reactors, allowing for energy efficiency.",
			Reward = true,
			Price = 400,
			EcoReward = 6,
			RewardText = "The new reactor is working excellently! The planet's power is so efficient, they are able to cut costs and send some credits back toward the rest of the galaxy.",
		},
		{
			Name = "A junker on Tatooine offers some cheap alternatives.",
			Reward = false,
			Price = 250,
			EcoLose = 2,
			FailText = "The junker clearly sold you defective parts. The planet was able to get their reactor back online, but some minor damage had to be repaired. Your economy suffers as a result.",
		},
	},
}

MAYOR_Events["event_tourism"] = {
	Name = "Boosting Tourism on Bimmisaari",
	Desc = "The planet of Bimm is pretty nice, but nothing new and exciting has been built to attract more tourists. There are a couple things you should consider doing to stay attractive.",
	Choices = {
		{
			Name = "Build a park.",
			Reward = true,
			Price = 300,
			RewardText = "People love your park and want to come by every weekend to have fun and relax. Even in the winter time, people still love to walk through what they call 'A Winter Wonderland!' Your actions have improved the economy.",
			EcoReward = 15,
			MoneyReward = 450,
		},
		{
			Name = "Open a tourism shop selling souvenirs",
			Reward = false,
			RewardText = "The shop was popular for the first two weeks but it eventually became deserted with only a few visitors a day. Luckily the shop made enough money, so your economy has not taken damage.",
			EcoReward = 0,
		},
	},
}

MAYOR_Events["event_draught"] = {
   Name = "Draught on Tatooine",
   Desc = "Due to extreme temperatures, the Planet of Tatooine is experiencing a record breaking draught. We need a solution, and fast. Even the moisture farmers can't seem to pull enough water together to water the crops.",
   Choices = {
	   {
		   Name = "Send a detachment of engineers to boost the hydropumps.",
		   Reward = true,
		   Price = 300,
		   EcoReward = 7,
		   RewardText = "Your decision to boost the current hydropumps results in enough water to last through this heatwave. Your economy boosts, and the people of Tatooine trust you more.",
	   },
	   
	   {
			Name = "Wait for natural rain.",
			Reward = true,
			EcoReward = 4,
			RewardText = "Even though you did not boost the pumps, natural rain comes in a few days and not a moment too soon. Your economy boosts as a result of you decision to save money.",
	   },
   },
}
 
MAYOR_Events["event_trafficaccident"] = {
   Name = "Pirate Blockade",
   Desc = "There's been a report of pirate raiders blockading a planet at random, which has caused some activists to push for more garrison troops and naval support, which will cost precious funds to comply.",
   Choices = {
	    {
			Name = "Initiate new safety regulations.",
			Reward = false,
			Price = 50,
			FailText = "Congratulations! Your new safety regulations are in place. But because it was only one incident, it was a wasted effort.",
			EcoLose = 1,
	    },
	    {
			Name = "Ignore the incident.",
			Reward = true,
		 	RewardText = "You didn't need to concern yourself - it was just one incident. Good thinking.",
	 		EcoReward = 1,
	    },
    },
}

MAYOR_Events["event_oilspil"] = {
	Name = "Oil Spill Crisis",
	Desc = "After a pipe underneath a river near your city exploded, fuel has been leaked and is now unavailable from gas station. Drivers have been left stranded and fuel is high in demand.",
	Choices = {
		{
			Name = "Find another supplier of fuel.",
			Price = 250,
			Reward = false,
			EcoLose = 2,
			FailText = "Due to you not having enough money, the government had to fork out a loan to attempt to fix the crisis, leaving you in debt.",
		},
		{
			Name = "Loan money from the bank to find a new supplier.",
			RewardText = "After the finding another supplier for the fuel, your towns car users have been saved!",
			Reward = true,
			EcoReward = 4,
		},
    },
}
