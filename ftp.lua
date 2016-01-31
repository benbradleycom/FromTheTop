
yellow = vec4(1, 1, 0, 1)
orange = vec4(1, 0.5, 0, 1)
pink = vec4(1,0,0.5,1)
shadow_offset = 0.03
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
	beephi = 77763306,
	beeplo = 96169106,
	crash = 99503802,
	snare = 20008302,
	swipe = 77813709,
	brush = 90848704,
	bad = 59595402,
	coin = 65748300,
	frog = 60384003,
}

-------------------------------------------------------
-- drum panel
-------------------------------------------------------

function drum_panel(pattern, show_hint)

	local background_color = vec4(0.8, 0.8, 0.8, 1)
	local shadow_color = vec4(0.2, 0.2, 0.2, 1)
	local local_root = am.scale(1)
    local show_hint = true
	local pattern = {}
	
	crash_color = vec4(0.2,0,0.6,1)
	beep_color = vec4(0,0.6,0.2,1)
	frog_color = vec4(0.6,0,0.2,1)
	local lightButton = 1.3
	local darkButton = 0.8
	
	-- generate pattern
	patterncount = 4--math.random(3,4)
	if #pattern == 0 then
		for n=1, patterncount do
			pattern[n] = math.random(1,4)
			log(pattern[n])
		end
	end
	
	local user_clicks = {}
	local_root.user_clicks = user_clicks
	
    function local_root:set_show_hint(v)
        show_hint = v
    end
    function local_root:lost()
		for i, click in ipairs(user_clicks) do
			if i > #pattern or pattern[i] ~= user_clicks[i] then
				return true
			end
		end
    end
    function local_root:won()
        return (not self:lost() and #user_clicks == #pattern);
    end
    function local_root:reset()
		pattern = {}
    end
    function local_root:start()
    end
	
	buttons = {
		am.scale(1)
		^ am.circle(vec2(0),0.1,frog_color*lightButton),
		
		am.scale(1) ^ am.group
		{
			am.translate(0,0.05)
			^ am.scale(0.1)
			^ am.rect(-1,-0.5,1,0.5,crash_color*darkButton),
			
			am.circle(vec2(0),0.1,crash_color*darkButton,8),
		},
	
		am.scale(1) ^ am.group
		{
			am.rotate(math.rad(45))
			^ am.scale(0.071)
			^ am.rect(-1,-1,1,1,beep_color*lightButton),
			
			am.translate(0,-0.05)
			^ am.scale(0.05)
			^ am.rect(-1,-1,1,1,beep_color*lightButton),
		},
		
		am.scale(1) ^ am.group
		{
			am.rotate(math.rad(45))
			^ am.scale(0.071)
			^ am.rect(-1,-1,1,1,beep_color*darkButton),
			
			am.translate(0,0.05)
			^ am.scale(0.05)
			^ am.rect(-1,-1,1,1,beep_color*darkButton),
		},	
	}
	
	buttons[1].sound = sounds.frog
	buttons[1].pos = vec2(0.3, 0.7)
	buttons[2].sound = sounds.crash
	buttons[2].pos = vec2(0.3, 0.3)
	buttons[3].sound = sounds.beephi
	buttons[3].pos = vec2(0.7, 0.7)
	buttons[4].sound = sounds.beeplo
	buttons[4].pos = vec2(0.7, 0.3)
	local_root.buttons = buttons
	
	function drum_action( root, index )
		return am.parallel {
			am.play(root.buttons[index].sound),
			function()
				root.buttons[index].scale = vec3(1.5)
				root.buttons[index]:action(am.tween(0.35, {scale = vec3(1)} ))
				return true
			end,
			am.delay(0.8),
		}
	end
	
	-- behaviour
    local actions = {}
	-- drum hints
	for dh=1, #pattern do
		actions[dh] = drum_action( local_root, pattern[dh] )
	end
	
	actions[#actions+1] = drum_user_input()
	
	local_root:tag"drum_panel":action(am.series(actions))
	local_root.patternaction = patternaction
	local_root.drum_action = drum_action
	
	return local_root
		^ am.scale(100,100)
		^ am.translate(-0.5, -0.5)
		^ am.group {
			am.rect(shadow_offset,-shadow_offset,1 + shadow_offset,1 - shadow_offset, shadow_color),
			am.rect(0,0,1,1, background_color),
			am.translate(buttons[1].pos) ^ buttons[1],
			am.translate(buttons[2].pos) ^ buttons[2],
			am.translate(buttons[3].pos) ^ buttons[3],
			am.translate(buttons[4].pos) ^ buttons[4],
		}
end

function drum_user_input()
    return function(panel_node)
        if win:mouse_pressed("left") or win:mouse_pressed("right") then
		
            local window_mousepos = win:mouse_position()
            local mousepos = vec2(
                window_mousepos.x / 450 + 0.5,
                window_mousepos.y / 450 + 0.5
            )
			
			local hit_radius = 0.15
            for b=1, #panel_node.buttons do
				pos = panel_node.buttons[b].pos
				if math.length(pos - mousepos) < hit_radius then
					panel_node.user_clicks[#panel_node.user_clicks+1] = b
					--log( table.tostring(panel_node.user_clicks) )
					panel_node:tag"drum_panel":action(
						panel_node.drum_action( panel_node, b ))
				end
			end
        end
    end
end


-------------------------------------------------------
-- unlock pattern
-------------------------------------------------------

test_pattern = {{0,0}, {1,1}, {1,2}, {1,3}, {2,3}, {3,3}, {3,2}}

function generate_unlock_pattern(pattern_length, grid_size_x, grid_size_y)
    function add_direction(grid_node, direction)
        return { grid_node[1] + direction[1], grid_node[2] + direction[2] }
    end
    function pattern_contains(pattern, grid_node)
        for i, n in ipairs(pattern) do
            if n[1] == grid_node[1] and n[2] == grid_node[2] then
                return true
            end
        end
        return false
    end
    function within_grid(grid_node)
        return grid_node[1] >= 0 and grid_node[1] < grid_size_x
           and grid_node[2] >= 0 and grid_node[2] < grid_size_y
    end
    local result = {}
    local all_directions = {
        {1,0}, {1,-1}, {0,-1}, {-1,-1}, {-1,0}, {-1,1}, {0,1}, {1,1}
    }
    while #result < pattern_length do
        log("Generate unlock pattern")
        result = {}
        -- random start location
        result[#result + 1] = { math.random(0, grid_size_x - 1),
                                math.random(0, grid_size_y - 1) }
        log("Generating start path element: ("..result[#result][1]..","..result[#result][2]..")")
        for i=2, pattern_length do
            local last = result[#result]
            -- random walk to adjacent unused node
            -- don't cross paths

            -- calculate available directions
            local available_directions = {}
            for i, dir in ipairs(all_directions) do
                local possible_dest = add_direction(last, dir)
                if within_grid(possible_dest) then
                    if not pattern_contains(result, possible_dest) then
                        -- not occupied
                        available_directions[#available_directions + 1] = dir
                    end
                end
            end

            -- if no directions available, restart walk from beginning
            if #available_directions == 0 then log("Abort pattern, restart"); break end

            -- randomly choose a direction
            local selected_direction = available_directions[math.random(1, #available_directions)]
            local new_grid_node = add_direction(last, selected_direction)
            log("Generating path element ".. (#result + 1)..": ("..new_grid_node[1]..","..new_grid_node[2]..")")
            result[#result + 1] = new_grid_node
        end
    end
    return result
end

function unlock_panel(pattern, grid_size_x, grid_size_y)
	local shadow_offset = 0.02 -- temp?
	local background_color = vec4(0.7, 0.8, 0.9, 1)
	local shadow_color     = vec4(0.2, 0.2, 0.2, 1)
    local grid_def = { dx = 0.15, dy = 0.15, size_x = grid_size_x, size_y = grid_size_y }

    local local_root = am.scale(1)
    local show_hint = true
    function local_root:set_show_hint(v)
        show_hint = v
    end

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
    function local_root:reset()
        user_xys = {}
        user_nodes:remove_all()
    end
    function local_root:start()
        local actions = {}
        if show_hint then actions[#actions+1] = unlock_play_hint(); end
        actions[#actions+1] = am.parallel{
            unlock_clear_hint(),
            unlock_user_input(),
        }
        self:action(am.series(actions))
    end

	return local_root:tag"unlock_panel" ^ am.scale(100,100) ^ {
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

function unlock_play()
    return coroutine.create(function()
        local panel_node = coroutine.yield()
        am.wait(display_message("Remember the pattern!", vec4(1,0,0,1)))
        for i=1, #panel_node.pattern do
            panel_node:add_hint_node(panel_node.pattern[i])
            am.wait(am.delay(0.5))
        end
        am.wait(clear_message())
    end)
end

function unlock_clear_hint()
    return am.series{
        am.delay(1),
        function(panel_node)
            panel_node:clear_hint()
            return true
        end,
        function()
            log("Trace the pattern")
            display_prompt("Trace the pattern!")
            return true
        end,
    }
end

function unlock_user_input()
    return function(panel_node)
        if win:mouse_down("left") or win:mouse_down("right") then
            panel_node:clear_hint()
            local window_mousepos = win:mouse_position()
            -- hack in the transformation into the panel coordinate space
            local mousepos = vec2(
                window_mousepos.x / 450,
                window_mousepos.y / 450
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
        local finished = panel_node:lost() or panel_node:won()
        if finished then
            clear_prompt()
        end
        return finished
    end
end

-------------------------------------------------------
-- typing panel
-------------------------------------------------------

function typing_panel(word)
	local shadow_offset = 0.02 -- temp?
	local background_color = vec4(0.9, 0.85, 0.7, 1)
	local shadow_color = vec4(0.2, 0.2, 0.2, 1)
    local text_color = vec4(0.2, 0.2, 0.2, 1)

	local local_root = am.scale(1)
    local show_hint = true
	local word_chars_shown = 0
	local cursor = true
	local user_text = ""
    function local_root:set_show_hint(v)
        show_hint = v
    end
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
    function local_root:reset()
        user_text = ""
        self:update_text()
    end
    function local_root:start()
        log("Starting typing with hints = " .. tostring(show_hint))
        local actions = {}
        if show_hint then actions[#actions+1] = typing_play_hint(); end
        actions[#actions+1] = am.parallel{
            typing_clear_hint(),
            typing_user_input(),
        }
        self:action(am.series(actions))
    end

    local_root:tag"typing_panel"

	return local_root ^ am.scale(100,100) ^ am.translate(-0.5, -0.5) ^ am.group{
		am.rect(shadow_offset,-shadow_offset,1 + shadow_offset,1 - shadow_offset, shadow_color),
		am.rect(0,0,1,1, background_color),
		am.translate(0.5, 0.5) ^ am.scale(2) ^ am.scale(1/0.8) ^ am.scale(1/400, 1/300) ^ am.text("_", text_color),
	}
end

function typing_play_hint()
	return coroutine.create(function()
		local node = coroutine.yield()

        am.wait(display_message("Remember the word!", vec4(1,0,0,1)))
		-- Type out word
		for i=1, #node.word do
			am.wait(am.delay(0.25))
			node.word_chars_to_show = i
		end
		am.wait(am.delay(0.25))
		node.cursor = false
	end)
end

function typing_clear_hint()
    return am.series{
        -- Show word for a bit
        am.delay(1),
        function(node)
            -- Clear ready for input
            node.word_chars_to_show = 0
            node.cursor = true
            return true
        end,
        function()
            clear_message()
            display_prompt("Type the word!")
            return true
        end,
    }
end

function typing_user_input()
	return function(panel_node)
		for i,letter in ipairs({"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"}) do
			if win:key_pressed(letter) then
				panel_node.user_text = panel_node.user_text .. letter
                local finished = panel_node:lost() or panel_node:won()
                if finished then
                    clear_prompt()
                end
                return finished
			end
		end
	end
end

-------------------------------------------------------
-- panels global array
-------------------------------------------------------
dict = {}
local dictfile = io.open("dictionary.txt")
if dictfile then
    local index = 1
    -- Read dictionary
    for line in dictfile:lines() do
        if line ~= "" then 
            local match = string.match(line, "(%a%a+)%s+[nv]%.")
            if match then
                dict[index] = string.lower(match)
                index = index + 1
            end
        end
    end
    dictfile:close();

    math.randomseed(os.time())
    math.random() -- without this, the first math.random(x,y) is always the same!
else
    log("Failed to open dictionary")
    win:close()
end

panels = { current = 1, so_far = 0, count = 0, nodeTable = {}, nodeGroup = am.group() }
messageGroup = am.group()
promptGroup = am.group()
stampGroup = am.group()

function docked_position(node)
    return vec3(-550 + (node.p.index * 40), 320, 0)
end

function docked_scale(node)
    return 0.25
end

function input_position(node)
    return vec3(0)
end
function input_scale(node)
    return 4.5
end

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
	count = 2,
}

function panels.MakeEmpty()
    panels.current = 1
    panels.so_far = 0
    panels.count = 0
	for b=1, #panels do
		panels[b] = nil
        panels.nodeTable[b] = nil
	end
    panels.nodeGroup:remove_all()
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
        local randomword = dict[math.random(#dict)] 
        p.game = typing_panel(randomword)
	elseif activity == PanelActivity.pattern then
        local grid_size_x = 4
        local grid_size_y = 4
        local pattern_length = 4
        local pattern = generate_unlock_pattern(pattern_length, grid_size_x, grid_size_y)
        p.game = unlock_panel(pattern, grid_size_x, grid_size_y)
	elseif activity == PanelActivity.drums then
        p.game = drum_panel()
	end
    scaleNode = scaleNode ^ p.game
	
	-- provide nodes a getter to parent
	function p.node:get_p() return p end
	function scaleNode:get_p() return p end
	
	-- last of all, add p into the table and the node to the scene table
	panels[#panels + 1] = p
	p.index = #panels
	panels.nodeTable[#panels] = p.node
    panels.nodeGroup:append(p.node)
    p.node.hidden = true
end

-------------------------------------------------------
-- panel management functions
-------------------------------------------------------
function set_active_panel(panel)
    panel.state = PanelState.input
end

function set_docked_panel(panel)
    panel.state = PanelState.docked
end

function more_panels()
    return panels.current + 1 <= #panels
end

function get_current_panel()
    return panels[panels.current]
end

function get_next_panel()
    if more_panels() then
        return panels[panels.current + 1]
    else
        return nil
    end
end

function rewind_to_first_panel()
    local current_panel = get_current_panel()
    am.wait(animate_to_dock(current_panel))
    set_docked_panel(current_panel)

    panels.current = 1
    local first_panel = get_current_panel()
    am.wait(animate_from_dock(first_panel))
    set_active_panel(first_panel)
    return first_panel
end

function advance_panel()
    local current_panel = get_current_panel()
    am.wait(animate_to_dock(current_panel))
    set_docked_panel(current_panel)

    local next_panel = nil
    if more_panels() then
        panels.current = panels.current + 1
        next_panel = get_current_panel()
        next_panel.node.hidden = false
        coroutine.yield(false)
        am.wait(animate_from_dock(next_panel))
        set_active_panel(next_panel)
    end
    return next_panel
end

function first_panel()
    panels.current = 1
    local first_panel = get_current_panel()
    first_panel.node.hidden = false
    coroutine.yield(false)
    am.wait(animate_from_dock(first_panel))
    set_active_panel(first_panel)
    return first_panel;
end

function generate_sequence(panel_count)
    log("Clear panels")
    panels.MakeEmpty()
    for n=1, panel_count do
        log("Add panel")
        panels.AddOne()
    end
end

-------------------------------------------------------
-- Animations
-------------------------------------------------------
function animate_to_dock(panel)
    return am.series{
        function() panel.state = PanelState.animOn; return true end,
        am.parallel{
            am.tween(panel.node.p, 1, { scale = docked_scale(panel.node) }),
            am.tween(panel.node.p, 1, { pos = docked_position(panel.node) }),
        },
        function() panel.state = PanelState.docked; return true end,
    }
end

function animate_from_dock(panel)
    log("From dock " .. tostring(panel))
    return am.series{
        function() panel.state = PanelState.animOff; return true end,
        am.parallel{
            am.tween(panel.node.p, 1, { scale = input_scale(panel.node) }),
            am.tween(panel.node.p, 1, { pos = input_position(panel.node) }),
        },
        function() panel.state = PanelState.input; return true end,
    }
end

function flash_border(panel, colour)
    local target = panel.game"rect"
    local original_colour = target.color
    return am.series{
        am.tween(target, 0.25, {color = colour}, am.ease.quadratic),
        am.tween(target, 0.5, {color = original_colour}, am.ease.quadratic), 
    }
end

function win_stamp()
    local superlatives = {"Nice!", "Awesome!", "Radical!"}
    local text = superlatives[math.random(1, #superlatives)]
    local delay = 2
    log("Show win stamp")
    local stampNode = am.translate(0,0):tag"t" ^ am.rotate(0):tag"r" ^ am.scale(10):tag"s" ^
        am.group(
            am.rect(-50, -10, 50, 10, vec4(0,0.7,0,1)),
            am.translate(0, 3) ^ am.text(text, vec4(0,0,0,1))
        )
    local stampAngle = (math.random() * math.pi / 2) - (math.pi / 4)
    local stampAction = am.series{
        am.parallel{
            am.tween(stampNode"r", 0.5, { angle = stampAngle }),
            am.tween(stampNode"s", 0.5, { scale = vec3(4) }, am.ease.quadratic),
        },
        am.delay(delay),
        am.parallel{
            am.tween(stampNode"t", 1, { position2d = vec2(math.random(0, 100) - 50, -800) }, am.ease.quadratic),
            am.tween(stampNode"r", 1, { angle = -stampAngle }),
        },
        function()
            log("Remove win stamp")
            messageGroup:remove(stampNode)
            return true
        end,
    }
    stampNode:action(stampAction)
    stampGroup:append(stampNode)
    return stampAction
end

prompt_animating = false

function display_prompt(text, bg_colour)
    if not bg_colour then bg_colour = vec4(0,0,0,1) end
    log("Show prompt "..text)
    local promptNode = am.translate(0,-600):tag"t" ^ am.scale(2):tag"s" ^ 
        am.group(
            am.rect(-200, -10, 200, 10, bg_colour), 
            am.translate(0, 3) ^ am.text(text, vec4(1,1,1,1))
        )
    local promptAction = am.series{
        function() prompt_animating = true; return true end,
        am.tween(promptNode"t", 0.1, { position2d = vec2(0, 0) }, am.ease.out(am.ease.quadratic)),
        function() prompt_animating = false; return true end,
    }
    promptNode:action(promptAction)
    promptGroup:append(promptNode)
    return promptAction
end

function clear_prompt()
    local promptNode = promptGroup"t"
    log("Clear current prompt")
    -- Default to an empty action for a calling coroutine
    -- that wants to wait on the prompt clear animation
    local promptAction = function() return true end
    if promptNode then
        promptAction = am.series{
            function() return not prompt_animating end,
            am.tween(promptNode"s", 0.1, { scale = vec3(0) }, am.ease.quadratic),
            function()
                log("Remove prompt")
                promptGroup:remove(promptNode)
                return true
            end,
        }
        promptNode:action(promptAction)
    end
    return promptAction
end

message_animating = false

function display_message(text, bg_colour)
    if not bg_colour then bg_colour = vec4(0,0,0,1) end
    log("Show message "..text)
    local messageNode = am.translate(0,100):tag"t" ^ am.scale(0):tag"s" ^ 
        am.group(
            am.rect(-200, -10, 200, 10, bg_colour), 
            am.translate(0, 3) ^ am.text(text, vec4(1,1,1,1))
        )
    local messageAction = am.series{
        function() message_animating = true; return true end,
        am.parallel{
            am.tween(messageNode"s", 0.25, { scale = vec3(2) }, am.ease.out(am.ease.quadratic)),
            am.tween(messageNode"t", 0.1, { position2d = vec2(0, 0) }, am.ease.out(am.ease.quadratic)),
        },
        function() message_animating = false; return true end,
    }
    messageNode:action(messageAction)
    messageGroup:append(messageNode)
    return messageAction
end

function clear_message()
    local messageNode = messageGroup"t"
    log("Clear current message")
    -- Default to an empty action for a calling coroutine
    -- that wants to wait on the message clear animation
    local messageAction = function() return true end
    if messageNode then
        messageAction = am.series{
            function() return not message_animating end,
            am.parallel{
                am.tween(messageNode"s", 0.25, { scale = vec3(0) }, am.ease.quadratic),
                am.series{
                    am.delay(0.15),
                    am.tween(messageNode"t", 0.1, { position2d = vec2(0, 100) }, am.ease.quadratic),
                },
            },
            function()
                log("Remove message")
                messageGroup:remove(messageNode)
                return true
            end,
        }
        messageNode:action(messageAction)
    end
    return messageAction
end


-------------------------------------------------------
-- Game control
-------------------------------------------------------
win.scene = am.group{
	am.scale(4) ^ am.sprite("temp_background2.png"),
	am.group() ^ panels.nodeGroup,
    am.translate(0, 250) ^ messageGroup,
    am.translate(0, -250) ^ promptGroup,
    stampGroup
}

-------------------------------------------------------
-- main game loop
-------------------------------------------------------
-- Sequence 1*, 2* - FROM THE TOP: 1, 2, 3* -- FROM THE TOP: 1, 2, 3, 4*
--
win.scene:action(coroutine.create(function()
    local sequence_length = 10
    am.wait(display_message("Let's go!"))
    am.wait(am.delay(1))
    am.wait(clear_message())
    while true do
        log("Generating sequence of length "..sequence_length)
        generate_sequence(sequence_length)
        log("Start sequence")
        first_panel().game:start()
        log("Start game loop proper")
        while true do
            local active_panel = get_current_panel()
            if active_panel.game:won() then
                am.wait(flash_border(active_panel, vec4(0, 1, 0, 1)))

                if panels.so_far < panels.current then
                    log("NEW PANEL DONE, Panels sofar ".. panels.so_far..", current "..panels.current)
                    -- completed new panel!
                    panels.so_far = panels.current
                    active_panel.game.show_hint = false
                    am.wait(display_message("From the top!"))
                    am.wait(am.delay(1))
                    clear_message()
                    local next_panel = rewind_to_first_panel()
                    active_panel.game:reset()
                    next_panel.game:start()
                else
                    log("OLD PANEL REDONE: Panels sofar ".. panels.so_far..", current "..panels.current)
                    -- completed panel
                    local next_panel = get_next_panel()
                    if next_panel then
                        if panels.so_far < next_panel.index then
                            -- starting a new panel
                            am.wait(win_stamp())
                            log("Win stamp done, new panel message")
                            am.wait(display_message("New panel"))
                            advance_panel()
                            am.wait(am.delay(1))
                            am.wait(clear_message())
                            log("New panel message done");
                        else
                            advance_panel()
                        end
                        active_panel.game:reset()
                        next_panel.game:start()
                    else
                        log("Sequence won!")
                        am.wait(win_stamp())
                        clear_message()
                        -- win screen
                        -- show score and time
                        break
                    end
                end
            elseif active_panel.game:lost() then
                am.wait(flash_border(active_panel, vec4(1, 0, 0, 1)))
                log("Sequence failed!")
                -- show failure screen
                -- wait for restart
                break
            else
                -- Nothing to do, yield for next frame
                coroutine.yield(false)
            end
        end
    end
end))
