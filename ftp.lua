
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
-- drums
-------------------------------------------------------

function drum_panel()

	local shadow_offset = 0.02 -- temp?
	local background_color = vec4(0.7, 0.8, 0.9, 1)
	local shadow_color     = vec4(0.2, 0.2, 0.2, 1)

	local local_root = am.scale(1)
	local word_chars_shown = 0
	local cursor = true
	function local_root:get_word()
		return "grr"
	end

	local local_root = am.scale(1)
	
    function local_root:lost()
        return false
    end
    function local_root:won()
        return false
    end
	
    -- Behaviour
    local actions = {}
    if show_hint then actions[#actions+1] = play_intro(); end
--[[    actions[#actions+1] = am.parallel{
        clear_hint(),
        user_input(),
    }]]
    local_root:tag"drum_panel":action(am.series(actions))

	return local_root
		^ am.scale(100,100)
		^ am.translate(-0.5, -0.5)
		^ am.group {
			am.rect(shadow_offset,-shadow_offset,1 + shadow_offset,1 - shadow_offset, shadow_color),
			am.rect(0,0,1,1, background_color),
--			am.translate(0.5, 0.5) ^ ,
		}
end

-------------------------------------------------------
-- typing panel
-------------------------------------------------------

function typing_panel(word, show_hint)
	local shadow_offset = 0.02 -- temp?
	local background_color = vec4(0.7, 0.7, 0.7, 1)
	local shadow_color     = vec4(0.2, 0.2, 0.2, 1)

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

function win_or_lose()
    return function(scene_node)
        local node = scene_node"typing_panel"
        if node:won() then
            log("YOU WON");
            return true
        elseif node:lost() then
            log("YOU LOST");
            return true
        end
        return false
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
		scaleNode = scaleNode ^ am.rect(-50, -50, 50, 50, orange)
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

for n=1, 7 do -- demo only
	if panels[n].activity == PanelActivity.word then
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




