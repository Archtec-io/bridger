minetest.register_node("bridger:scaffolding", {
	description = "Scaffolding",
	drawtype = "glasslike_framed_optional",
	tiles = {"bridges_scaffolding.png", "bridges_scaffolding_detail.png"},
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	climbable = true,
	groups = {cracky = 3, oddly_breakable_by_hand = 3, dig_immediate = 3},
	sounds = default.node_sound_wood_defaults(),
})


dofile(minetest.get_modpath("bridger") .. "/nodes.lua")
dofile(minetest.get_modpath("bridger") .. "/crafts.lua")

