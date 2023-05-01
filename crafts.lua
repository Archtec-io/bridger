minetest.register_craftitem("bridger:bridges_wooden_rod", {
	description = "Wooden Rod",
	inventory_image = "bridges_wooden_rod.png",
})

minetest.register_craft({
	output = "default:stick",
	recipe = {
		{"bridger:bridges_wooden_rod"},
	}
})

minetest.register_craft({
	output = "bridger:bridges_wooden_rod 3",
	recipe = {
		{"group:stick"},
		{"group:stick"},
		{"group:stick"},
	}
})

minetest.register_craft({
	output = "bridger:scaffolding 2",
	recipe = {
		{"bridger:bridges_wooden_rod", "", "bridger:bridges_wooden_rod"},
		{"", "group:stick", ""},
		{"bridger:bridges_wooden_rod", "", "bridger:bridges_wooden_rod"},
	}
})

minetest.register_craftitem("bridger:bridges_steel_rod", {
	description = "Steel Rod",
	inventory_image = "bridges_steel_rod.png",
})

minetest.register_craftitem("bridger:bridges_diagonal_steel_rod", {
	description = "Steel Rod",
	inventory_image = "bridges_diagonal_steel_rod.png",
})

minetest.register_craft({
	output = "bridger:bridges_steel_rod 9",
	recipe = {
		{"default:steel_ingot"},
		{"default:steel_ingot"},
		{"default:steel_ingot"},
	}
})

minetest.register_craft({
	output = "bridger:bridges_diagonal_steel_rod 3",
	recipe = {
		{"", "", "bridger:bridges_steel_rod"},
		{"", "bridger:bridges_steel_rod", ""},
		{"bridger:bridges_steel_rod", "", ""},
	}
})

local bridge_colors = {
	"steel",
	"white"
}

for c in ipairs(bridge_colors) do
	local bridge_color = bridge_colors[c]
	local dye
	if bridge_color == "white" then
		dye = "dye:white"
	else
		dye = "dye:dark_grey"
	end

	minetest.register_craft({
		output = "bridger:truss_superstructure_mid_" .. bridge_color,
		recipe = {
			{"bridger:bridges_steel_rod", "bridger:bridges_diagonal_steel_rod", "bridger:bridges_steel_rod"},
			{"bridger:bridges_diagonal_steel_rod", dye, "bridger:bridges_diagonal_steel_rod"},
			{"bridger:bridges_steel_rod", "bridger:bridges_diagonal_steel_rod", "bridger:bridges_steel_rod"},
		}
	})

	minetest.register_craft({
		output = "bridger:truss_superstructure_tall_mid_" .. bridge_color,
		recipe = {
			{"bridger:bridges_steel_rod", "", "bridger:bridges_steel_rod"},
			{"", "bridger:truss_superstructure_mid_" .. bridge_color, ""},
		}
	})

	minetest.register_craft({
		output = "bridger:small_support_" .. bridge_color,
		recipe = {
			{"bridger:bridges_steel_rod", "bridger:bridges_diagonal_steel_rod", "bridger:bridges_steel_rod"},
			{"", dye, ""},
		}
	})

	minetest.register_craft({
		output = "bridger:small_support_top_" .. bridge_color,
		recipe = {
			{"bridger:small_support_" .. bridge_color},
			{"bridger:small_support_" .. bridge_color},
		}
	})

	minetest.register_craft({
		output = "bridger:medium_support_" .. bridge_color,
		recipe = {
			{"bridger:bridges_diagonal_steel_rod", dye, ""},
			{"bridger:bridges_steel_rod", "bridger:bridges_diagonal_steel_rod", "bridger:bridges_steel_rod"},
		}
	})

	minetest.register_craft({
		output = "bridger:large_support_" .. bridge_color,
		recipe = {
			{"bridger:bridges_diagonal_steel_rod", dye, ""},
			{"bridger:bridges_steel_rod", "bridger:bridges_diagonal_steel_rod", "bridger:bridges_steel_rod"},
			{"", "", "bridger:bridges_diagonal_steel_rod"},
		}
	})
