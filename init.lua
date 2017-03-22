for i=0,63 do
	local temp = i
	local r = i / 16
	if r >= 1 then
		r = math.floor(r)
		temp = i - (r * 16)
	else
		r = 0
	end
	local g = temp / 4
	if g >= 1 then
		g = math.floor(g)
		temp = temp - (g * 4)
	else
		g = 0
	end
	local b = temp
	local color = i + 1
	minetest.register_node("wool:color_"..color, {
		description = "Wool color #"..color,
		tiles = {"wool_r"..r..".png^[mask:wool_g"..g..".png^[mask:wool_b"..b..".png"},
		is_ground_content = false,
		groups = {snappy = 2, choppy = 2, oddly_breakable_by_hand = 3, flammable = 3, wool = 1},
		sounds = default.node_sound_defaults()
	})
end
