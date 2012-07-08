-- Minetest 0.4 mod: mitchsmod
-- See README.txt for stuff and other information.

--

MUD_ALPHA = 160
MUD_VISC = 1
LAVA_VISC = 7
LIGHT_MAX = 14


default = {}

dofile(minetest.get_modpath("mitchsmod").."/mapgen.lua")


--
-- Tool definition
--



minetest.register_tool("mitchsmod:pick_gold", {
	description = "Gold Pickaxe",
	inventory_image = "default_tool_goldpick.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=3,
		groupcaps={
			cracky={times={[1]=2.0, [2]=1.10, [3]=1.0}, uses=20, maxlevel=3},
			crumbly={times={[1]=2.0, [2]=1.0, [3]=0.5}, uses=20, maxlevel=3},
		}
	},
})
minetest.register_tool("mitchsmod:pick_obsidian", {
	description = "Obsidian Pickaxe",
	inventory_image = "default_tool_obsidianpick.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=3,
		groupcaps={
			cracky={times={[1]=0.99, [2]=1.04, [3]=0.74, [4]=0.49}, uses=80, maxlevel=3},
			crumbly={times={[1]=1.0, [2]=1.0, [3]=0.5}, uses=20, maxlevel=3},
		}
	},
})

minetest.register_tool("mitchsmod:pick_diamond", {
	description = "Diamond Pickaxe",
	inventory_image = "default_tool_diamondpick.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=3,
		groupcaps={
			cracky={times={[1]=1.0, [2]=1.05, [3]=0.75, [4]=0.5}, uses=30, maxlevel=3},
			crumbly={times={[1]=2.0, [2]=1.0, [3]=1.0}, uses=20, maxlevel=3},
		}
	},
})

--
minetest.register_tool("mitchsmod:shovel_gold", {
	description = "Gold Shovel",
	inventory_image = "default_tool_goldshovel.png",
	tool_capabilities = {
		max_drop_level=1,
		groupcaps={
			crumbly={times={[1]=1.50, [2]=0.70, [3]=0.60}, uses=30, maxlevel=2}
		}
	},
})

minetest.register_tool("mitchsmod:shovel_diamond", {
	description = "Diamond Shovel",
	inventory_image = "default_tool_diamondshovel.png",
	tool_capabilities = {
		max_drop_level=1,
		groupcaps={
			crumbly={times={[1]=1.50, [2]=0.70, [3]=0.60}, uses=30, maxlevel=2}
		}
	},
})

minetest.register_tool("mitchsmod:shovel_obsidian", {
	description = "Obsidian Shovel",
	inventory_image = "default_tool_obsidianshovel.png",
	tool_capabilities = {
		max_drop_level=1,
		groupcaps={
			crumbly={times={[1]=1.50, [2]=0.70, [3]=0.60}, uses=30, maxlevel=2}
		}
	},
})
--

minetest.register_tool("mitchsmod:axe_gold", {
	description = "Gold Axe",
	inventory_image = "default_tool_goldaxe.png",
	tool_capabilities = {
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=3.00, [2]=1.60, [3]=1.00}, uses=30, maxlevel=2},
			fleshy={times={[2]=1.10, [3]=0.60}, uses=40, maxlevel=1}
		}
	},
})
minetest.register_tool("mitchsmod:axe_diamond", {
	description = "Diamond Axe",
	inventory_image = "default_tool_diamondaxe.png",
	tool_capabilities = {
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=3.00, [2]=1.60, [3]=1.00}, uses=30, maxlevel=2},
			fleshy={times={[2]=1.10, [3]=0.60}, uses=40, maxlevel=1}
		}
	},
})
minetest.register_tool("mitchsmod:axe_obsidian", {
	description = "Obsidian Axe",
	inventory_image = "default_tool_obsidianaxe.png",
	tool_capabilities = {
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=3.00, [2]=1.60, [3]=1.00}, uses=30, maxlevel=2},
			fleshy={times={[2]=1.10, [3]=0.60}, uses=40, maxlevel=1}
		}
	},
})