end

minetest.register_craft({
	output = "bridger:small_beam",
	recipe = {
		{"bridger:bridges_wooden_rod", "bridger:bridges_wooden_rod", "bridger:bridges_wooden_rod"},
		{"", "group:wood", ""},
	}
})

minetest.register_craft({
	output = "bridger:small_beam_mid",
	recipe = {
		{"", "bridger:bridges_wooden_rod", ""},
		{"", "group:wood", ""},
	}
})

minetest.register_craft({
	output = "bridger:small_beam_end",
	recipe = {
		{"bridger:bridges_wooden_rod", "bridger:bridges_wooden_rod", "bridger:bridges_wooden_rod"},
		{"bridger:bridges_wooden_rod", "", "bridger:bridges_wooden_rod"},
		{"", "group:wood", ""},
	}
})

minetest.register_craft({
	output = "bridger:small_beam_corner",
	recipe = {
		{"bridger:bridges_wooden_rod", "bridger:bridges_wooden_rod", "bridger:bridges_wooden_rod"},
		{"bridger:bridges_wooden_rod", "", ""},
		{"", "group:wood", ""},
	}
})

minetest.register_craft({
	output = "bridger:small_beam_3",
	recipe = {
		{"bridger:bridges_wooden_rod", "", "bridger:bridges_wooden_rod"},
		{"bridger:bridges_wooden_rod", "", "bridger:bridges_wooden_rod"},
		{"", "group:wood", ""},
	}
})

minetest.register_craft({
	output = "bridger:small_beam_4",
	recipe = {
		{"bridger:bridges_wooden_rod", "", "bridger:bridges_wooden_rod"},
		{"", "", ""},
		{"", "group:wood", ""},
	}
})

minetest.register_craft({
	output = "bridger:small_beam_stair",
	recipe = {
		{"", "bridger:bridges_wooden_rod", "bridger:bridges_wooden_rod"},
		{"bridger:bridges_wooden_rod", "", "group:wood"},
		{"bridger:bridges_wooden_rod", "group:wood", ""},
	}
})

minetest.register_craft({
	output = "bridger:large_beam",
	recipe = {
		{"bridger:bridges_wooden_rod", "bridger:bridges_wooden_rod", "bridger:bridges_wooden_rod"},
		{"bridger:bridges_wooden_rod", "bridger:bridges_wooden_rod", "bridger:bridges_wooden_rod"},
		{"bridger:bridges_wooden_rod", "group:wood", "bridger:bridges_wooden_rod"},
	}
})

minetest.register_craft({
	output = "bridger:large_fancy_beam",
	recipe = {
		{"bridger:bridges_wooden_rod", "bridger:bridges_wooden_rod", "bridger:bridges_wooden_rod"},
		{"bridger:bridges_wooden_rod", "group:wood", "bridger:bridges_wooden_rod"},
		{"bridger:bridges_wooden_rod", "bridger:bridges_wooden_rod", "bridger:bridges_wooden_rod"},
	}
})

minetest.register_craft({
	output = "bridger:large_beam_swivel_normal",
	recipe = {
		{"bridger:large_beam"},
	}
})

minetest.register_craft({
	output = "bridger:large_beam",
	recipe = {
		{"bridger:large_beam_swivel_normal"},
	}
})

minetest.register_craft({
	output = "bridger:large_drawbridge_normal",
	recipe = {
		{"bridger:small_beam", "bridger:small_beam"},
	}
})

minetest.register_craft({
	output = "bridger:small_beam 2",
	recipe = {
		{"bridger:large_drawbridge_normal"},
	}
})

minetest.register_craft({
	output = "bridger:foundation 3",
	recipe = {
		{"", "default:clay", ""},
		{"default:clay", "default:clay", "default:clay"},
	}
})
