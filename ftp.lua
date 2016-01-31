
yellow = vec4(1, 1, 0, 1)
orange = vec4(1, 0.5, 0, 1)
pink = vec4(1,0,0.5,1)
shadow_offset = 0.02 -- temp?
background_color = vec4(0.7, 0.7, 0.7, 1)
shadow_color = vec4(0.2, 0.2, 0.2, 1)

win = am.window{
    title = "From The Top",
    width = 1200,
    height = 800,
    clear_color = vec4(0.3),
}

-------------------------------------------------------
-- sound fx
-------------------------------------------------------

sounds =
{
	piphi = 77763306,
	piplo = 96169106,
	bophi = 24992902,
	boplo = 99503802,
	snare = 20008302,
	swipe = 77813709,
	brush = 90848704,
}

-------------------------------------------------------
-- drum panel
-------------------------------------------------------

function drum_panel(pattern, show_hint)

	local background_color = vec4(0.7, 0.8, 0.9, 1)
	local shadow_color = vec4(0.2, 0.2, 0.2, 1)
	local local_root = am.scale(1)
	nextdrum = 99503802
	
	pip_color = vec4(0.2,0,0.6,1)
	bop_color = vec4(0,0.6,0.2,1) 
	
    function local_root:lost()
        return false
    end
    function local_root:won()
        return false
    end
	function local_root:get_pattern()
        return pattern
    end
	
	function bumper( soundid, plays ) return am.loop(function()
		return am.series{
			function(node)
				if nextdrum == soundid then
					if plays then win.scene:action(am.play(soundid)) end
					node.scale = vec3(1.3)
					return true
				end
			end,
			am.tween(0.3,{scale = vec3(1)})
		}
	end)end
	
	lightButton = 1.2
	darkButton = 0.8
	
	piphiButton = am.group
	{
		am.scale(1):action(bumper(sounds.piphi,true))
		^ am.translate(0,-0.05)
		^ am.scale(0.1)
		^ am.rect(-1,-0.5,1,0.5,pip_color*lightButton),
		
		am.scale(1):action(bumper(sounds.piphi))
		^ am.circle(vec2(0),0.1,pip_color*lightButton,8),
	}
	
	piploButton = am.group
	{
		am.scale(1):action(bumper(sounds.piplo,true))
		^ am.translate(0,0.05)
		^ am.scale(0.1)
		^ am.rect(-1,-0.5,1,0.5,pip_color*darkButton),
		
		am.scale(1):action(bumper(sounds.piplo))
		^ am.circle(vec2(0),0.1,pip_color*darkButton,8),
	}	
	
	bophiButton = am.group
	{
		am.scale(1):action(bumper(sounds.bophi,true))
		^ am.rotate(math.rad(45))
		^ am.scale(0.071)
		^ am.rect(-1,-1,1,1,bop_color*lightButton),
		
		am.scale(1):action(bumper(sounds.bophi))
		^ am.translate(0,-0.05)
		^ am.scale(0.05)
		^ am.rect(-1,-1,1,1,bop_color*lightButton),
	}
	
	boploButton = am.group
	{
		am.scale(1):action(bumper(sounds.boplo,true))
		^ am.rotate(math.rad(45))
		^ am.scale(0.071)
		^ am.rect(-1,-1,1,1,bop_color*darkButton),
		
		am.scale(1):action(bumper(sounds.boplo))
		^ am.translate(0,0.05)
		^ am.scale(0.05)
		^ am.rect(-1,-1,1,1,bop_color*darkButton),
	}
	
    -- behaviour
    local actions = {}
    if show_hint then actions[#actions+1] = play_intro(); end
	
    local_root:tag"drum_panel":action(am.series(actions))
	
	return local_root
		^ am.scale(100,100)
		^ am.translate(-0.5, -0.5)
		^ am.group {
			am.rect(shadow_offset,-shadow_offset,1 + shadow_offset,1 - shadow_offset, shadow_color),
			am.rect(0,0,1,1, background_color),
			am.translate(0.35, 0.35) ^ am.scale(0.8) ^ piploButton,
			am.translate(0.65, 0.35) ^ am.scale(0.8) ^ boploButton,
			am.translate(0.35, 0.65) ^ am.scale(0.8) ^ piphiButton,
			am.translate(0.65, 0.65) ^ am.scale(0.8) ^ bophiButton,
		}
end

-------------------------------------------------------
-- unlock pattern
-------------------------------------------------------

test_pattern = {{0,0}, {1,1}, {1,2}, {1,3}, {2,3}, {3,3}, {3,2}}

function unlock_panel(pattern, show_hint)
	local shadow_offset = 0.02 -- temp?
	local background_color = vec4(0.7, 0.7, 0.7, 1)
	local shadow_color     = vec4(0.2, 0.2, 0.2, 1)
    grid_def = { dx = 0.15, dy = 0.15, size_x = 4, size_y = 4 }

    local local_root = am.scale(1)

    local hint_nodes = am.scale(1)
    local hint_xys = {}
    function local_root:add_hint_node(xy)
        -- add circle around node
        hint_nodes:append(unlock_make_node_circle(grid_def, xy))
        -- add line between nodes
        if #hint_xys > 0 then
            hint_nodes:prepend(unlock_make_node_line(grid_def, hint_xys[#hint_xys], xy))
        end
        -- record xy coords
        hint_xys[#hint_xys + 1] = xy
    end

    local user_nodes = am.scale(1)
    local user_xys = {}
    function local_root:add_user_node(xy)
        -- bail if this node has already been added
        for i, existing_xy in ipairs(user_xys) do
            if table.tostring(xy) == table.tostring(existing_xy) then
                return
            end
        end
        -- add circle around node
        user_nodes:append(unlock_make_node_circle(grid_def, xy))
        -- add line between nodes
        if #user_xys > 0 then
            user_nodes:prepend(unlock_make_node_line(grid_def, user_xys[#user_xys], xy))
        end
        -- record xy coords
        user_xys[#user_xys + 1] = xy
    end

    function local_root:clear_hint()
        hint_nodes:remove_all()
        for i=1, #hint_xys do
            table.remove(hint_xys, i)
        end
    end
    function local_root:get_grid_def()
        return grid_def
    end
    function local_root:get_pattern()
        return pattern
    end
    function local_root:lost()
        for i, xy in ipairs(user_xys) do
            if i > #pattern or table.tostring(pattern[i]) ~= table.tostring(xy) then
                return true
            end
        end
        return false
    end
    function local_root:won()
        return (not self:lost() and #user_xys == #pattern);
    end

    -- Behaviour
    local actions = {}
    if show_hint then actions[#actions+1] = unlock_play_hint(); end
    actions[#actions+1] = am.parallel{
        unlock_clear_hint(),
        unlock_user_input(),
    }
    local_root:tag"unlock_panel":action(am.series(actions))

	return local_root ^ am.scale(100,100) ^ {
        am.translate(-0.5, -0.5) ^ {
    		am.rect(shadow_offset,-shadow_offset,1 + shadow_offset,1 - shadow_offset, shadow_color),
            am.rect(0,0,1,1, background_color),
        },
        hint_nodes,
        user_nodes,
        unlock_make_grid(grid_def),
	}
end

function unlock_node_xy_to_local_xy(grid_def, node_xy)
    local dx = grid_def.dx
    local dy = grid_def.dy
    local start_x = -dx * (grid_def.size_x - 1) / 2
    local start_y = -dy * (grid_def.size_y - 1) / 2

    local local_xy = vec2(
        start_x + node_xy[1] * dx,
        start_y + node_xy[2] * dy
    )
    return local_xy
end

function unlock_make_node_line(grid_def, xy1, xy2)
    xy1 = unlock_node_xy_to_local_xy(grid_def, xy1)
    xy2 = unlock_node_xy_to_local_xy(grid_def, xy2)
    local thickness = 0.02
    local line_direction = xy2 - xy1
    local line_length = math.length(line_direction)
    local line_angle_in_radians = math.atan2(line_direction.y, line_direction.x)
    return am.translate((xy1 + xy2) / 2)
        ^ am.rotate(line_angle_in_radians)
        ^ am.translate(-line_length / 2, -thickness / 2)
        ^ am.rect(0, 0, line_length, thickness, vec4(0.2, 0.2, 0.2, 1))
end

function unlock_make_node_circle(grid_def, xy)
    local bg_col = vec4(0.7, 0.7, 0.7, 1)
    local fg_col = vec4(0.2, 0.2, 0.2, 1)
    local pos = unlock_node_xy_to_local_xy(grid_def, xy)
    return am.group() ^ { 
        am.circle(pos, 0.05, fg_col),
        am.circle(pos, 0.04, bg_col) 
    }
end

function unlock_make_grid(grid_def)
    local dots = {}
    local dot_colour= vec4(0,0,0,1)
    local dot_size = 0.01
    local dx = grid_def.dx
    local dy = grid_def.dy

    for x=0, (grid_def.size_x - 1) do
        for y=0, (grid_def.size_y - 1) do
            local dot_pos = unlock_node_xy_to_local_xy(grid_def, {x, y})
            dots[#dots + 1] = am.circle(dot_pos, dot_size, dot_colour)
        end
    end

    return am.scale(1) ^ dots
end

function unlock_play_hint()
    return coroutine.create(function()
        local panel_node = coroutine.yield()
        for i=1, #panel_node.pattern do
            panel_node:add_hint_node(panel_node.pattern[i])
            am.wait(am.delay(0.25))
        end
    end)
end

function unlock_clear_hint()
    return am.series{
        am.delay(1),
        function(panel_node)
            panel_node:clear_hint()
        end
    }
end

function unlock_user_input()
    return function(panel_node)
        if win:mouse_down("left") or win:mouse_down("right") then
            panel_node:clear_hint()
            local window_mousepos = win:mouse_position()
            -- hack in the transformation into the panel coordinate space
            local mousepos = vec2(
                window_mousepos.x / 100,
                window_mousepos.y / 100
            )
            local hit_radius = 0.05
            local grid_def = panel_node.grid_def
            for x=0, (grid_def.size_x - 1) do
                for y=0, (grid_def.size_y - 1) do
                    local pos = unlock_node_xy_to_local_xy(panel_node.grid_def, {x, y})
                    if math.length(pos - mousepos) < hit_radius then
                        panel_node:add_user_node({x, y})
                    end
                end
            end
        end
        return panel_node:lost() or panel_node:won()
    end
end

-------------------------------------------------------
-- typing panel
-------------------------------------------------------

function typing_panel(word, show_hint)
	local shadow_offset = 0.02 -- temp?
	local background_color = vec4(0.7, 0.7, 0.7, 1)
	local shadow_color = vec4(0.2, 0.2, 0.2, 1)

	local local_root = am.scale(1)
	local word_chars_shown = 0
	local cursor = true
	local user_text = ""
	function local_root:get_word()
		return word
	end
	function local_root:update_text()
		self"text".text = word:sub(0, word_chars_shown)
		if (user_text ~= "") then self"text".text = user_text end
		if cursor then 
			self"text".text = self"text".text .. "_" 
		else
			self"text".text = self"text".text .. " "
		end
	end
	function local_root:set_word_chars_to_show(n)
		if n >= 0 and n <= #word then
			word_chars_shown = n
		end
		self:update_text()
	end
	function local_root:set_cursor(v)
		cursor = v;
		self:update_text()
	end
	function local_root:get_user_text()
		return user_text
	end
	function local_root:set_user_text(v)
		user_text = v
		self:update_text()
	end
    function local_root:lost()
        return (word:sub(0, #user_text) ~= user_text);
    end
    function local_root:won()
        return (not self:lost() and #word == #user_text);
    end

    -- Behaviour
    local actions = {}
    if show_hint then actions[#actions+1] = play_intro(); end
    actions[#actions+1] = am.parallel{
        clear_hint(),
        user_input(),
    }
    local_root:tag"typing_panel":action(am.series(actions))

	return local_root ^ am.scale(100,100) ^ am.translate(-0.5, -0.5) ^ am.group{
		am.rect(shadow_offset,-shadow_offset,1 + shadow_offset,1 - shadow_offset, shadow_color),
		am.rect(0,0,1,1, background_color),
		am.translate(0.5, 0.5) ^ am.scale(2) ^ am.scale(1/0.8) ^ am.scale(1/400, 1/300) ^ am.text("_", vec4(0.9, 0.9, 0.9, 1)),
	}
end

function play_intro()
	return coroutine.create(function()
		local node = coroutine.yield()

		-- Type out word
		for i=1, #node.word do
			am.wait(am.delay(0.25))
			node.word_chars_to_show = i
		end
		am.wait(am.delay(0.25))
		node.cursor = false
	end)
end

function clear_hint()
    return am.series{
        -- Show word for a bit
        am.delay(1),
        function(node)
            -- Clear ready for input
            node.word_chars_to_show = 0
            node.cursor = true
        end
    }
end

function user_input()
	return function(node)
		for i,letter in ipairs({"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"}) do
			if win:key_pressed(letter) then
				node.user_text = node.user_text .. letter
                return node:lost() or node:won()
			end
		end
	end
end

function exit()
    return function()
        win:close()
    end
end

local dictfile = io.open("dictionary.txt")
if dictfile then
    local dict = {}
    local index = 1
    -- Read dictionary
    for line in dictfile:lines() do
        if line ~= "" then 
            local match = string.match(line, "(%a%a+)%s+[nv]%.")
            if match then
            if match == "Aa" then log(match) end
                dict[index] = string.lower(match)
                index = index + 1
            end
        end
    end
    dictfile:close();

    math.randomseed(os.time())
    randomword = dict[math.random(#dict)] 
else
    log("Failed to open dictionary")
    win:close()
end

-------------------------------------------------------
-- panels global array
-------------------------------------------------------
panels = { count = 0, nodeTable = {} }

function PanelScaleControl(node)

	if node.p.state == PanelState.docked then
		node.p.scale = 0.25
	elseif node.p.state == PanelState.input then
		node.p.scale = 4.5
	end	
	
	node.scale = vec3(node.p.scale)
end

function PanelPosControl(node)
	dockedPos = vec3(-550 + (node.p.index * 40), 320, 0)
	
	if node.p.state == PanelState.docked then
		node.p.pos = dockedPos
	elseif node.p.state == PanelState.input then
		node.p.pos = vec3(0)
	end
	
	node.position = node.p.pos
end

PanelState =
{
	docked = 1,
	animOn = 2, 
	teaching = 3,
	input = 4,
	animOff = 5,
}

PanelActivity = 
{
	word = 1,
	pattern = 2,
	drums = 3,
	--
	count = 3,
}


function panels.MakeEmpty()
	for b=1, panels.count do
		panels[b] = nil
	end
	panels.nodeTable = nil
end


function panels.AddOne(activity)
	
	if( activity == nil or activity > PanelActivity.count ) then
		activity = math.random(1,PanelActivity.count)
	end
	
	local p =
	{	-- here we define the panel table parameters
		-- these are used to communicate from the panel to the game level
		-- we'll give them all default values rather than nil
		scale = 1,
		pos = vec3( win.width, win.height, 0 ) * 0.5,
		state = PanelState.docked,
		activity = activity,
		node = am.translate(0,0):action(PanelPosControl)
			^ am.scale(1):action(PanelScaleControl),
	}
	
	scaleNode = p.node"scale"
	
	if activity == PanelActivity.word then
		scaleNode = scaleNode ^ typing_panel(randomword, true)
		p.text = "dog"
	elseif activity == PanelActivity.pattern then
		scaleNode = scaleNode ^ unlock_panel(test_pattern, true)
		p.dots = 4
	elseif activity == PanelActivity.drums then
		scaleNode = scaleNode ^ drum_panel()
		p.snare = true
	end
	
	-- provide nodes a getter to parent
	function p.node:get_p() return p end
	function scaleNode:get_p() return p end
	
	-- last of all, add p into the table and the node to the scene table
	panels.count = panels.count + 1
	p.index = panels.count
	panels[panels.count] = p
	panels.nodeTable[panels.count] = p.node
end


-------------------------------------------------------
-- dummy puzzle types (panel types)
-------------------------------------------------------

-- test panels
for n=1, 7 do
	panels.AddOne()
end
panels.AddOne( PanelActivity.drums )

for n=1, 7 do -- demo only
	if panels[n].activity == PanelActivity.drums then
		panels[n].state = PanelState.input
		break
	end
end

win.scene = am.group{
	am.scale(4) ^ am.sprite("temp_background2.png"),
	am.group() ^ panels.nodeTable,
}

-------------------------------------------------------
-- main game loop
-------------------------------------------------------
win.scene:action(function(scene)

end)