minetest.register_tool("mitchsmod:sword_gold", {
	description = "Gold Sword",
	inventory_image = "default_tool_goldsword.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			fleshy={times={[1]=2.00, [2]=0.80, [3]=0.40}, uses=10, maxlevel=2},
			snappy={times={[2]=0.70, [3]=0.30}, uses=40, maxlevel=1},
			choppy={times={[3]=0.70}, uses=40, maxlevel=0}
		}
	}
})
minetest.register_tool("mitchsmod:sword_diamond", {
	description = "Diamond Sword",
	inventory_image = "default_tool_diamondsword.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			fleshy={times={[1]=2.00, [2]=0.80, [3]=0.40}, uses=10, maxlevel=2},
			snappy={times={[2]=0.70, [3]=0.30}, uses=40, maxlevel=1},
			choppy={times={[3]=0.70}, uses=40, maxlevel=0}
		}
	}
})
minetest.register_tool("mitchsmod:sword_obsidian", {
	description = "Obsidian Sword",
	inventory_image = "default_tool_obsidiansword.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			fleshy={times={[1]=2.00, [2]=0.80, [3]=0.40}, uses=10, maxlevel=2},
			snappy={times={[2]=0.70, [3]=0.30}, uses=40, maxlevel=1},
			choppy={times={[3]=0.70}, uses=40, maxlevel=0}
		}
	}
})


--
-- Crafting definition
--


minetest.register_craft({
	output = 'mitchsmod:FallenTree 2',
	recipe = {
		{'default:tree','',''},
		{'','default:tree',''},
		{'','',''},
	}
})

minetest.register_craft({
	output = 'default:tree 2',
	recipe = {
		{'mitchsmod:FallenTree','',''},
		{'mitchsmod:FallenTree','',''},

	}
})

minetest.register_craft({
	output = 'mitchsmod:FallenTreeo 2',
	recipe = {
		{'','',''},
		{'','default:tree',''},
		{'default:tree','',''},

	}
})

minetest.register_craft({
	output = 'default:tree 2',
	recipe = {
		{'mitchsmod:FallenTreeo','',''},
		{'mitchsmod:FallenTreeo','',''},

	}
})

minetest.register_craft({
	output = 'mitchsmod:TreeSlab 6',
	recipe = {
		{'default:tree','default:tree','default:tree'},

	}
})

minetest.register_craft({
	output = 'mitchsmod:TreeSlabSlab 6',
	recipe = {
		{'mitchsmod:TreeSlab','mitchsmod:TreeSlab','mitchsmod:TreeSlab'},

	}
})

minetest.register_craft({
	output = 'mitchsmod:TreeSlabSlabSlab 3',
	recipe = {
		{'mitchsmod:TreeSlabSlab','mitchsmod:TreeSlabSlab','mitchsmod:TreeSlabSlab'},
		{'mitchsmod:TreeSlab','mitchsmod:TreeSlab','mitchsmod:TreeSlab'},
	}
})

minetest.register_craft({
	output = 'mitchsmod:mud_source 3',
	recipe = {
		{'default:water_source'},
	
	}
})
--""
-------
-------
-------
-------
-------



minetest.register_craft({
	output = 'mitchsmod:pick_gold',
	recipe = {
		{'mitchsmod:gold_lump', 'mitchsmod:gold_lump', 'mitchsmod:gold_lump'},
		{'', 'default:stick', ''},
		{'', 'default:stick', ''},
	}
})

minetest.register_craft({
	output = 'mitchsmod:pick_obsidian',
	recipe = {
		{'mitchsmod:obsidian_ingot', 'mitchsmod:obsidian_ingot', 'mitchsmod:obsidian_ingot'},
		{'', 'default:stick', ''},
		{'', 'default:stick', ''},
	}
})

minetest.register_craft({
	output = 'mitchsmod:pick_diamond',
	recipe = {
		{'mitchsmod:diamond', 'mitchsmod:diamond', 'mitchsmod:diamond'},
		{'', 'default:stick', ''},
		{'', 'default:stick', ''},
	}
})

