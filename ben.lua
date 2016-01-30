
local yellow = vec4(1, 1, 0, 1)
local orange = vec4(1, 0.5, 0, 1)
local pink = vec4(1,0,0.5,1)

local win = am.window{
    title = "From The Top",
    width = 1200,
    height = 750,
    clear_color = vec4(0.3),
}

-------------------------------------------------------
-- panels global array
-------------------------------------------------------
panels = { count = 0, nodeTable = {} }

function PanelScaleControl(node)

	if node.p.state == PanelState.docked then
		node.p.scale = 0.2
	elseif node.p.state == PanelState.input then
		node.p.scale = 4
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
		scaleNode = scaleNode ^ am.rect(-50, -50, 50, 50, yellow)
		p.text = "dog"
	elseif activity == PanelActivity.pattern then
		scaleNode = scaleNode ^ am.rect(-50, -50, 50, 50, orange)
		p.dots = 4
	elseif activity == PanelActivity.drums then
		scaleNode = scaleNode ^ am.rect(-50, -50, 50, 50, pink)
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

panels[3].state = PanelState.input

win.scene = am.group() ^ panels.nodeTable

-------------------------------------------------------
-- main game loop
-------------------------------------------------------
win.scene:action(function(scene)

	

end)




