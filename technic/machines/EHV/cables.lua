local S = technic.getter

minetest.register_craft({
	output = 'technic:ehv_cable 3',
	recipe = {
		{'default:glass',    'default:glass',         'default:glass'   },
		{'technic:hv_cable', 'moreores:silver_ingot', 'technic:hv_cable'},
		{'default:glass',    'default:glass',         'default:glass'   },
	}
})

minetest.register_craft({
	output = "technic:ehv_cable_plate_1 5",
	recipe = {
		{""                 , ""                 , "technic:ehv_cable"},
		{"technic:ehv_cable", "technic:ehv_cable", "technic:ehv_cable"},
		{""                 , ""                 , "technic:ehv_cable"},
	}
})

minetest.register_craft({
	output = "technic:ehv_cable",
	recipe = {{"technic:ehv_cable_plate_1"}}
})

-- Register cables

technic.register_cable("technic:hv_cable", {
	tier = "EHV",
	size = 4/16,
	description = S("@1 Cable", S("EHV"))
})
technic.register_cable_plate("technic:hv_cable_plate", {
	tier = "EHV",
	size = 4/16,
	description = S("@1 Cable Plate", S("EHV")),
	tiles = {"technic_ehv_cable.png"},
})

if minetest.get_modpath("digilines") then
	technic.register_cable("technic:ehv_digi_cable", {
		tier = "EHV",
		size = 4/16,
		description = S("@1 Digiline Cable", S("EHV")),
		digiline = { wire = { rules = technic.digilines.rules_allfaces } }
	})
	technic.register_cable_plate("technic:hv_digi_cable_plate", {
		tier = "EHV",
		size = 4/16,
		description = S("@1 Digiline Cable Plate", S("EHV")),
		digiline = { wire = { rules = technic.digilines.rules_allfaces } },
		tiles = {"technic_ehv_digi_cable.png"}
	})
end