-------
-------
-------
-------
-------


minetest.register_craft({
	output = 'mitchsmod:shovel_gold',
	recipe = {
		{'', 'mitchsmod:gold_lump', ''},
		{'', 'default:stick', ''},
		{'', 'default:stick', ''},
	}
})

minetest.register_craft({
	output = 'mitchsmod:shovel_diamond',
	recipe = {
		{'', 'mitchsmod:diamond', ''},
		{'', 'default:stick', ''},
		{'', 'default:stick', ''},
	}
})

minetest.register_craft({
	output = 'mitchsmod:shovel_obsidian',
	recipe = {
		{'', 'mitchsmod:obsidian_ingot', ''},
		{'', 'default:stick', ''},
		{'', 'default:stick', ''},
	}
})

-------
-------
-------
-------
-------


minetest.register_craft({
	output = 'mitchsmod:axe_gold',
	recipe = {
		{'mitchsmod:gold_lump', 'mitchsmod:gold_lump'},
		{'mitchsmod:gold_lump', 'default:stick'},
		{'', 'default:stick'},
	}
})

minetest.register_craft({
	output = 'mitchsmod:axe_diamond',
	recipe = {
		{'mitchsmod:diamond', 'mitchsmod:diamond'},
		{'mitchsmod:diamond', 'default:stick'},
		{'', 'default:stick'},
	}
})

minetest.register_craft({
	output = 'mitchsmod:axe_obsidian',
	recipe = {
		{'mitchsmod:obsidian_ingot', 'mitchsmod:obsidian_ingot', ''},
		{'mitchsmod:obsidian_ingot', 'default:stick', ''},
		{'', 'default:stick', ''},
	}
})

-------
-------
-------
-------
-------



minetest.register_craft({
	output = 'mitchsmod:sword_gold',
	recipe = {
		{'mitchsmod:gold_lump'},
		{'mitchsmod:gold_lump'},
		{'default:stick'},
	}
})

minetest.register_craft({
	output = 'mitchsmod:sword_diamond',
	recipe = {
		{'mitchsmod:diamond'},
		{'mitchsmod:diamond'},
		{'default:stick'},
	}
})

minetest.register_craft({
	output = 'mitchsmod:sword_obsidian',
	recipe = {
		{'', 'mitchsmod:obsidian', ''},
		{'', 'mitchsmod:obsidian', ''},
		{'', 'default:stick', ''},
	}
})


-------
-------
-------
-------
-------
-------
-------
-------
-------
-------


--
-- Crafting (tool repair)
--
minetest.register_craft({
	type = "toolrepair",
	additional_wear = -0.02,
})

--
-- Cooking recipes
--


minetest.register_craft({
	type = "cooking",
	output = "mitchsmod:obsidian_ingot",
	recipe = "mitchsmod:obsidian_fragment",
})


--
-- Fuels
--


--
-- Node definitions
--

-- Default node sounds

function default.node_sound_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name="", gain=1.0}
	table.dug = table.dug or
			{name="default_dug_node", gain=1.0}
	return table
end

function default.node_sound_stone_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name="default_hard_footstep", gain=0.2}
	default.node_sound_defaults(table)
	return table
end

function default.node_sound_dirt_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name="", gain=0.5}
	--table.dug = table.dug or
	--		{name="default_dirt_break", gain=0.5}
	default.node_sound_defaults(table)
	return table
end

function default.node_sound_sand_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name="default_grass_footstep", gain=0.25}
	--table.dug = table.dug or
	--		{name="default_dirt_break", gain=0.25}
	table.dug = table.dug or
			{name="", gain=0.25}
	default.node_sound_defaults(table)
	return table
end

function default.node_sound_wood_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name="default_hard_footstep", gain=0.3}
	default.node_sound_defaults(table)
	return table
end

function default.node_sound_leaves_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name="default_grass_footstep", gain=0.25}
	table.dig = table.dig or
			{name="default_dig_crumbly", gain=0.4}
	table.dug = table.dug or
			{name="", gain=1.0}
	default.node_sound_defaults(table)
	return table
