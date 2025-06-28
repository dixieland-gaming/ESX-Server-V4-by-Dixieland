return {
	['testburger'] = {
		label = 'Test Burger',
		weight = 220,
		degrade = 60,
		client = {
			image = 'burger_chicken.png',
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			export = 'ox_inventory_examples.testburger'
		},
		server = {
			export = 'ox_inventory_examples.testburger',
			test = 'what an amazingly delicious burger, amirite?'
		},
		buttons = {
			{
				label = 'Lick it',
				action = function(slot)
					print('You licked the burger')
				end
			},
			{
				label = 'Squeeze it',
				action = function(slot)
					print('You squeezed the burger :(')
				end
			},
			{
				label = 'What do you call a vegan burger?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('A misteak.')
				end
			},
			{
				label = 'What do frogs like to eat with their hamburgers?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('French flies.')
				end
			},
			{
				label = 'Why were the burger and fries running?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('Because they\'re fast food.')
				end
			}
		},
		consume = 0.3
	},

	['bandage'] = {
		label = 'Bandage',
		weight = 115,
		client = {
			anim = { dict = 'missheistdockssetup1clipboard@idle_a', clip = 'idle_a', flag = 49 },
			prop = { model = `prop_rolled_sock_02`, pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
			disable = { move = true, car = true, combat = true },
			usetime = 2500,
		}
	},

	['black_money'] = {
		label = 'Dirty Money',
	},

	['burger'] = {
		label = 'Burger',
		weight = 220,
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			notification = 'You ate a delicious burger'
		},
	},

	['sprunk'] = {
		label = 'Sprunk',
		weight = 350,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_can_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You quenched your thirst with a sprunk'
		}
	},

	['parachute'] = {
		label = 'Parachute',
		weight = 8000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 1500
		}
	},

	['garbage'] = {
		label = 'Garbage',
	},

	['paperbag'] = {
		label = 'Paper Bag',
		weight = 1,
		stack = false,
		close = false,
		consume = 0
	},

	['identification'] = {
		label = 'Identification',
		client = {
			image = 'card_id.png'
		}
	},

	['panties'] = {
		label = 'Knickers',
		weight = 10,
		consume = 0,
		client = {
			status = { thirst = -100000, stress = -25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_cs_panties_02`, pos = vec3(0.03, 0.0, 0.02), rot = vec3(0.0, -13.5, -1.5) },
			usetime = 2500,
		}
	},

	['lockpick'] = {
		label = 'Lockpick',
		weight = 160,
	},

	['phone'] = {
		label = 'Phone',
		weight = 190,
		stack = false,
		consume = 0,
		client = {
			add = function(total)
				if total > 0 then
					pcall(function() return exports.npwd:setPhoneDisabled(false) end)
				end
			end,

			remove = function(total)
				if total < 1 then
					pcall(function() return exports.npwd:setPhoneDisabled(true) end)
				end
			end
		}
	},

	['money'] = {
		label = 'Money',
	},

	['mustard'] = {
		label = 'Mustard',
		weight = 500,
		client = {
			status = { hunger = 25000, thirst = 25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_food_mustard`, pos = vec3(0.01, 0.0, -0.07), rot = vec3(1.0, 1.0, -1.5) },
			usetime = 2500,
			notification = 'You.. drank mustard'
		}
	},

	['water'] = {
		label = 'Water',
		weight = 500,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
			usetime = 2500,
			cancel = true,
			notification = 'You drank some refreshing water'
		}
	},

	['radio'] = {
		label = 'Radio',
		weight = 1000,
		stack = false,
		allowArmed = true
	},

	['armour'] = {
		label = 'Bulletproof Vest',
		weight = 3000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 3500
		}
	},

	['clothing'] = {
		label = 'Clothing',
		consume = 0,
	},

	['mastercard'] = {
		label = 'Fleeca Card',
		stack = false,
		weight = 10,
		client = {
			image = 'card_bank.png'
		}
	},

	['scrapmetal'] = {
		label = 'Scrap Metal',
		weight = 80,
	},

	["alive_chicken"] = {
		label = "Living chicken",
		weight = 1,
		stack = true,
		close = true,
	},

	["blowpipe"] = {
		label = "Blowtorch",
		weight = 2,
		stack = true,
		close = true,
	},

	["bread"] = {
		label = "Bread",
		weight = 1,
		stack = true,
		close = true,
	},

	["cannabis"] = {
		label = "Cannabis",
		weight = 3,
		stack = true,
		close = true,
	},

	["carokit"] = {
		label = "Body Kit",
		weight = 3,
		stack = true,
		close = true,
	},

	["carotool"] = {
		label = "Tools",
		weight = 2,
		stack = true,
		close = true,
	},

	["clothe"] = {
		label = "Cloth",
		weight = 1,
		stack = true,
		close = true,
	},

	["copper"] = {
		label = "Copper",
		weight = 1,
		stack = true,
		close = true,
	},

	["cutted_wood"] = {
		label = "Cut wood",
		weight = 1,
		stack = true,
		close = true,
	},

	["diamond"] = {
		label = "Diamond",
		weight = 1,
		stack = true,
		close = true,
	},

	["essence"] = {
		label = "Gas",
		weight = 1,
		stack = true,
		close = true,
	},

	["fabric"] = {
		label = "Fabric",
		weight = 1,
		stack = true,
		close = true,
	},

	["fish"] = {
		label = "Fish",
		weight = 1,
		stack = true,
		close = true,
	},

	["fixkit"] = {
		label = "Repair Kit",
		weight = 3,
		stack = true,
		close = true,
	},

	["fixtool"] = {
		label = "Repair Tools",
		weight = 2,
		stack = true,
		close = true,
	},

	["gazbottle"] = {
		label = "Gas Bottle",
		weight = 2,
		stack = true,
		close = true,
	},

	["gold"] = {
		label = "Gold",
		weight = 1,
		stack = true,
		close = true,
	},

	["iron"] = {
		label = "Iron",
		weight = 1,
		stack = true,
		close = true,
	},

	["marijuana"] = {
		label = "Marijuana",
		weight = 2,
		stack = true,
		close = true,
	},

	["medikit"] = {
		label = "Medikit",
		weight = 2,
		stack = true,
		close = true,
	},

	["packaged_chicken"] = {
		label = "Chicken fillet",
		weight = 1,
		stack = true,
		close = true,
	},

	["packaged_plank"] = {
		label = "Packaged wood",
		weight = 1,
		stack = true,
		close = true,
	},

	["petrol"] = {
		label = "Oil",
		weight = 1,
		stack = true,
		close = true,
	},

	["petrol_raffin"] = {
		label = "Processed oil",
		weight = 1,
		stack = true,
		close = true,
	},

	["slaughtered_chicken"] = {
		label = "Slaughtered chicken",
		weight = 1,
		stack = true,
		close = true,
	},

	["stone"] = {
		label = "Stone",
		weight = 1,
		stack = true,
		close = true,
	},

	["washed_stone"] = {
		label = "Washed stone",
		weight = 1,
		stack = true,
		close = true,
	},

	["wood"] = {
		label = "Wood",
		weight = 1,
		stack = true,
		close = true,
	},

	["wool"] = {
		label = "Wool",
		weight = 1,
		stack = true,
		close = true,
	},
	['cleaning_cloth'] = {
		label = 'Cleaning Cloth',
		weight = 500,
		degrade = 10800,
		stack = false,
		close = true,
		description = 'Cleans stuff',
		client = {
			image = 'cleaning_cloth.png',
			event = 'ug_vehicle_wash:useItem'
		}
	},
	
	    	['methgel'] = {
        label = 'Meth Gel',
        weight = 30,
        stack = true,
        close = false
    },
	    ['ouncofmeth'] = {
        label = 'ounce of Meth',
        weight = 10,
        stack = true,
        close = false
    },
		['cokepowder'] = {
        label = 'Coke Powder',
        weight = 30,
        stack = true,
        close = false
    },
		['ouncofcoke'] = {
        label = 'Ounce of Coke',
        weight = 10,
        stack = true,
        close = false
    },
	["stone"] = {
		label = "Stone",
		weight = 600,
		stack = true,
		close = false,
	},

	["copperore"] = {
		label = "Copper Ore",
		weight = 650,
		stack = true,
		close = false,
	},

	["ironore"] = {
		label = "Iron Ore",
		weight = 700,
		stack = true,
		close = false,
	},

	["goldore"] = {
		label = "Gold Ore",
		weight = 750,
		stack = true,
		close = false,
	},

	["uncutsapphire"] = {
		label = "Uncut Sapphire",
		weight = 800,
		stack = true,
		close = false,
	},

	["uncutruby"] = {
		label = "Uncut Ruby",
		weight = 850,
		stack = true,
		close = false,
	},

	["uncutemerald"] = {
		label = "Uncut Emerald",
		weight = 900,
		stack = true,
		close = false,
	},

	["uncutdiamond"] = {
		label = "Uncut Diamond",
		weight = 950,
		stack = true,
		close = false,
	},

	["sapphire"] = {
		label = "Sapphire",
		weight = 1000,
		stack = true,
		close = false,
	},

	["ruby"] = {
		label = "Ruby",
		weight = 1050,
		stack = true,
		close = false,
	},

	["emerald"] = {
		label = "Emerald",
		weight = 1100,
		stack = true,
		close = false,
	},

	["diamond"] = {
		label = "Diamond",
		weight = 1150,
		stack = true,
		close = false,
	},

	["pickaxe"] = {
		label = "Pickaxe",
		description = "Use it to excavate ores from mine",
		weight = 2000,
		stack = false,
		close = false,
	},
	
	    ['skining_knife'] = {
        label = 'Skining Knife',
        weight = 200,
        stack = true,
    },
    ['boar_meat'] = {
        label = 'Boar Meat',
        weight = 500,
        stack = true,
    },
    ['boar_skin'] = {
        label = 'Boar Skin',
        weight = 700,
        stack = true,
    },
    ['deer_meat'] = {
        label = 'Deer Meat',
        weight = 600,
        stack = true,
    },
    ['deer_skin'] = {
        label = 'Deer Skin',
        weight = 800,
        stack = true,
    },
    ['coyote_meat'] = {
        label = 'Coyote Meat',
        weight = 400,
        stack = true,
    },
    ['coyote_skin'] = {
        label = 'Coyote Skin',
        weight = 600,
        stack = true,
    },
    ['rabbit_meat'] = {
        label = 'Rabbit Meat',
        weight = 300,
        stack = true,
    },
    ['rabbit_skin'] = {
        label = 'Rabbit Skin',
        weight = 400,
        stack = true,
    },
    ['cow_meat'] = {
        label = 'Cow Meat',
        weight = 1000,
        stack = true,
    },
    ['cow_skin'] = {
        label = 'Cow Skin',
        weight = 1200,
        stack = true,
    },
    ['chicken_meat'] = {
        label = 'Chicken Meat',
        weight = 1000,
        stack = true,
    },
    ['chicken_skin'] = {
	   label = 'Chicken Skin',
	   weight = 100,
	   stack = true,
    },
	['pig_meat'] = {
        label = 'Pig Meat',
        weight = 500,
        stack = true,
    },
	['pig_skin'] = {
        label = 'Pig Skin',
        weight = 300,
        stack = true,
    },

