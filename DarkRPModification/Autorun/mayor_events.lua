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
	Desc = "Due to the lack of events in your city, your advisory staff has recommended you run an event. In this case, it's a parade. The parade is expected to cost a mere 150 dollars, but the choice rests on you.",
	Choices = {
		{
			Name = "Do the parade.",
			Price = 150,
			EcoReward = 10,
			RewardText = "The parade was a huge success, tons of people arrived excited. Citizens are buying merchandise from the after parade shops, your economy is gonna be booming!",
			Reward = true,
		},
		{
			Name = "Don't throw the parade.",
			Reward = false,
			EcoLose = 4,
			FailText = "No parade, no reward. It's that simple. Even worse, citizens are starting to dislike you due to how lazy you have been.",
		},
	},
}

MAYOR_Events["event_speech"] = {
	Name = "Public Speech",
	Desc = "Your advisors are worried that the citizens are unsatisfied, they want you to give a speech regarding the conditions of the city. Citizens have been wondering about the economy and how city affairs are going. If you do not choose to organize the speech, then citizens are bound to become angry. This will hurt the economy.",
	Choices = {
		{
			Name = "Organize a speech.",
			Reward = true,
			Price = 100,
			EcoReward = 8,
			RewardText = "Citizens respected what you had to say, and the support for the city has increased.",
		},
		{	Name = "Do not give a speech.",
			EcoLose = 5,
			Reward = false,
			FailText = "You refused to give a speech to your community. Your citizens are angry at you, and you better watch your back before anyone gets any good ideas.",

		},
	},
}
 
MAYOR_Events["event_citylights"] = {
	Name = "City Power Consumption",
	Desc = "Your advisory council has noticed that the lights in your city consume an excess of power. Your advisory council and the national power grid want to help you get rid of these high consumption bulbs and replace them with green energy efficient bulbs!",
	Choices = {
		{
			Name = "Back the great cause.",
			Reward = true,
			Price = 400,
			EcoReward = 6,
			RewardText = "The latest electric bill states that power consumption is now at an all time low, meaning more money can go towards the community!",
		},
		{
			Name = "I'm happy with what I have.",
			Reward = false,
			EcoLose = 2,
			FailText = "Unfourtunatly, because you didnt replace the bulbs, power consumption kept at the same rate, causing more money to be spent on it.",
		},
	},
}

MAYOR_Events["event_tourism"] = {
	Name = "Boosting Tourism",
	Desc = "The town is pretty nice, but nothing new and exciting has been built to attract more tourists. There are a couple things you should consider doing to stay attractive.",
	Choices = {
		{
			Name = "Build a park.",
			Reward = true,
			Price = 300,
			RewardText = "People love your park and want to come by every weekend to have fun and relax. Even in the winter time, people still love to walk through what they call 'A Winter Wonderland!' You have received $450 dollars in donations for the city.",
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
   Name = "Serious Drought",
   Desc = "Due to a recent heatwave, the soil is so dry that no crops will grow. If this dry soil problem isn't solved, the local farmers will no longer be able to bring in money by selling their products.",
   Choices = {
	   {
		   Name = "Install huge pumps.",
		   Reward = true,
		   Price = 300,
		   EcoReward = 7,
		   RewardText = "You have chosen to install huge pumps that will pump water out of the sea, get all the salt out and then pump the clean water in to the fields. The local farmers greatly appreciate your work.",
	   },
	   
	   {
			Name = "Wait for natural rain.",
			Reward = true,
			EcoReward = 4,
			RewardText = "You have chosen to do nothing. Luckily, it rained a few days after this decision. The crops are saved.",
	   },
   },
}
 
MAYOR_Events["event_trafficaccident"] = {
   Name = "Traffic Accident",
   Desc = "There's been a large traffic accident just outside of town. Some activists are calling for strict new safety regulations, which would cost precious funds to implement.",
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