end

function default.node_sound_glass_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name="default_stone_footstep", gain=0.25}
	table.dug = table.dug or
			{name="default_break_glass", gain=1.0}
	default.node_sound_defaults(table)
	return table
end

------------------------------------------------

--[[
--
--        node_box = {
--			type = "fixed",
--			fixed = {
--				{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
--				{-0.5, 0, 0, 0.5, 0.5, 0.5},
--			},
--		},
]]

minetest.register_node("mitchsmod:stone_with_gold", {
	description = "Gold Ore",
	tile_images = {"default_stone.png^default_mineral_gold.png"},
	is_ground_content = true,
	groups = {cracky=3},
	drop = 'mitchsmod:gold_lump',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("mitchsmod:stone_with_obsidian", {
	description = "Obsidian Ore",
	tile_images = {"default_stone.png^default_mineral_obsidian.png"},
	is_ground_content = true,
	paramtype = "light",
	light_source = LIGHT_MAX-8,
	groups = {cracky=3},
	drop = 'mitchsmod:obsidian_fragment 2',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("mitchsmod:stone_with_uranium", {
	description = "Uranium Ore",
	tile_images = {"default_stone.png^default_mineral_uranium.png"},
	is_ground_content = true,
	paramtype = "light",
	light_source = LIGHT_MAX-3,
	damage_per_second = 2*.01,
	groups = {cracky=3},
	drop = 'mitchsmod:stone_with_uranium',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("mitchsmod:stone_with_diamond", {
	description = "Diamond Ore",
	tile_images = {"default_stone.png^default_mineral_diamond.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
	drop = {
		max_items = 4,
		items = {
                        {
				-- player will get sapling with 1/20 chance
				items = {'mitchsmod:diamond'},
				rarity = 5,
			},
			{
				-- player will get leaves only if he get no saplings,
				-- this is because max_items is 1
				items = {'default:cobble'},
			}
		}
        },
})

minetest.register_node("mitchsmod:cobblestair", {         --1/2 block
	description = "Cobble Stair",
	drawtype = "nodebox",
	tile_images = {"default_cobble.png"},
	is_ground_content = true,
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {tree=1,snappy=1,choppy=2,oddly_breakable_by_hand=1,flammable=2},
        drop = 'mitchsmod:cobblestair',
        node_box = {
			type = "fixed",
			fixed = {{-0.5, -0.5, -0.5, 0.5, 0, 0.5},{-0.5, 0, 0, 0.5, 0.5, 0.5},},
		},
		selection_box = {
			type = "fixed",
			fixed = {{-0.5, -0.5, -0.5, 0.5, 0, 0.5},{-0.5, 0, 0, 0.5, 0.5, 0.5},},
		},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("mitchsmod:FallenTree", {
	description = "Fallen Tree 1",
	tile_images = {"default_treeside.png", "default_treeside.png", "default_tree_top.png","default_tree_top.png", "default_treeside.png",  "default_treeside.png"},
	is_ground_content = true,
	groups = {tree=1,snappy=1,choppy=2,oddly_breakable_by_hand=1,flammable=2},
        drop = 'mitchsmod:FallenTree 1',
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("mitchsmod:TreeSlab", {         --1/2 block
	description = "Tree Stump",
	drawtype = "nodebox",
	tile_images = {"default_tree_top.png", "default_tree_top.png", "default_tree.png"},
	is_ground_content = true,
	paramtype = "light",
	groups = {tree=1,snappy=1,choppy=2,oddly_breakable_by_hand=1,flammable=2},
        drop = 'mitchsmod:TreeSlab',
        node_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, -0.5, 0.5, 0, 0.5},
		},
		selection_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, -0.5, 0.5, 0, 0.5},
		},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("mitchsmod:TreeSlabSlab", {     --1/4 block
	description = "1/4 Thick Log",
	drawtype = "nodebox",
	tile_images = {"default_tree_top.png", "default_tree_top.png", "default_tree.png"},
	is_ground_content = true,
	paramtype = "light",
	groups = {tree=1,snappy=1,choppy=2,oddly_breakable_by_hand=1,flammable=2},
        drop = 'mitchsmod:TreeSlabSlab',
        node_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, -0.5, 0.5, -0.25, 0.5},
		},
		selection_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, -0.5, 0.5, -0.25, 0.5},
		},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("mitchsmod:TreeSlabSlabSlab", {     --3/4 block
	description = "3/4 Thick Log",
	drawtype = "nodebox",
	tile_images = {"default_tree_top.png", "default_tree_top.png", "default_tree.png"},
	is_ground_content = true,
	paramtype = "light",
	groups = {tree=1,snappy=1,choppy=2,oddly_breakable_by_hand=1,flammable=2},
        drop = 'mitchsmod:TreeSlabSlabSlab',
        node_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, -0.5, 0.5, 0.25, 0.5},
		},
		selection_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, -0.5, 0.5, 0.25, 0.5},
		},
	sounds = default.node_sound_wood_defaults(),
})


--[[


	drawtype = "nodebox",
		tiles = images,
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = true,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
				{-0.5, 0, 0, 0.5, 0.5, 0.5},
			},
		},


]]

minetest.register_node("mitchsmod:FallenTreeo", {
	description = "Fallen Tree 2",
	tile_images = {"default_tree.png","default_tree.png","default_treeside.png","default_treeside.png","default_tree_top.png","default_tree_top.png",},
	is_ground_content = true,
	groups = {tree=1,snappy=1,choppy=2,oddly_breakable_by_hand=1,flammable=2},
        drop = 'mitchsmod:FallenTreeo 1',
	sounds = default.node_sound_wood_defaults(),
})


minetest.register_node("mitchsmod:mud_flowing", {
	description = "Flowing Mud",
	inventory_image = minetest.inventorycube("default_mud.png"),
	drawtype = "flowingliquid",
	alpha = MUD_ALPHA,
    tiles = {
		{image="default_mud.png", backface_culling=false},
	},
	special_tiles = {
		{image="default_mud_flowing_animated.png", animation={type="vertical_frames", aspect_w=32, aspect_h=32, length=6.0}}
	},	
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	
	
	on_punch = minetest.item_eat(4),	   -- tryed to make heal, not working. fix l8r
	liquidtype = "flowing",
	
	
	liquid_alternative_flowing = "mitchsmod:mud_flowing",
	liquid_alternative_source = "mitchsmod:mud_source",
	liquid_viscosity = MUD_VISC,
	post_effect_color = {a=64, r=139, g=119, b=101},
	--[[
	--special_materials = {
	--	{image="default_mud.png", backface_culling=false},
	--	{image="default_mud.png", backface_culling=true},
	--},
	]]
	
	groups = {liquid=3, puts_out_fire=1},
})

minetest.register_node("mitchsmod:mud_source", {
	description = "Mud Source",
	inventory_image = minetest.inventorycube("default_mud.png"),
	drawtype = "liquid",
	alpha = MUD_ALPHA,
	tiles = {
		{image="default_mud_source_animated.png", animation={type="vertical_frames", aspect_w=32, aspect_h=32, length=6.0}}
	},
	special_tiles = {
		{image="default_mud.png", backface_culling=false},
	},
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	damage_per_second = 4,	
	liquidtype = "source",
	liquid_alternative_flowing = "mitchsmod:mud_flowing",
	liquid_alternative_source = "mitchsmod:mud_source",
	liquid_viscosity = MUD_VISC,
	post_effect_color = {a=64, r=139, g=119, b=101},
	--[[
	--special_materials = {
	--	-- New-style water source material (mostly unused)                          default_mud_source_animated.png
	--	 {image="default_mud.png", backface_culling=false},
	--},
	]]

	groups = {liquid=3, puts_out_fire=1},
})





function hacky_swap_node(pos,name)
	local node = minetest.env:get_node(pos)
	local meta = minetest.env:get_meta(pos)
	local meta0 = meta:to_table()
	if node.name == name then
		return
	end
	node.name = name
	local meta0 = meta:to_table()
	minetest.env:set_node(pos,node)
	meta = minetest.env:get_meta(pos)
	meta:from_table(meta0)
end



minetest.register_craftitem("mitchsmod:gold_lump", {
	description = "Gold Lump",
	inventory_image = "default_gold_lump.png",
})

minetest.register_craftitem("mitchsmod:obsidian_fragment", {
	description = "Obsidian Fragment",
	inventory_image = "default_obsidian_fragment.png",
})

minetest.register_craftitem("mitchsmod:diamond", {
	description = "Diamond",
	inventory_image = "default_diamond.png",
})


minetest.register_craftitem("mitchsmod:obsidian_ingot", {
	description = "Obsidian Ingot",
	inventory_image = "default_obsidian_ingot.png",
})



--
-- Creative inventory
--

minetest.add_to_creative_inventory('mitchsmod:mud_source')
minetest.add_to_creative_inventory('mitchsmod:cobblestair')
--
-- Falling stuff
--

minetest.register_entity("mitchsmod:falling_node", {
	initial_properties = {
		physical = true,
		collisionbox = {-0.5,-0.5,-0.5, 0.5,0.5,0.5},
		visual = "wielditem",
		textures = {},
		visual_size = {x=0.667, y=0.667},
	},

	nodename = "",

	set_node = function(self, nodename)
		self.nodename = nodename
		local stack = ItemStack(nodename)
		local itemtable = stack:to_table()
		local itemname = nil
		if itemtable then
			itemname = stack:to_table().name
		end
		local item_texture = nil
		local item_type = ""
		if minetest.registered_items[itemname] then
			item_texture = minetest.registered_items[itemname].inventory_image
			item_type = minetest.registered_items[itemname].type
		end
		prop = {
			is_visible = true,
			textures = {nodename},
		}
		self.object:set_properties(prop)
	end,

	get_staticdata = function(self)
		return self.nodename
	end,

	on_activate = function(self, staticdata)
		self.nodename = staticdata
		self.object:set_armor_groups({immortal=1})
		--self.object:setacceleration({x=0, y=-10, z=0})
		self:set_node(self.nodename)
	end,

	on_step = function(self, dtime)
		-- Set gravity
		self.object:setacceleration({x=0, y=-10, z=0})
		-- Turn to actual sand when collides to ground or just move
		local pos = self.object:getpos()
		local bcp = {x=pos.x, y=pos.y-0.7, z=pos.z} -- Position of bottom center point
		local bcn = minetest.env:get_node(bcp)
		-- Note: walkable is in the node definition, not in item groups
		if minetest.registered_nodes[bcn.name] and
				minetest.registered_nodes[bcn.name].walkable then
			local np = {x=bcp.x, y=bcp.y+1, z=bcp.z}
			-- Check what's here
			local n2 = minetest.env:get_node(np)
			-- If it's not air or liquid, remove node and replace it with
			-- it's drops
			if n2.name ~= "air" and (not minetest.registered_nodes[n2.name] or
					minetest.registered_nodes[n2.name].liquidtype == "none") then
				local drops = minetest.get_node_drops(n2.name, "")
				minetest.env:remove_node(np)
				-- Add dropped items
				local _, dropped_item
				for _, dropped_item in ipairs(drops) do
					minetest.env:add_item(np, dropped_item)
				end
				-- Run script hook
				local _, callback
				for _, callback in ipairs(minetest.registered_on_dignodes) do
					callback(np, n2, nil)
				end
			end
			-- Create node and remove entity
			minetest.env:add_node(np, {name=self.nodename})
			self.object:remove()
		else
			-- Do nothing
		end
	end
})

function default.spawn_falling_node(p, nodename)
	obj = minetest.env:add_entity(p, "mitchsmod:falling_node")
	obj:get_luaentity():set_node(nodename)
end

-- END