['laundry_card'] = {
    label = 'Laundry Card',
    weight = 1,
    stack = true,
    close = true,
    description = 'Card required to wash dirty money at the laundromat.'
},


    -- Powder Items
    ['weedpowder'] = {
        label = 'Weed Powder',
        weight = 50,  
        type = 'item',  
        image = 'weedpowder.png',  
        description = 'A fine powder made from cannabis leaves.'
    },
    ['heroinpowder'] = {
        label = 'Heroin Powder',
        weight = 50,  
        type = 'item',
        image = 'heroinpowder.png',
        description = 'A fine powder derived from opium poppies.'
    },
    ['cocainepowder'] = {
        label = 'Cocaine Powder',
        weight = 50,  
        type = 'item',
        image = 'cocainepowder.png',
        description = 'A fine white powder derived from coca leaves.'
    },
    -- Leaf Items
    ['cocaleaves'] = {
        label = 'Coca Leaves',
        weight = 100,  
        type = 'item',
        image = 'cocaleaves.png',
        description = 'Leaves of the coca plant, used to make cocaine.'
    },
    ['weedleaves'] = {
        label = 'Weed Leaves',
        weight = 100,  
        type = 'item',
        image = 'weedleaves.png',
        description = 'Raw leaves of the cannabis plant.'
    },
    ['rawopium'] = {
        label = 'Raw Opium',
        weight = 100,  
        type = 'item',
        image = 'rawopium.png',
        description = 'Sticky brown substance extracted from poppy pods.'
    },
    -- Pouch Items
    ['cokepouch'] = {
        label = 'Coke Pouch',
        weight = 200,  
        type = 'item',
        image = 'cokepouch.png',
        description = 'A small pouch filled with cocaine powder.'
    },
    ['heroinpouch'] = {
        label = 'Heroin Pouch',
        weight = 200,  
        type = 'item',
        image = 'heroinpouch.png',
        description = 'A small pouch filled with heroin powder.'
    },
    ['weedpouch'] = {
        label = 'Weed Pouch',
        weight = 200,  
        type = 'item',
        image = 'weedpouch.png',
        description = 'A small pouch filled with weed powder.'
    },
    ['plastic_bag'] = {
        label = 'Plastic Bag',
        weight = 50,  
        type = 'item',
        image = 'plastic_bag.png',
        description = 'An empty plastic bag for storing items.'
    },

}